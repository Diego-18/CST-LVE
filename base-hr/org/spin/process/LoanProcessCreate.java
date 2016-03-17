/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * Copyright (C) 2003-2014 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.process;

import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.model.MDocType;
import org.compiere.model.X_C_DocType;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.eevolution.model.MHRAttribute;
import org.eevolution.model.MHRConcept;
import org.eevolution.model.MHREmployee;
import org.eevolution.model.MHRMovement;
import org.eevolution.model.MHRProcess;
import org.eevolution.model.X_HR_Attribute;
import org.eevolution.model.X_HR_Concept;
import org.spin.model.MLVEHRLoan;
import org.spin.model.MLVEHRLoanDefinition;
import org.spin.model.MLVEHRLoanPaymentTerm;
import org.spin.model.X_LVE_HR_Loan;

/**
 * Create a HR Process
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class LoanProcessCreate extends SvrProcess {

	/**	Record ID							*/
	private int 	p_Record_ID 			= 0;
	/**	Payroll Definition 					*/
	private int		p_HR_Payroll_ID 		= 0;
	/**	Document Type Target				*/
	private int 	p_C_DocTypeTarget_ID 	= 0;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()) {
			String name = para.getParameterName();
			
			if (para.getParameter() == null)
				;			
			else if(name.equals("HR_Payroll_ID"))
				p_HR_Payroll_ID = para.getParameterAsInt();
			else if(name.equals("C_DocTypeTarget_ID"))
				p_C_DocTypeTarget_ID = para.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);			
		}
		//	Set record Id
		p_Record_ID = getRecord_ID();
		//	
	}

	@Override
	protected String doIt() throws Exception {
		//	Valid Loan
		if(p_Record_ID == 0)
			throw new AdempiereUserError("@LVE_HR_Loan_ID@ @NotFount@");
		//	Valid Payroll Definition
		if(p_HR_Payroll_ID == 0)
			throw new AdempiereUserError("@HR_Payroll_ID@ @NotFount@");
		//	Valid/Get Document Type Target
		if(p_C_DocTypeTarget_ID == 0) {
			p_C_DocTypeTarget_ID = MDocType
					.getDocType(X_C_DocType.DOCBASETYPE_Payroll);
		}
		//	Valid Document Type Target
		if(p_C_DocTypeTarget_ID == 0)
			throw new AdempiereUserError("@C_DocTypeTarget_ID@ @NotFount@");
		//	Do it
		MLVEHRLoan m_Loan = new MLVEHRLoan(getCtx(), p_Record_ID, get_TrxName());
		//	Valid Document Status
		if(!m_Loan.getDocStatus().equals(X_LVE_HR_Loan.DOCSTATUS_Completed))
			throw new AdempiereUserError("@DocStatus@ @NotValid@");
		if(m_Loan.getHR_Process_ID() != 0) {
			//	Valid Generated
			String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(p.DocumentNo) " +
					"FROM HR_Process p " +
					"WHERE p.DocStatus NOT IN('VO', 'RE') " +
					"AND p.HR_Process_ID = ?", m_Loan.getHR_Process_ID());
			//	
			if(m_ReferenceNo != null) 
				return "@SQLErrorReferenced@ @HR_Process_ID@: " + m_ReferenceNo;
		}
		//	Create Process
		MHRProcess m_HR_Process = new MHRProcess(getCtx(), 0, get_TrxName());
		//	Set Default Values
		m_HR_Process.setDateAcct(m_Loan.getDateDoc());
		m_HR_Process.setC_BPartner_ID(m_Loan.getC_BPartner_ID());
		m_HR_Process.setHR_Payroll_ID(p_HR_Payroll_ID);
		m_HR_Process.setC_DocTypeTarget_ID(p_C_DocTypeTarget_ID);
		m_HR_Process.setAD_Org_ID(m_Loan.getAD_Org_ID());
		m_HR_Process.setName(Msg.parseTranslation(getCtx(), 
				"@Created@ @from@ @LVE_HR_Loan_ID@: " + m_Loan.getDocumentNo()));
		//	Save
		m_HR_Process.saveEx();
		//	Set Concept
		MLVEHRLoanDefinition m_LoanDefinition = MLVEHRLoanDefinition
				.get(getCtx(), m_Loan.getLVE_HR_LoanDefinition_ID());
		//	Total Loan
		setConcept(m_HR_Process, m_LoanDefinition.getLoan_I_Concept_ID()
				, m_Loan.getAmt(), m_Loan.getDateDoc());
		//	Payment Term
		setConcept(m_HR_Process, m_LoanDefinition.getLoan_P_Concept_ID()
				, m_Loan.getPaymentRule(), m_Loan.getDateDoc());
		//	Manage Interest
		if(m_LoanDefinition.isManagesInterest()) {
			//	Total Interest
			setConcept(m_HR_Process, m_LoanDefinition.getInterest_TI_Concept_ID()
					, m_Loan.getInterestAmt(), m_Loan.getDateDoc());
			//	Total Tax
			setConcept(m_HR_Process, m_LoanDefinition.getInterest_TT_Concept_ID()
					, m_Loan.getTaxAmt(), m_Loan.getDateDoc());
		}
		//	Add Reference
		m_Loan.setHR_Process_ID(m_HR_Process.getHR_Process_ID());
		m_Loan.saveEx();
		//	Re-Create Payment Term
		reCreateAttributes(m_Loan);
		//	
		return "@HR_Process_ID@ @Created@ " + m_HR_Process.getDocumentNo();
	}
	
	/**
	 * Set a new Concept
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jan 20, 2015, 3:27:23 PM
	 * @param p_HR_Process
	 * @param m_HR_Concept_ID
	 * @param value
	 * @param validFrom
	 * @return void
	 * @throws AdempiereUserError 
	 */
	public void setConcept (MHRProcess p_HR_Process, int m_HR_Concept_ID, 
			Object value, Timestamp validFrom) throws AdempiereUserError {
		MHRConcept c = MHRConcept.get(getCtx(), m_HR_Concept_ID); 
		if (c == null)
			throw new AdempiereUserError("@HR_Payroll_ID@ @NotFount@");
		//	
		MHRMovement m = new MHRMovement(p_HR_Process, c);
		MHREmployee employee = MHREmployee.getActiveEmployee(getCtx(), 
				p_HR_Process.getC_BPartner_ID(), p_HR_Process.getAD_Org_ID(), get_TrxName());
		m.setAD_Org_ID(p_HR_Process.getAD_Org_ID());
		m.setColumnValue(value);
		m.setC_BPartner_ID(p_HR_Process.getC_BPartner_ID());
		m.setDescription(Msg.translate(getCtx(), "Added") + " " 
				+ Msg.translate(getCtx(), "from") + " " 
				+ Msg.translate(getCtx(), "LVE_HR_Loan_ID"));
		m.setValidFrom(validFrom);
		m.setValidTo(validFrom);
		m.setIsManual(true);
		//	Is Printed
		m.setIsPrinted(c.isPrinted());
		
		m.setHR_Department_ID(employee.getHR_Department_ID());
		m.setHR_Job_ID(employee.getHR_Job_ID());
		m.setC_Activity_ID(employee.getC_Activity_ID() > 0
				? employee.getC_Activity_ID()
						: employee.getHR_Department().getC_Activity_ID());	
		m.setProcessed(true);
		//	
		m.saveEx();
	} // setConcept
	
	/**
	 * Re-Create Attributes from Loan
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jan 21, 2015, 9:51:41 PM
	 * @param p_Loan
	 * @return void
	 */
	private void reCreateAttributes(MLVEHRLoan p_Loan) {
		//	Delete Old's Attributes
		MLVEHRLoanDefinition m_LoanDefinition = MLVEHRLoanDefinition
				.get(getCtx(), p_Loan.getLVE_HR_LoanDefinition_ID());
		//	
		DB.executeUpdateEx("DELETE FROM HR_Attribute "
				+ "WHERE HR_Concept_ID = ? "
				+ "AND C_BPartner_ID = ? ", 
				new Object[]{m_LoanDefinition.getLoan_D_Concept_ID(), p_Loan.getC_BPartner_ID()}, 
				get_TrxName());
		//	Create New
		MLVEHRLoanPaymentTerm [] m_LoanLines = p_Loan.getLines(false);
		//	Get Cache Concept
		MHRConcept concept = MHRConcept.get(getCtx(), m_LoanDefinition.getLoan_D_Concept_ID());
		//	Set Column Name
		String columnName = X_HR_Attribute.COLUMNNAME_Amount;
		//	Valid Type
		if(concept.getColumnType().equals(X_HR_Concept.COLUMNTYPE_Quantity))
			columnName = X_HR_Attribute.COLUMNNAME_Qty;
		//	Iterate
		for(MLVEHRLoanPaymentTerm m_Line : m_LoanLines) {
			MHRAttribute m_T_Attribute = new MHRAttribute(getCtx(), 0, get_TrxName());
			m_T_Attribute.setAD_Org_ID(p_Loan.getAD_Org_ID());
			m_T_Attribute.setHR_Concept_ID(concept.getHR_Concept_ID());
			m_T_Attribute.setC_BPartner_ID(p_Loan.getC_BPartner_ID());
			m_T_Attribute.setHR_Payroll_ID(m_Line.getHR_Payroll_ID());
			m_T_Attribute.setColumnType(concept.getColumnType());
			m_T_Attribute.setValidFrom(m_Line.getValidFrom());
			m_T_Attribute.setValidTo(m_Line.getValidTo());
			m_T_Attribute.set_CustomColumn(columnName, m_Line.getAmt());
			m_T_Attribute.saveEx();
		}
	}
	
}
