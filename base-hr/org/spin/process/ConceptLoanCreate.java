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

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MRule;
import org.compiere.model.MSysConfig;
import org.compiere.model.X_AD_Rule;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.eevolution.model.MHRAttribute;
import org.eevolution.model.MHRConcept;
import org.eevolution.model.X_HR_Attribute;
import org.eevolution.model.X_HR_Concept;
import org.spin.model.MLVEHRLoanDefinition;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class ConceptLoanCreate extends SvrProcess {

	/**	Prefix Loan Incidence Concept		*/
	private String 	LVE_HR_LN_PREFIX_INCIDENCE 		= null;
	/**	Prefix Incidence Concept Special 	*/
	private String 	LVE_HR_LNSP_PREFIX_INCIDENCE 	= null;
	/**	Prefix Loan Accumulated Concept		*/
	private String 	LVE_HR_LN_PREFIX_ACCUMULATED 	= null;
	/**	Prefix Loan Calculation Concept		*/
	private String 	LVE_HR_LN_PREFIX_CALCULATION 	= null;
	/**	Prefix Loan Deduction Concept		*/
	private String 	LVE_HR_LN_PREFIX_DEDUCTION 		= null;
	/**	Prefix Loan Top Concept				*/
	private String 	LVE_HR_LN_PREFIX_TOP 			= null;
	/**	Prefix Loan Flag Concept			*/
	private String 	LVE_HR_LN_PREFIX_FLAG 			= null;
	/**	Prefix Loan Payment Term Concept	*/
	private String 	LVE_HR_LN_PREFIX_PAYMENT_TERM 	= null;
	/**	Value List Payment Term				*/
	private int 	LVE_HR_LOAN_ID_PAYMENT_TERM 	= 0;
	//	Interest
	/**	Interest Deduction					*/
	private String 	LVE_HR_LN_PREFIX_D_INTEREST 	= null;
	/**	Interest Calculation				*/
	private String 	LVE_HR_LN_PREFIX_C_INTEREST 	= null;
	/**	Interest Previous Balance			*/
	private String 	LVE_HR_LN_PREFIX_PB_INTEREST 	= null;
	/**	Interest Calculation Not Due		*/
	private String 	LVE_HR_LN_PREFIX_ND_INTEREST 	= null;
	/**	Interest Calculation Tax Not Due	*/
	private String 	LVE_HR_LN_PREFIX_NDT_INTEREST 	= null;
	/**	Interest Accumulated				*/
	private String 	LVE_HR_LN_PREFIX_A_INTEREST 	= null;
	/**	Interest Top Capital				*/
	private String 	LVE_HR_LN_PREFIX_T_INTEREST 	= null;
	/**	Total Interest						*/
	private String 	LVE_HR_LN_PREFIX_I_INTEREST_TI	= null;
	/**	Total Tax							*/
	private String 	LVE_HR_LN_PREFIX_I_INTEREST_TT	= null;
	
	/**	Days of Month						*/
	private String 	LVE_HR_LN_DAYS_OF_MONTH_FACTOR 	= null;
	/**	Days of Month						*/
	private String 	LVE_HR_LN_RATE_FACTOR 			= null;
	/**	Tax Deduction						*/
	private String 	LVE_HR_LN_PREFIX_C_TAX 			= null;
	/**	Groovy Prefix						*/
	private static String LVE_GROOVY_PREFIX 		= "groovy:";
	private static String SPIN_CONTRIBUTION_PREFIX 	= "ECA02";
	
	/**	Loan Incidence Concept Group		*/
	private int 					p_LVE_HR_I_CC_ID 	= 0;
	/**	Loan Factor Concept Group			*/
	private int 					p_LVE_HR_F_CC_ID 	= 0;
	/**	Loan Accumulated Concept Group		*/
	private int 					p_LVE_HR_A_CC_ID 	= 0;
	/**	Loan Calculation Concept Group		*/
	private int 					p_LVE_HR_D_CC_ID 	= 0;
	/**	Loan Reference Concept Group		*/
	private int 					p_LVE_HR_R_CC_ID 	= 0;
	/**	Valid From							*/
	private Timestamp 				p_ValidFrom 		= null;
	/**	Organization						*/
	private int 					p_AD_Org_ID			= 0;
	/**	Value								*/
	private String 					p_Value				= null;
	/**	Name								*/
	private String 					p_Name				= null;
	/**	Name								*/
	private String 					p_Description		= null;
	/**	Creates								*/
	private int 					m_Created			= 0;
	/**	Loan Definition						*/
	private MLVEHRLoanDefinition 	m_LoanDef 			= null;
	
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("LVE_HR_I_CC_ID"))
				p_LVE_HR_I_CC_ID = para.getParameterAsInt();
			else if(name.equals("LVE_HR_F_CC_ID"))
				p_LVE_HR_F_CC_ID = para.getParameterAsInt();
			else if(name.equals("LVE_HR_A_CC_ID"))
				p_LVE_HR_A_CC_ID = para.getParameterAsInt();
			else if(name.equals("LVE_HR_D_CC_ID"))
				p_LVE_HR_D_CC_ID = para.getParameterAsInt();
			else if(name.equals("LVE_HR_R_CC_ID"))
				p_LVE_HR_R_CC_ID = para.getParameterAsInt();
			else if(name.equals("ValidFrom"))
				p_ValidFrom = (Timestamp) para.getParameter();
		}
	}

	@Override
	protected String doIt() throws Exception {
		if(getRecord_ID() == 0)
			throw new AdempiereException("@LVE_HR_LoanDefinition_ID@ @NotFound@");
		//	Valid Incidence Concept Category
		if(p_LVE_HR_I_CC_ID == 0)
			throw new AdempiereException("@LVE_HR_I_CC_ID@ @NotFound@");
		//	Valid Factor Concept Category
		if(p_LVE_HR_F_CC_ID == 0)
			throw new AdempiereException("@LVE_HR_F_CC_ID@ @NotFound@");
		//	Valid Accumulated Concept Category
		if(p_LVE_HR_A_CC_ID == 0)
			throw new AdempiereException("@LVE_HR_A_CC_ID@ @NotFound@");
		//	Valid Calculation Concept Category
		if(p_LVE_HR_D_CC_ID == 0)
			throw new AdempiereException("@LVE_HR_D_CC_ID@ @NotFound@");
		//	Valid Reference Concept Group
		if(p_LVE_HR_R_CC_ID == 0)
			throw new AdempiereException("@LVE_HR_R_CC_ID@ @NotFound@");
		
		//	Load loan definition
		m_LoanDef = new MLVEHRLoanDefinition(getCtx(), getRecord_ID(), get_TrxName());
		//	
		p_Value = m_LoanDef.getValue();
		p_Name = m_LoanDef.getName();
		p_Description = m_LoanDef.getDescription();
		
		//	
		String validated = validPrefix();
		if(validated.length() != 0)
			throw new AdempiereException("@Prefix@ @NotFound@ " + validated);
		//	Set Valid From
		if(p_ValidFrom == null)
			p_ValidFrom = new Timestamp(System.currentTimeMillis());
		//	Set Org
		p_AD_Org_ID = 0;
		
		//	Create Incidence Concept
		createIncidenceConcept(LVE_HR_LN_PREFIX_INCIDENCE);
		//	Create Incidence Concept
		createIncidenceConcept(LVE_HR_LNSP_PREFIX_INCIDENCE);
		//	Create Accumulated Concept
		createAccumulatedConcept(LVE_HR_LN_PREFIX_ACCUMULATED);
		//	Create Calculation Concept
		createCalculationConcept(LVE_HR_LN_PREFIX_CALCULATION);
		//	Create Top Concept
		createFactorConcept(LVE_HR_LN_PREFIX_TOP);
		//	Create Deduction Concept
		createFactorConcept(LVE_HR_LN_PREFIX_DEDUCTION);
		//	Create Flag Concept
		createFactorConcept(LVE_HR_LN_PREFIX_FLAG);
		//	Create Payment Term Concept
		createIncidenceConcept(LVE_HR_LN_PREFIX_PAYMENT_TERM);
		//	Create Calculation Concept Previous Balance
		createCalculationConcept(LVE_HR_LN_PREFIX_PB_INTEREST);
		//	Interest
		if(m_LoanDef.isManagesInterest()) {
			//	Create Accumulated Concept Interest
			createAccumulatedConcept(LVE_HR_LN_PREFIX_A_INTEREST);
			//	Create Calculation Concept Interest
			createCalculationConcept(LVE_HR_LN_PREFIX_C_INTEREST);
			//	Create Calculation Concept Interest Not Due
			createCalculationConcept(LVE_HR_LN_PREFIX_ND_INTEREST);
			//	Create Calculation Concept Tax Not Due
			createCalculationConcept(LVE_HR_LN_PREFIX_NDT_INTEREST);
			//	Create Calculation Concept Tax
			createCalculationConcept(LVE_HR_LN_PREFIX_C_TAX);
			//	Create Top Concept Interest
			createFactorConcept(LVE_HR_LN_PREFIX_D_INTEREST);
			//	Create Top Concept Interest
			createFactorConcept(LVE_HR_LN_PREFIX_T_INTEREST);
			//	Create Rate Factor
			createFactorConcept(LVE_HR_LN_RATE_FACTOR);
			//	Days of Month
			createFactorConcept(LVE_HR_LN_DAYS_OF_MONTH_FACTOR);
			//	Create Incidence for Total Interest
			createIncidenceConcept(LVE_HR_LN_PREFIX_I_INTEREST_TI);
			//	Create Incidence for Total Tax
			createIncidenceConcept(LVE_HR_LN_PREFIX_I_INTEREST_TT);
		}
		//	save
		if(m_LoanDef.is_Changed()) {
			m_LoanDef.setProcessed(true);
			m_LoanDef.saveEx();
		}
		//	Return
		return "@Created@ = " + m_Created;
	}
	
	/**
	 * Valid prefix
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/06/2014, 19:57:52
	 * @return
	 * @return String
	 */
	private String validPrefix() {
		//	Get System Values
		LVE_HR_LN_PREFIX_INCIDENCE = MSysConfig.getValue("LVE_HR_LN_PREFIX_INCIDENCE", getAD_Client_ID());
		LVE_HR_LNSP_PREFIX_INCIDENCE = MSysConfig.getValue("LVE_HR_LNSP_PREFIX_INCIDENCE", getAD_Client_ID());
		LVE_HR_LN_PREFIX_ACCUMULATED = MSysConfig.getValue("LVE_HR_LN_PREFIX_ACCUMULATED", getAD_Client_ID());
		LVE_HR_LN_PREFIX_CALCULATION = MSysConfig.getValue("LVE_HR_LN_PREFIX_CALCULATION", getAD_Client_ID());
		LVE_HR_LN_PREFIX_DEDUCTION = MSysConfig.getValue("LVE_HR_LN_PREFIX_DEDUCTION", getAD_Client_ID());
		LVE_HR_LN_PREFIX_TOP = MSysConfig.getValue("LVE_HR_LN_PREFIX_TOP", getAD_Client_ID());
		LVE_HR_LN_PREFIX_FLAG = MSysConfig.getValue("LVE_HR_LN_PREFIX_FLAG", getAD_Client_ID());
		LVE_HR_LN_PREFIX_PAYMENT_TERM = MSysConfig.getValue("LVE_HR_LN_PREFIX_PAYMENT_TERM", getAD_Client_ID());
		LVE_HR_LOAN_ID_PAYMENT_TERM = MSysConfig.getIntValue("LVE_HR_LOAN_ID_PAYMENT_TERM", 0, getAD_Client_ID());
		//	Interest
		LVE_HR_LN_PREFIX_PB_INTEREST = MSysConfig.getValue("LVE_HR_LN_PREFIX_PB_INTEREST", getAD_Client_ID());
		LVE_HR_LN_PREFIX_D_INTEREST = MSysConfig.getValue("LVE_HR_LN_PREFIX_D_INTEREST", getAD_Client_ID());
		LVE_HR_LN_PREFIX_ND_INTEREST = MSysConfig.getValue("LVE_HR_LN_PREFIX_ND_INTEREST", getAD_Client_ID());
		LVE_HR_LN_PREFIX_NDT_INTEREST = MSysConfig.getValue("LVE_HR_LN_PREFIX_NDT_INTEREST", getAD_Client_ID());
		LVE_HR_LN_PREFIX_C_INTEREST = MSysConfig.getValue("LVE_HR_LN_PREFIX_C_INTEREST", getAD_Client_ID());
		LVE_HR_LN_PREFIX_A_INTEREST = MSysConfig.getValue("LVE_HR_LN_PREFIX_A_INTEREST", getAD_Client_ID());
		LVE_HR_LN_PREFIX_T_INTEREST = MSysConfig.getValue("LVE_HR_LN_PREFIX_T_INTEREST", getAD_Client_ID());
		LVE_HR_LN_DAYS_OF_MONTH_FACTOR = MSysConfig.getValue("LVE_HR_LN_DAYS_OF_MONTH_FACTOR", getAD_Client_ID());
		LVE_HR_LN_RATE_FACTOR = MSysConfig.getValue("LVE_HR_LN_RATE_FACTOR", getAD_Client_ID());
		LVE_HR_LN_PREFIX_C_TAX = MSysConfig.getValue("LVE_HR_LN_PREFIX_C_TAX", getAD_Client_ID());
		LVE_HR_LN_PREFIX_I_INTEREST_TI = MSysConfig.getValue("LVE_HR_LN_PREFIX_I_INTEREST_TI", getAD_Client_ID());
		LVE_HR_LN_PREFIX_I_INTEREST_TT = MSysConfig.getValue("LVE_HR_LN_PREFIX_I_INTEREST_TT", getAD_Client_ID());
		//	Valid Prefix
		StringBuffer prefix = new StringBuffer();
		if(LVE_HR_LN_PREFIX_INCIDENCE == null || LVE_HR_LN_PREFIX_INCIDENCE.length() == 0)
			prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_PREFIX_INCIDENCE");
		if(LVE_HR_LNSP_PREFIX_INCIDENCE == null || LVE_HR_LNSP_PREFIX_INCIDENCE.length() == 0)
			prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LNSP_PREFIX_INCIDENCE");
		if(LVE_HR_LN_PREFIX_ACCUMULATED == null || LVE_HR_LN_PREFIX_ACCUMULATED.length() == 0)
			prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_PREFIX_ACCUMULATED");
		if(LVE_HR_LN_PREFIX_CALCULATION == null || LVE_HR_LN_PREFIX_CALCULATION.length() == 0)
			prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_PREFIX_CALCULATION");
		if(LVE_HR_LN_PREFIX_DEDUCTION == null || LVE_HR_LN_PREFIX_DEDUCTION.length() == 0)
			prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_PREFIX_DEDUCTION");
		if(LVE_HR_LN_PREFIX_TOP == null || LVE_HR_LN_PREFIX_TOP.length() == 0)
			prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_PREFIX_TOP");
		if(LVE_HR_LN_PREFIX_FLAG == null || LVE_HR_LN_PREFIX_FLAG.length() == 0)
			prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_PREFIX_FLAG");
		if(LVE_HR_LN_PREFIX_PAYMENT_TERM == null || LVE_HR_LN_PREFIX_PAYMENT_TERM.length() == 0)
			prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_PREFIX_PAYMENT_TERM");
		if(m_LoanDef.isManagesInterest()) {
			if(LVE_HR_LN_PREFIX_D_INTEREST == null || LVE_HR_LN_PREFIX_D_INTEREST.length() == 0)
				prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_PREFIX_D_INTEREST");
			if(LVE_HR_LN_PREFIX_C_INTEREST == null || LVE_HR_LN_PREFIX_C_INTEREST.length() == 0)
				prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_PREFIX_C_INTEREST");
			if(LVE_HR_LN_PREFIX_PB_INTEREST == null || LVE_HR_LN_PREFIX_PB_INTEREST.length() == 0)
				prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_PREFIX_PB_INTEREST");
			if(LVE_HR_LN_PREFIX_ND_INTEREST == null || LVE_HR_LN_PREFIX_ND_INTEREST.length() == 0)
				prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_PREFIX_ND_INTEREST");
			if(LVE_HR_LN_PREFIX_NDT_INTEREST == null || LVE_HR_LN_PREFIX_NDT_INTEREST.length() == 0)
				prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_PREFIX_NDT_INTEREST");
			if(LVE_HR_LN_PREFIX_A_INTEREST == null || LVE_HR_LN_PREFIX_A_INTEREST.length() == 0)
				prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_PREFIX_A_INTEREST");
			if(LVE_HR_LN_DAYS_OF_MONTH_FACTOR == null || LVE_HR_LN_DAYS_OF_MONTH_FACTOR.length() == 0)
				prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_DAYS_OF_MONTH_FACTOR");
			if(LVE_HR_LN_RATE_FACTOR == null || LVE_HR_LN_RATE_FACTOR.length() == 0)
				prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_RATE_FACTOR");
			if(LVE_HR_LN_PREFIX_C_TAX == null || LVE_HR_LN_PREFIX_C_TAX.length() == 0)
				prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_PREFIX_C_TAX");
			if(LVE_HR_LN_PREFIX_T_INTEREST == null || LVE_HR_LN_PREFIX_T_INTEREST.length() == 0)
				prefix.append(prefix.length() != 0? "\n": "").append("LVE_HR_LN_PREFIX_T_INTEREST");
		}
		//	Return
		return prefix.toString();
	}
	
	/**
	 * Create Incidence Concept
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 02/06/2014, 16:23:10
	 * @param prefix
	 * @return void
	 */
	private void createIncidenceConcept(String prefix) {
		//	Create Incidence
		if(existsIndexConcept(prefix))
			return;
		//	
		MHRConcept m_I_Concept = MHRConcept.forValue(getCtx(), prefix + p_Value);
		//	New Concept
		if(m_I_Concept == null) {
			m_I_Concept = new MHRConcept(getCtx(), 0, get_TrxName());
			m_I_Concept.setAD_Org_ID(p_AD_Org_ID);
			m_I_Concept.setHR_Concept_Category_ID((prefix.equals(LVE_HR_LNSP_PREFIX_INCIDENCE)
															? p_LVE_HR_D_CC_ID: 
																p_LVE_HR_I_CC_ID));
			m_I_Concept.setValue(prefix + p_Value);
			String name = p_Name;
			String description = p_Description;
			//	Name
			if(p_Name == null || p_Name.length() == 0)
				name = prefix + p_Value;
			//	Description
			if(p_Description == null || p_Description.length() == 0)
				description = prefix + p_Value;
			//	Set
			m_I_Concept.setName(name);
			m_I_Concept.setDescription(description);
			//	Is Manual
			m_I_Concept.setIsManual(true);
			m_I_Concept.setIsEmployee(false);
			m_I_Concept.setIsPrinted(true);
			m_I_Concept.setIsSaveInHistoric(true);
			m_I_Concept.setAccountSign(X_HR_Concept.ACCOUNTSIGN_Debit);
			m_I_Concept.setType(X_HR_Concept.TYPE_Reference);
			String columnType = (prefix.equals(LVE_HR_LN_PREFIX_INCIDENCE) 
					|| prefix.equals(LVE_HR_LNSP_PREFIX_INCIDENCE)
					|| prefix.equals(LVE_HR_LN_PREFIX_I_INTEREST_TI)
					|| prefix.equals(LVE_HR_LN_PREFIX_I_INTEREST_TT)? 
					X_HR_Attribute.COLUMNTYPE_Amount:
						X_HR_Attribute.COLUMNTYPE_Text);
			m_I_Concept.setColumnType(columnType);
			//	Set Reference
			if(prefix.equals(LVE_HR_LN_PREFIX_PAYMENT_TERM))
				m_I_Concept.setAD_Reference_ID(LVE_HR_LOAN_ID_PAYMENT_TERM);
			//	Save
			m_I_Concept.saveEx();
			//	Create Attribute
			MHRAttribute m_I_Attribute = new MHRAttribute(getCtx(), 0, get_TrxName());
			m_I_Attribute.setAD_Org_ID(p_AD_Org_ID);
			m_I_Attribute.setHR_Concept_ID(m_I_Concept.getHR_Concept_ID());
			m_I_Attribute.setColumnType(columnType);	
			m_I_Attribute.setValidFrom(p_ValidFrom);
			m_I_Attribute.saveEx();
			//	Add Log
			addLog("@HR_Concept_ID@ " + m_I_Concept.getValue() + " - " + m_I_Concept.getName());
			m_Created++;
		}
		//	
		setIndexConcept(prefix, m_I_Concept.getHR_Concept_ID());
	}
	
	/**
	 * Create Accumulated Concept and groovy
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 02/06/2014, 17:00:00
	 * @param prefix
	 * @return void
	 */
	private void createAccumulatedConcept(String prefix) {
		//	Create Accumulated
		if(existsIndexConcept(prefix))
			return;
		//	
		MHRConcept m_A_Concept = MHRConcept.forValue(getCtx(), prefix + p_Value);
		//	New Concept
		if(m_A_Concept == null) {
			m_A_Concept = new MHRConcept(getCtx(), 0, get_TrxName());
			m_A_Concept.setAD_Org_ID(p_AD_Org_ID);
			m_A_Concept.setHR_Concept_Category_ID(p_LVE_HR_A_CC_ID);
			m_A_Concept.setValue(prefix + p_Value);
			String name = p_Name;
			String description = p_Description;
			//	Name
			if(p_Name == null || p_Name.length() == 0)
				name = prefix + p_Value;
			//	Description
			if(p_Description == null || p_Description.length() == 0)
				description = prefix + p_Value;
			//	Set
			m_A_Concept.setName(name);
			m_A_Concept.setDescription(description);
			//	Is Manual
			m_A_Concept.setIsManual(false);
			m_A_Concept.setIsEmployee(false);
			m_A_Concept.setIsPrinted(true);
			m_A_Concept.setIsSaveInHistoric(true);
			m_A_Concept.setType(X_HR_Concept.TYPE_RuleEngine);
			m_A_Concept.setColumnType(X_HR_Concept.COLUMNTYPE_Amount);
			//	Save
			m_A_Concept.saveEx();
			//	Create Rule
			MRule m_A_Rule = new MRule(getCtx(), 0, get_TrxName());
			m_A_Rule.setValue(LVE_GROOVY_PREFIX + prefix + p_Value);
			m_A_Rule.setEventType(X_AD_Rule.EVENTTYPE_HumanResourcePayroll);
			m_A_Rule.setRuleType(X_AD_Rule.RULETYPE_JSR223ScriptingAPIs);
			//	Set Rule Name
			if(p_Name == null || p_Name.length() == 0)
				m_A_Rule.setName(name);
			else
				m_A_Rule.setName(prefix + p_Value);
			//	
			m_A_Rule.setDescription(description);
			m_A_Rule.setScript(getSript(prefix));
			m_A_Rule.setEntityType(SPIN_CONTRIBUTION_PREFIX);
			m_A_Rule.saveEx();
			//	Create Attribute
			MHRAttribute m_A_Attribute = new MHRAttribute(getCtx(), 0, get_TrxName());
			m_A_Attribute.setAD_Org_ID(p_AD_Org_ID);
			m_A_Attribute.setHR_Concept_ID(m_A_Concept.getHR_Concept_ID());
			m_A_Attribute.setColumnType(X_HR_Attribute.COLUMNTYPE_Amount);
			m_A_Attribute.setAD_Rule_ID(m_A_Rule.getAD_Rule_ID());
			m_A_Attribute.setValidFrom(p_ValidFrom);
			m_A_Attribute.saveEx();
			//	Add Log
			addLog("@HR_Concept_ID@ " + m_A_Concept.getValue() + " - " + m_A_Concept.getName());
			m_Created++;
		}
		//	
		setIndexConcept(prefix, m_A_Concept.getHR_Concept_ID());
	}
	
	/**
	 * Create Deduction Concept
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 02/06/2014, 17:18:40
	 * @param prefix
	 * @return void
	 */
	private void createCalculationConcept(String prefix) {
		//	Create Accumulated
		if(existsIndexConcept(prefix))
			return;
		//	
		MHRConcept m_C_Concept = MHRConcept.forValue(getCtx(), prefix + p_Value);
		//	New Concept
		if(m_C_Concept == null) {
			m_C_Concept = new MHRConcept(getCtx(), 0, get_TrxName());
			m_C_Concept.setAD_Org_ID(p_AD_Org_ID);
			//	Set Category
			int m_HR_Concept_Category_ID = 0;
			if(prefix.equals(LVE_HR_LN_PREFIX_CALCULATION)
					|| prefix.equals(LVE_HR_LN_PREFIX_PB_INTEREST)) {
				m_HR_Concept_Category_ID = p_LVE_HR_D_CC_ID;
			} else {
				m_HR_Concept_Category_ID = p_LVE_HR_R_CC_ID;
			}
			m_C_Concept.setHR_Concept_Category_ID(m_HR_Concept_Category_ID);
			m_C_Concept.setValue(prefix + p_Value);
			String name = p_Name;
			String description = p_Description;
			//	Name
			if(p_Name == null || p_Name.length() == 0)
				name = prefix + p_Value;
			//	Description
			if(p_Description == null || p_Description.length() == 0)
				description = prefix + p_Value;
			//	Set
			m_C_Concept.setName(name);
			m_C_Concept.setDescription(description);
			//	Is Manual
			m_C_Concept.setIsManual(false);
			m_C_Concept.setIsEmployee(false);
			m_C_Concept.setIsPrinted(true);
			m_C_Concept.setIsSaveInHistoric(true);
			m_C_Concept.setAccountSign(X_HR_Concept.ACCOUNTSIGN_Credit);
			m_C_Concept.setType(X_HR_Concept.TYPE_RuleEngine);
			m_C_Concept.setColumnType(X_HR_Concept.COLUMNTYPE_Amount);
			//	Save
			m_C_Concept.saveEx();
			//	Create Rule
			MRule m_C_Rule = new MRule(getCtx(), 0, get_TrxName());
			m_C_Rule.setValue(LVE_GROOVY_PREFIX + prefix + p_Value);
			m_C_Rule.setEventType(X_AD_Rule.EVENTTYPE_HumanResourcePayroll);
			m_C_Rule.setRuleType(X_AD_Rule.RULETYPE_JSR223ScriptingAPIs);
			//	Set Rule Name
			if(p_Name == null || p_Name.length() == 0)
				m_C_Rule.setName(name);
			else
				m_C_Rule.setName(prefix + p_Value);
			//	
			m_C_Rule.setDescription(description);
			m_C_Rule.setScript(getSript(prefix));
			m_C_Rule.setEntityType(SPIN_CONTRIBUTION_PREFIX);
			m_C_Rule.saveEx();
			//	Create Attribute
			MHRAttribute m_A_Attribute = new MHRAttribute(getCtx(), 0, get_TrxName());
			m_A_Attribute.setAD_Org_ID(p_AD_Org_ID);
			m_A_Attribute.setHR_Concept_ID(m_C_Concept.getHR_Concept_ID());
			m_A_Attribute.setColumnType(X_HR_Attribute.COLUMNTYPE_Amount);
			m_A_Attribute.setAD_Rule_ID(m_C_Rule.getAD_Rule_ID());
			m_A_Attribute.setValidFrom(p_ValidFrom);
			m_A_Attribute.saveEx();
			//	Add Log
			addLog("@HR_Concept_ID@ " + m_C_Concept.getValue() + " - " + m_C_Concept.getName());
			m_Created++;
		}
		//	
		setIndexConcept(prefix, m_C_Concept.getHR_Concept_ID());
	}
	
	/**
	 * Create Top Concept
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 02/06/2014, 17:29:11
	 * @param prefix
	 * @return void
	 */
	private void createFactorConcept(String prefix) {
		//	Create Incidence
		if(existsIndexConcept(prefix))
			return;
		//	
		String value = null;
		if(prefix.equals(LVE_HR_LN_DAYS_OF_MONTH_FACTOR)
				|| prefix.equals(LVE_HR_LN_RATE_FACTOR))
			value = prefix;
		else
			value = prefix + p_Value;
		//	
		MHRConcept m_T_Concept = MHRConcept.forValue(getCtx(), value);		
		//	New Concept
		if(m_T_Concept == null) {
			m_T_Concept = new MHRConcept(getCtx(), 0, get_TrxName());
			m_T_Concept.setAD_Org_ID(p_AD_Org_ID);
			m_T_Concept.setHR_Concept_Category_ID(p_LVE_HR_F_CC_ID);
			m_T_Concept.setValue(value);
			String name = p_Name;
			String description = p_Description;
			//	Name
			if(p_Name == null || p_Name.length() == 0)
				name = value;
			//	Description
			if(p_Description == null || p_Description.length() == 0)
				description = value;
			//	Set
			m_T_Concept.setName(name);
			m_T_Concept.setDescription(description);
			//	Is Manual
			m_T_Concept.setIsManual(false);
			m_T_Concept.setIsEmployee(prefix.equals(LVE_HR_LN_PREFIX_FLAG) 
					|| prefix.equals(LVE_HR_LN_PREFIX_D_INTEREST) 
					|| prefix.equals(LVE_HR_LN_PREFIX_T_INTEREST));
			m_T_Concept.setIsPrinted(true);
			m_T_Concept.setIsSaveInHistoric(true);
			m_T_Concept.setType((prefix.equals(LVE_HR_LN_DAYS_OF_MONTH_FACTOR)
					|| prefix.equals(LVE_HR_LN_RATE_FACTOR)
					? X_HR_Concept.TYPE_Information
							: X_HR_Concept.TYPE_Reference));
			if(prefix.equals(LVE_HR_LN_PREFIX_FLAG))
				m_T_Concept.setColumnType(X_HR_Concept.COLUMNTYPE_Date);
			else 
				m_T_Concept.setColumnType(X_HR_Concept.COLUMNTYPE_Amount);
			//	Save
			m_T_Concept.saveEx();
			//	Add Attribute
			if(prefix.equals(LVE_HR_LN_PREFIX_FLAG)) {
				MHRAttribute m_T_Attribute = new MHRAttribute(getCtx(), 0, get_TrxName());
				m_T_Attribute.setAD_Org_ID(p_AD_Org_ID);
				m_T_Attribute.setHR_Concept_ID(m_T_Concept.getHR_Concept_ID());
				m_T_Attribute.setColumnType(X_HR_Attribute.COLUMNTYPE_Date);
				m_T_Attribute.setValidFrom(p_ValidFrom);
				m_T_Attribute.saveEx();
			}
			//	Add Log
			addLog("@HR_Concept_ID@ " + m_T_Concept.getValue() + " - " + m_T_Concept.getName());
			m_Created++;
		}
		//	
		setIndexConcept(prefix, m_T_Concept.getHR_Concept_ID());
	}
	
	/**
	 * Get Script from type
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 11:30:38
	 * @param prefix
	 * @return
	 * @return String
	 */
	private String getSript(String prefix) {
		if(prefix.equals(LVE_HR_LN_PREFIX_ACCUMULATED))
			return "result = getCurrentLoanBalanceAmt(\"" + p_Value + "\");";
		else if(prefix.equals(LVE_HR_LN_PREFIX_A_INTEREST))
			return "result = getCurrentLoanBalanceInterestAmt(\"" + p_Value + "\");";
		else if(prefix.equals(LVE_HR_LN_PREFIX_CALCULATION))
			return "result = getCurrentLoanAmt(\"" + p_Value + "\");";
		else if(prefix.equals(LVE_HR_LN_PREFIX_C_INTEREST))
			return "result = getCurrentLoanInterestAmt(\"" + p_Value + "\");";
		if(prefix.equals(LVE_HR_LN_PREFIX_PB_INTEREST))
			return "result = getLoanPreviousBalanceAmt(\"" + p_Value + "\");";
		else if(prefix.equals(LVE_HR_LN_PREFIX_ND_INTEREST))
			return "result = getCurrentLoanInterestNDAmt(\"" + p_Value + "\");";
		else if(prefix.equals(LVE_HR_LN_PREFIX_NDT_INTEREST))
			return "result = getCurrentLoanInterestNDTAmt(\"" + p_Value + "\");";
		else if(prefix.equals(LVE_HR_LN_PREFIX_C_TAX))
			return "result = getCurrentLoanTaxAmt(\"" + p_Value + "\");";
		return "";
	}
	
	/**
	 * Set Index Concept
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 21:28:47
	 * @param prefix
	 * @param m_HR_Concept_ID
	 * @return void
	 */
	private void setIndexConcept(String prefix, int m_HR_Concept_ID) {
		if(prefix.equals(LVE_HR_LN_PREFIX_INCIDENCE))
			m_LoanDef.setLoan_I_Concept_ID(m_HR_Concept_ID);
		if(prefix.equals(LVE_HR_LNSP_PREFIX_INCIDENCE))
			m_LoanDef.setLoan_I_SP_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_PREFIX_ACCUMULATED))
			m_LoanDef.setLoan_A_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_PREFIX_CALCULATION))
			m_LoanDef.setLoan_C_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_PREFIX_DEDUCTION))
			m_LoanDef.setLoan_D_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_PREFIX_TOP))
			m_LoanDef.setLoan_T_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_PREFIX_FLAG))
			m_LoanDef.setLoan_F_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_PREFIX_PAYMENT_TERM))
			m_LoanDef.setLoan_P_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_PREFIX_D_INTEREST))
			m_LoanDef.setInterest_D_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_PREFIX_C_INTEREST))
			m_LoanDef.setInterest_C_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_PREFIX_PB_INTEREST))
			m_LoanDef.setInterest_PB_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_PREFIX_ND_INTEREST))
			m_LoanDef.setInterest_ND_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_PREFIX_NDT_INTEREST))
			m_LoanDef.setInterest_NDT_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_PREFIX_T_INTEREST))
			m_LoanDef.setInterest_T_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_PREFIX_A_INTEREST))
			m_LoanDef.setInterest_A_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_DAYS_OF_MONTH_FACTOR))
			m_LoanDef.setInterest_DM_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_RATE_FACTOR))
			m_LoanDef.setInterest_R_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_PREFIX_C_TAX))
			m_LoanDef.setTax_C_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_PREFIX_I_INTEREST_TI))
			m_LoanDef.setInterest_TI_Concept_ID(m_HR_Concept_ID);
		else if(prefix.equals(LVE_HR_LN_PREFIX_I_INTEREST_TT))
			m_LoanDef.setInterest_TT_Concept_ID(m_HR_Concept_ID);
	}
	
	/**
	 * Exists Concept
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 21:39:09
	 * @param prefix
	 * @return
	 * @return boolean
	 */
	private boolean existsIndexConcept(String prefix) {
		if(prefix.equals(LVE_HR_LN_PREFIX_INCIDENCE))
			return m_LoanDef.getLoan_I_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LNSP_PREFIX_INCIDENCE))
			return m_LoanDef.getLoan_I_SP_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_PREFIX_ACCUMULATED))
			return m_LoanDef.getLoan_A_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_PREFIX_CALCULATION))
			return m_LoanDef.getLoan_C_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_PREFIX_DEDUCTION))
			return m_LoanDef.getLoan_D_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_PREFIX_TOP))
			return m_LoanDef.getLoan_T_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_PREFIX_FLAG))
			return m_LoanDef.getLoan_F_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_PREFIX_PAYMENT_TERM))
			return m_LoanDef.getLoan_P_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_PREFIX_D_INTEREST))
			return m_LoanDef.getInterest_D_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_PREFIX_C_INTEREST))
			return m_LoanDef.getInterest_C_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_PREFIX_PB_INTEREST))
			return m_LoanDef.getInterest_PB_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_PREFIX_ND_INTEREST))
			return m_LoanDef.getInterest_ND_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_PREFIX_NDT_INTEREST))
			return m_LoanDef.getInterest_NDT_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_PREFIX_T_INTEREST))
			return m_LoanDef.getInterest_T_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_PREFIX_A_INTEREST))
			return m_LoanDef.getInterest_A_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_DAYS_OF_MONTH_FACTOR))
			return m_LoanDef.getInterest_DM_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_RATE_FACTOR))
			return m_LoanDef.getInterest_R_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_PREFIX_C_TAX))
			return m_LoanDef.getTax_C_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_PREFIX_I_INTEREST_TI))
			return m_LoanDef.getInterest_TI_Concept_ID() != 0;
		else if(prefix.equals(LVE_HR_LN_PREFIX_I_INTEREST_TT))
			return m_LoanDef.getInterest_TT_Concept_ID() != 0;
		
		return false;
	}
	
}
