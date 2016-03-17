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
 * Copyright (C) 2003-2015 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.model;

import java.io.File;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Properties;

import org.compiere.model.MCurrency;
import org.compiere.model.MDocType;
import org.compiere.model.MPeriod;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.TimeUtil;
import org.eevolution.model.I_HR_Attribute;
import org.eevolution.model.MHRAttribute;
import org.eevolution.model.MHRConcept;
import org.eevolution.model.MHREmployee;
import org.eevolution.model.MHRPayroll;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MLVEHRLoan extends X_LVE_HR_Loan implements DocAction, DocOptions {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5444365149018335998L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jan 18, 2015, 5:30:59 PM
	 * @param ctx
	 * @param LVE_HR_Loan_ID
	 * @param trxName
	 */
	public MLVEHRLoan(Properties ctx, int LVE_HR_Loan_ID, String trxName) {
		super(ctx, LVE_HR_Loan_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jan 18, 2015, 5:30:59 PM
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEHRLoan(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/** Lines					*/
	private MLVEHRLoanPaymentTerm[]		m_lines = null;
	
	/**
	 * 	Get Document Info
	 *	@return document info (untranslated)
	 */
	public String getDocumentInfo()
	{
		MDocType dt = MDocType.get(getCtx(), 0);
		return dt.getName() + " " + getDocumentNo();
	}	//	getDocumentInfo

	/**
	 * 	Create PDF
	 *	@return File or null
	 */
	public File createPDF ()
	{
		try
		{
			File temp = File.createTempFile(get_TableName()+get_ID()+"_", ".pdf");
			return createPDF (temp);
		}
		catch (Exception e)
		{
			log.severe("Could not create PDF - " + e.getMessage());
		}
		return null;
	}	//	getPDF

	/**
	 * 	Create PDF file
	 *	@param file output file
	 *	@return file if success
	 */
	public File createPDF (File file)
	{
	//	ReportEngine re = ReportEngine.get (getCtx(), ReportEngine.INVOICE, getC_Invoice_ID());
	//	if (re == null)
			return null;
	//	return re.getPDF(file);
	}	//	createPDF

	
	/**************************************************************************
	 * 	Process document
	 *	@param processAction document action
	 *	@return true if performed
	 */
	public boolean processIt (String processAction)
	{
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (processAction, getDocAction());
	}	//	processIt
	
	/**	Process Message 			*/
	private String		m_processMsg = null;
	/**	Just Prepared Flag			*/
	private boolean		m_justPrepared = false;

	/**
	 * 	Unlock Document.
	 * 	@return true if success 
	 */
	public boolean unlockIt()
	{
		log.info("unlockIt - " + toString());
	//	setProcessing(false);
		return true;
	}	//	unlockIt
	
	/**
	 * 	Invalidate Document
	 * 	@return true if success 
	 */
	public boolean invalidateIt()
	{
		log.info("invalidateIt - " + toString());
	//	setDocAction(DOCACTION_Prepare);
		return true;
	}	//	invalidateIt
	
	/**
	 *	Prepare Document
	 * 	@return new status (In Progress or Invalid) 
	 */
	public String prepareIt()
	{
		log.info(toString());
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());

		//	Std Period open?
		if (!MPeriod.isOpen(getCtx(), getDateDoc(), dt.getDocBaseType(), getAD_Org_ID()))
		{
			m_processMsg = "@PeriodClosed@";
			return DocAction.STATUS_Invalid;
		}
		//	Set Process to null
		setHR_Process_ID(0);
		//	Get Lines
		getLines(true);
		if(m_lines == null
				|| m_lines.length == 0) {
			m_processMsg = "@Nolines@";
			return DocAction.STATUS_Invalid;
		}	
		//	
		String msg = createAmortizationTable();
		if(msg != null) {
			m_processMsg = msg;
			return DocAction.STATUS_Invalid;
		}
		
		//	Add up Amounts
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		m_justPrepared = true;
		if (!DOCACTION_Complete.equals(getDocAction()))
			setDocAction(DOCACTION_Complete);
		return DocAction.STATUS_InProgress;
	}	//	prepareIt
	
	/**
	 * Delete Old Movements
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jan 19, 2015, 10:01:21 PM
	 * @return void
	 */
	private void deleteAmortizationTable() {
		// RE-Process, delete movements
		int no = DB.executeUpdateEx("DELETE FROM LVE_HR_LoanAmortization WHERE LVE_HR_Loan_ID=?",
				new Object[]{getLVE_HR_Loan_ID()},
				get_TrxName());
		log.info("LVE_HR_LoanAmortization deleted #"+ no);
	}
	
	/**
	 * Create Table of Amortization
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jan 19, 2015, 3:42:46 PM
	 * @return String
	 */
	private String createAmortizationTable() {
		//	Get Precision
		int precision = MCurrency.getStdPrecision(getCtx(), 
				Env.getContextAsInt(getCtx(), "$C_Currency_ID"));
		//	Delete Olds
		deleteAmortizationTable();
		//	Get Loan and set Balance
		BigDecimal m_LoanAmt = getAmt();
		BigDecimal m_BalanceAmt = m_LoanAmt;
		BigDecimal m_TotalInsterest = Env.ZERO;
		BigDecimal m_TotalTax = Env.ZERO;
		//	Date
		Timestamp m_StartDate = getDateDoc();
		//	Handle Date
		Timestamp firstDay;
		Timestamp endDay = m_StartDate;
		int seqNo = 0;
		//	Valid Employee
		MHREmployee employee = MHREmployee.getActiveEmployee(getCtx(), 
				getC_BPartner_ID(), getAD_Org_ID(), get_TrxName());
		//	Valid Employee
		if(employee == null
				|| employee.getHR_Payroll_ID() == 0)
			return "@HR_Employee_ID@ @NotValid@";
		//	Get For Interest
		MLVEHRLoanDefinition m_LoanDefinition = MLVEHRLoanDefinition
													.get(getCtx(), getLVE_HR_LoanDefinition_ID());
		double m_InterestRate = 0;
		double m_InterestBankRate = 0;
		double m_TaxRate = 0;
		int m_InterestDays = 0;
		//	Get Rate
		if(m_LoanDefinition.isManagesInterest()) {
			m_InterestRate = getAttribute(m_LoanDefinition.getInterest_D_Concept_ID(), getDateDoc());
			m_InterestBankRate = getAttribute(m_LoanDefinition.getInterest_R_Concept_ID(), getDateDoc());
			m_InterestDays = (int)getAttribute(m_LoanDefinition.getInterest_DM_Concept_ID(), getDateDoc());
			m_TaxRate = m_LoanDefinition.getTaxAmt();
		}
		//	Not have Payroll
		boolean isHavePayroll = false;
		//	Get Last Date
		Timestamp lastDate = DB.getSQLValueTS(get_TrxName(), "SELECT "
				+ "CASE "
				+ "	WHEN MAX(pt.ValidTo) IS NOT NULL AND MAX(pt.ValidTo) > MAX(pt.ValidFrom) "
				+ "		THEN MAX(pt.ValidTo) "
				+ "	ELSE MAX(pt.ValidFrom) "
				+ "END ValidDate "
				+ "FROM LVE_HR_LoanPaymentTerm pt "
				+ "WHERE Type = 'C' "
				+ "AND LVE_HR_Loan_ID = ?", getLVE_HR_Loan_ID());
		Timestamp Date = DB.getSQLValueTS(get_TrxName(), "SELECT MIN(pt.ValidFrom) " +
				"FROM LVE_HR_LoanPaymentTerm pt " +
				"WHERE Type = 'C' AND LVE_HR_Loan_ID = ?", getLVE_HR_Loan_ID());
			    firstDay=Date;
		//	Iterate Balance
		do {
			BigDecimal m_Amt = Env.ZERO;
			BigDecimal m_InterestAmt = Env.ZERO;
			BigDecimal m_TaxAmt = Env.ZERO;
			endDay = TimeUtil.getMonthLastDay(firstDay);
			
			//	
			for(int i = 0; i< m_lines.length; i++) {
				MLVEHRLoanPaymentTerm line = m_lines[i];
				String m_Type = line.get_ValueAsString("Type");
				if(m_Type == null
						|| !m_Type.equals("C"))
					continue;
				//	Valid Date
			
				if(TimeUtil.isValid(firstDay, endDay, line.getValidFrom())
						|| (employee.getHR_Payroll_ID() == line.getHR_Payroll_ID()
								&& !isNextValue(i, line.getHR_Payroll_ID(), endDay)
								&& line.getValidFrom().before(endDay))
								&& TimeUtil.isValid(firstDay, line.getValidTo(), endDay)) {
					//	Is Payroll Employee
					
					if(employee.getHR_Payroll_ID() == line.getHR_Payroll_ID()) {
						//	For Always
						if(getPaymentRule().equals(X_LVE_HR_Loan.PAYMENTRULE_Always)||getPaymentRule().equals("W")) {
							//	Get Quantity Periods
							int qtyPeriods = getQtyPeriodAt(line.getHR_Payroll_ID(), firstDay, endDay);
							if(qtyPeriods == 0) {
								SimpleDateFormat format = DisplayType.getDateFormat(DisplayType.Date);
								MHRPayroll m_Payroll = MHRPayroll.get(getCtx(), line.getHR_Payroll_ID());
								String name = "";
								if(m_Payroll != null)
									name = m_Payroll.getName();
								//	
								return "@PeriodNotValid@ [@DateAcct@ " + format.format(getDateDoc()) 
										+ " @HR_Period_ID@ " + format.format(endDay) 
										+ " @HR_Payroll_ID@ " + name + "]";
							}
							//	
							m_Amt = m_Amt.add(line.getAmt().multiply(new BigDecimal(qtyPeriods)));
						} else { 
							m_Amt = m_Amt.add(line.getAmt());
						}
					} else {
						m_Amt = m_Amt.add(line.getAmt());
					}
				}
				//	Have Payroll
				if(!isHavePayroll
						&& employee.getHR_Payroll_ID() == line.getHR_Payroll_ID())
					isHavePayroll = true;
			}
			//	Valid Amount
			if(!isHavePayroll) {
				BigDecimal m_TotalPaymentTerm = DB.getSQLValueBD(get_TrxName(), 
						"SELECT SUM(pt.Amt) "
						+ "FROM LVE_HR_LoanPaymentTerm pt "
						+ "WHERE pt.LVE_HR_Loan_ID = ?", getLVE_HR_Loan_ID());
				//	if Null
				if(m_TotalPaymentTerm == null)
					m_TotalPaymentTerm = Env.ZERO;
				//	
				if(m_TotalPaymentTerm.compareTo(getAmt()) < 0)
					return "@PayAmt@ < @Amt@ @of@ @LVE_HR_Loan_ID@ "
							+ "[@PayAmt@ = " + m_TotalPaymentTerm.doubleValue() + 
							" @Amt@ @of@ @LVE_HR_Loan_ID@ = " + getAmt().doubleValue() + "]";
			} else {
				if(lastDate != null
						&& lastDate.before(firstDay)) {
					if(m_BalanceAmt.doubleValue() > 0) {
						return "@PayAmt@ < @Amt@ @of@ @LVE_HR_Loan_ID@ "
								+ "[@PayAmt@ = " + getAmt().subtract(m_BalanceAmt).doubleValue() + 
								" @Amt@ @of@ @LVE_HR_Loan_ID@ = " + getAmt().doubleValue() + "]";
					}
				}
			}
			//	Valid Exceed
			BigDecimal m_Diff = m_BalanceAmt.subtract(m_Amt);
			if(m_Diff.signum() < 0) {
				m_Amt = m_Amt.add(m_Diff);
			}
			//	Calculate Interest
			if(m_LoanDefinition.isManagesInterest()) {
				int days = m_InterestDays;
				//	Get First Days
				if(isSameMonth(getDateDoc(), endDay)) {
					days = TimeUtil.getDaysBetween(getDateDoc(), endDay) + 1;
					//	Valid Days
					if(days > m_InterestDays)
						days = m_InterestDays;
				}
				//	
				m_InterestAmt = m_BalanceAmt.multiply(new BigDecimal(m_InterestRate));
				m_InterestAmt = m_InterestAmt.multiply(new BigDecimal(days));
				//	Valid Bank Rate
				if(m_InterestBankRate == 0) {
					return "@Interest_R_Concept_ID@ = @0@";
				}
				//	Calculate Interest
				m_InterestAmt = m_InterestAmt
						.divide(new BigDecimal(m_InterestBankRate))
						.setScale(precision, BigDecimal.ROUND_HALF_UP);
				//	Calculate Tax
				m_TaxAmt = m_InterestAmt
						.multiply(new BigDecimal(m_TaxRate));
				//	
				m_TaxAmt = m_TaxAmt
						.divide(Env.ONEHUNDRED, precision, BigDecimal.ROUND_HALF_UP);
			}
			//	Update Balance
			m_BalanceAmt = m_BalanceAmt.subtract(m_Amt);
			//	Change Days
			firstDay = TimeUtil.addDays(endDay, 1);
			//	Add Line
			MLVEHRLoanAmortization m_Amortization = new MLVEHRLoanAmortization(getCtx(), 0, get_TrxName());
			m_Amortization.setSeqNo(seqNo += 10);
			m_Amortization.setLVE_HR_Loan_ID(getLVE_HR_Loan_ID());
			m_Amortization.setAmt(m_Amt);
			m_Amortization.setInterestAmt(m_InterestAmt);
			m_Amortization.setTaxAmt(m_TaxAmt);
			m_Amortization.setBalance(m_BalanceAmt);
			m_Amortization.setDateDoc(endDay);
			//	Add Interest and Tax
			m_TotalInsterest = m_TotalInsterest.add(m_InterestAmt);
			m_TotalTax = m_TotalTax.add(m_TaxAmt);
			//	
			boolean ok = m_Amortization.save();
			//	Verify Ok
			if(!ok) {
				return "@Error@ @LVE_HR_LoanAmortization_ID@";
			}
			//	
		} while(m_BalanceAmt.doubleValue() > 0);
		//	Set Header
		setInterestAmt(m_TotalInsterest);
		setTaxAmt(m_TotalTax);
		//	Return
		return null;
	}
	
	/**
	 * Verify if exists next value
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jan 19, 2015, 9:25:29 PM
	 * @param currentPos
	 * @param p_HR_Payroll_ID
	 * @param p_ValidFrom
	 * @return
	 * @return boolean
	 */
	private boolean isNextValue(int currentPos, int p_HR_Payroll_ID, Timestamp p_ValidFrom) {
		//	Verify if exists other value
		for(int i = currentPos + 1; i < m_lines.length; i++) {
			MLVEHRLoanPaymentTerm line = m_lines[i];
			if(line.getHR_Payroll_ID() == p_HR_Payroll_ID
					&& line.getValidFrom().before(p_ValidFrom)) {
				return true;
			}
		}
		//	
		return false;
	}
	
	/**
	 * Is Same Month
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 20/06/2014, 08:23:56
	 * @param one
	 * @param two
	 * @return
	 * @return boolean
	 */
	public boolean isSameMonth (Timestamp one, Timestamp two) {
		GregorianCalendar calOne = new GregorianCalendar();
		if (one != null)
			calOne.setTimeInMillis(one.getTime());
		GregorianCalendar calTwo = new GregorianCalendar();
		if (two != null)
			calTwo.setTimeInMillis(two.getTime());
		if (calOne.get(Calendar.YEAR) == calTwo.get(Calendar.YEAR)
			&& calOne.get(Calendar.MONTH) == calTwo.get(Calendar.MONTH))
			return true;
		return false;
	}	//	isSameDay
	
	/**
	 * Get Quantity of periods
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jan 19, 2015, 5:26:08 PM
	 * @param p_HR_Payroll_ID
	 * @param startDate
	 * @param endDate
	 * @return
	 * @return int
	 */
	private int getQtyPeriodAt(int p_HR_Payroll_ID, Timestamp startDate, Timestamp endDate) {
		return DB.getSQLValue(get_TrxName(), "SELECT COUNT(p.HR_Period_ID) "
				+ "FROM HR_Period p "
				+ "WHERE p.HR_Payroll_ID = ? "
				+ "AND p.EndDate BETWEEN ? AND ?", p_HR_Payroll_ID, startDate, endDate);
	}
	
	
	/**
	 * Get Attribute
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jan 19, 2015, 10:18:35 PM
	 * @param m_HR_Concept_ID
	 * @param m_validFrom
	 * @return
	 * @return double
	 */
	public double getAttribute (int m_HR_Concept_ID, Timestamp m_validFrom) {
		MHRConcept concept = MHRConcept.get(getCtx(), m_HR_Concept_ID);
		if (concept == null)
			return 0;

		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		// check ValidFrom:
		whereClause.append(MHRAttribute.COLUMNNAME_ValidFrom + "<=?");
		params.add(m_validFrom);
		//check client
		whereClause.append(" AND AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		
		//check concept
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Concept c WHERE c.HR_Concept_ID=HR_Attribute.HR_Concept_ID" 
				+ " AND c.Value = ?)");
		params.add(concept.getValue());
		//

		MHRAttribute attribute = new Query(getCtx(), MHRAttribute.Table_Name, whereClause.toString(), get_TrxName())
		.setParameters(params)
		.setOrderBy(I_HR_Attribute.COLUMNNAME_HR_Payroll_ID + ", " + MHRAttribute.COLUMNNAME_ValidFrom + " DESC")
		.first();
		if (attribute == null)
			return 0.0;

		// if column type is Quantity return quantity
		if (concept.getColumnType().equals(MHRConcept.COLUMNTYPE_Quantity))
			return attribute.getQty().doubleValue();

		// if column type is Amount return amount
		if (concept.getColumnType().equals(MHRConcept.COLUMNTYPE_Amount))
			return attribute.getAmount().doubleValue();

		//something else
		return 0.0; //TODO throw exception ?? 
	} // getAttribute
	
	@Override
	protected boolean beforeSave(boolean newRecord) {
		boolean ok = super.beforeSave(newRecord);
		//	
		if(newRecord)
			setHR_Process_ID(0);
		//	
		return ok;
	}
	
	/**
	 * 	Approve Document
	 * 	@return true if success 
	 */
	public boolean  approveIt()
	{
		log.info("approveIt - " + toString());
		setIsApproved(true);
		return true;
	}	//	approveIt
	
	/**
	 * 	Reject Approval
	 * 	@return true if success 
	 */
	public boolean rejectIt()
	{
		log.info("rejectIt - " + toString());
		setIsApproved(false);
		return true;
	}	//	rejectIt
	
	/**
	 * 	Complete Document
	 * 	@return new status (Complete, In Progress, Invalid, Waiting ..)
	 */
	public String completeIt()
	{
		//	Re-Check
		if (!m_justPrepared)
		{
			String status = prepareIt();
			if (!DocAction.STATUS_InProgress.equals(status))
				return status;
		}
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_COMPLETE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		//	Implicit Approval
		if (!isApproved())
			approveIt();
		log.info(toString());
					
		//	User Validation
		String valid = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (valid != null)
		{
			m_processMsg = valid;
			return DocAction.STATUS_Invalid;
		}
		setDefiniteDocumentNo();

		setProcessed(true);
		setDocAction(DOCACTION_Close);
		return DocAction.STATUS_Completed;
	}	//	completeIt
	
	/**
     *  Set Processed.
     *  Propagate to Lines
     *  @param processed processed
     */
    public void setProcessed (boolean processed)
    {
        super.setProcessed (processed);
        if (get_ID() <= 0)
            return;
        int noLine = DB.executeUpdateEx("UPDATE LVE_HR_LoanPaymentTerm " +
        		"SET Processed=? " +
        		"WHERE LVE_HR_Loan_ID=?",
        		new Object[]{processed, get_ID()},
        		get_TrxName());
        log.fine("setProcessed - Loan Payment Term" + processed + " - Lines=" + noLine);
        //	Product List Approved
        noLine = DB.executeUpdateEx("UPDATE LVE_HR_LoanAmortization " +
        		"SET Processed=? " +
        		"WHERE LVE_HR_Loan_ID=?",
        		new Object[]{processed, get_ID()},
        		get_TrxName());
        
        m_lines = null;
        log.fine("setProcessed - Loan Amortization Table" + processed + " - Lines=" + noLine);
        //  setProcessed
    }
    
	/**
	 * 	Set the definite document number after completed
	 */
	private void setDefiniteDocumentNo() {
		MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());
		if (dt.isOverwriteDateOnComplete()) {
			setDateDoc(new Timestamp (System.currentTimeMillis()));
		}
		if (dt.isOverwriteSeqOnComplete()) {
			String value = null;
			int index = p_info.getColumnIndex("C_DocType_ID");
			if (index == -1)
				index = p_info.getColumnIndex("C_DocTypeTarget_ID");
			if (index != -1)		//	get based on Doc Type (might return null)
				value = DB.getDocumentNo(get_ValueAsInt(index), get_TrxName(), true);
			if (value != null) {
				setDocumentNo(value);
			}
		}
	}

	/**
	 * 	Void Document.
	 * 	Same as Close.
	 * 	@return true if success 
	 */
	public boolean voidIt()
	{
		log.info("voidIt - " + toString());
		// Before Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_VOID);
		if (m_processMsg != null)
			return false;
		//	Valid Reference
		m_processMsg = validReference();
		if (m_processMsg != null)
			return false;
		//	Set Status
		addDescription(Msg.getMsg(getCtx(), "Voided"));
		
		// After Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_VOID);
		if (m_processMsg != null)
			return false;

		setProcessed(true);
        setDocAction(DOCACTION_None);
		return true;
	}	//	voidIt
	
	/**
	 * Validate reference
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Feb 23, 2015, 11:50:56 AM
	 * @return
	 * @return String
	 */
	private String validReference() {
		//	Valid Generated
		String m_ReferenceNo = DB.getSQLValueString(get_TrxName(), "SELECT MAX(p.DocumentNo) " +
				"FROM HR_Process p " +
				"WHERE p.DocStatus NOT IN('VO', 'RE') " +
				"AND p.HR_Process_ID = ?", getHR_Process_ID());
			//	
		if(m_ReferenceNo != null) 
			return "@SQLErrorReferenced@ @HR_Process_ID@: " + m_ReferenceNo;
		//	Default
		return null;
	}
	
	/**
	 * 	Close Document.
	 * 	Cancel not delivered Qunatities
	 * 	@return true if success 
	 */
	public boolean closeIt()
	{
		log.info("closeIt - " + toString());
		// Before Close
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_CLOSE);
		if (m_processMsg != null)
			return false;
		// After Close
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_CLOSE);
		if (m_processMsg != null)
			return false;

		setProcessed(true);
		setDocAction(DOCACTION_None);
		return true;
	}	//	closeIt
	
	/**
	 * 	Reverse Correction
	 * 	@return true if success 
	 */
	public boolean reverseCorrectIt()
	{
		log.info("reverseCorrectIt - " + toString());
		// Before reverseCorrect
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REVERSECORRECT);
		if (m_processMsg != null)
			return false;
		//	Void It
		voidIt();
		// After reverseCorrect
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REVERSECORRECT);
		if (m_processMsg != null)
			return false;

		return false;
	}	//	reverseCorrectionIt
	
	/**
	 * 	Reverse Accrual - none
	 * 	@return true if success 
	 */
	public boolean reverseAccrualIt()
	{
		log.info("reverseAccrualIt - " + toString());
		// Before reverseAccrual
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REVERSEACCRUAL);
		if (m_processMsg != null)
			return false;
		//	Void It
		voidIt();
		
		// After reverseAccrual
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REVERSEACCRUAL);
		if (m_processMsg != null)
			return false;

		return false;
	}	//	reverseAccrualIt
	
	/** 
	 * 	Re-activate
	 * 	@return true if success 
	 */
	public boolean reActivateIt()
	{
		log.info("reActivateIt - " + toString());
		// Before reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REACTIVATE);
		if (m_processMsg != null)
			return false;
		//	Valid Reference
		m_processMsg = validReference();
		if (m_processMsg != null)
			return false;
		//	Delete Olds
		deleteAmortizationTable();
		setInterestAmt(Env.ZERO);
		setTaxAmt(Env.ZERO);
		// After reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REACTIVATE);
		if (m_processMsg != null)
			return false;
		
		setDocAction(DOCACTION_Complete);
		setProcessed(false);
		return true;
	}	//	reActivateIt
	
	
	/*************************************************************************
	 * 	Get Summary
	 *	@return Summary of Document
	 */
	public String getSummary()
	{
		StringBuffer sb = new StringBuffer();
		sb.append(getDocumentNo());
		//	 - Description
		if (getDescription() != null && getDescription().length() > 0)
			sb.append(" - ").append(getDescription());
		return sb.toString();
	}	//	getSummary

	/**
	 * 	Get Process Message
	 *	@return clear text error message
	 */
	public String getProcessMsg()
	{
		return m_processMsg;
	}	//	getProcessMsg
	
	/**
	 * 	Get Document Owner (Responsible)
	 *	@return AD_User_ID
	 */
	public int getDoc_User_ID()
	{
	//	return getSalesRep_ID();
		return 0;
	}	//	getDoc_User_ID

	/**
	 * 	Get Document Approval Amount
	 *	@return amount
	 */
	public BigDecimal getApprovalAmt()
	{
		return null;	//getTotalLines();
	}	//	getApprovalAmt
	
	/**
	 * 	Get Document Currency
	 *	@return C_Currency_ID
	 */
	public int getC_Currency_ID()
	{
	//	MPriceList pl = MPriceList.get(getCtx(), getM_PriceList_ID());
	//	return pl.getC_Currency_ID();
		return 0;
	}	//	getC_Currency_ID
	
	/**
     *  Add to Description
     *  @param description text
     */
    public void addDescription (String description)
    {
        String desc = getDescription();
        if (desc == null)
            setDescription(description);
        else
            setDescription(desc + " | " + description);
    }   //  addDescription
    
    /**
	 * 	Document Status is Complete or Closed
	 *	@return true if CO, CL or RE
	 */
	public boolean isComplete()
	{
		String ds = getDocStatus();
		return DOCSTATUS_Completed.equals(ds)
			|| DOCSTATUS_Closed.equals(ds)
			|| DOCSTATUS_Reversed.equals(ds);
	}	//	isComplete
	
	/**
	 * 	Get Lines
	 *	@param requery requery
	 *	@param whereClause
	 *	@return lines
	 */
	public MLVEHRLoanPaymentTerm[] getLines (boolean requery, String whereClause)
	{
		if (m_lines != null && !requery)
		{
			set_TrxName(m_lines, get_TrxName());
			return m_lines;
		}
		List<MLVEHRLoanPaymentTerm> list = new Query(getCtx(), I_LVE_HR_LoanPaymentTerm.Table_Name, "LVE_HR_Loan_ID=?"
				+ (whereClause != null && whereClause.length() != 0? " AND " + whereClause: ""), get_TrxName())
		.setParameters(getLVE_HR_Loan_ID())
		.setOrderBy(I_LVE_HR_LoanPaymentTerm.COLUMNNAME_ValidFrom)
		.list();

		m_lines = new MLVEHRLoanPaymentTerm[list.size ()];
		list.toArray (m_lines);
		return m_lines;
	}	//	getLines
	
	/**
	 * Get Lines
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/10/2013, 12:30:09
	 * @param requery
	 * @return
	 * @return MFTALoadOrderLine[]
	 */
	public MLVEHRLoanPaymentTerm[] getLines (boolean requery)
	{
		return getLines(requery, null);
	}	//	getLines
	
	@Override
	public int customizeValidActions(String docStatus, Object processing,
			String orderType, String isSOTrx, int AD_Table_ID,
			String[] docAction, String[] options, int index) {
		//	Valid Document Action
		if (AD_Table_ID == Table_ID){
			if (docStatus.equals(DocumentEngine.STATUS_Drafted)
					|| docStatus.equals(DocumentEngine.STATUS_InProgress)
					|| docStatus.equals(DocumentEngine.STATUS_Invalid))
				{
					options[index++] = DocumentEngine.ACTION_Prepare;
					options[index++] = DocumentEngine.ACTION_Close;
					options[index++] = DocumentEngine.ACTION_Complete;
				}
			//	
			else if(docStatus.equals(DocumentEngine.STATUS_Completed)){
				options[index++] = DocumentEngine.ACTION_Close;
				options[index++] = DocumentEngine.ACTION_Void;
				options[index++] = DocumentEngine.ACTION_ReActivate;
			}else
				options[index++] = DocumentEngine.ACTION_None;
		}
		
		return index;
	}
}
