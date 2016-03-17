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


import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.exceptions.DBException;
import org.compiere.model.MBPartner;
import org.compiere.model.MCurrency;
import org.compiere.model.MRule;
import org.compiere.model.Query;
import org.compiere.model.Scriptlet;
import org.compiere.model.X_C_BPartner;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.TimeUtil;
import org.eevolution.model.I_HR_Attribute;
import org.eevolution.model.MHRAttribute;
import org.eevolution.model.MHRConcept;
import org.eevolution.model.MHREmployee;
import org.eevolution.model.MHRPayroll;
import org.eevolution.model.X_HR_Attribute;
import org.eevolution.model.X_HR_Movement;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class AttributeChangeinConcept extends SvrProcess {

	/** the context for rules */
	HashMap<String, Object> m_scriptCtx = new HashMap<String, Object>();

	private static StringBuffer s_scriptImport = new StringBuffer(	 " import org.eevolution.model.*;" 
			+" import org.compiere.model.*;"
			+" import org.adempiere.model.*;"
			+" import org.compiere.util.*;"
			+" import java.math.*;"
			+" import java.sql.*;" 
			+" import java.util.*;" 
			+" import org.spin.model.*;" 
			+" import org.spin.util.*;");

	/**	Organization								*/
	private int				p_AD_Org_ID 			= 0;

	/**	Concept										*/
	private int				p_HR_Concept_ID 		= 0;

	/**	Payroll										*/
	private int 			p_HR_Payroll_ID 		= 0;

	/**	Job											*/
	private int 			p_HR_Job_ID 			= 0;

	/**	Job											*/
	private int 			p_C_BPartner_ID 		= 0;

	/**	Percentage									*/
	private BigDecimal 		p_Percentage 			= null;

	/**	Amount 										*/
	private BigDecimal 		p_Amount				= null;

	/**	Valid from									*/
	private Timestamp 		p_ValidFrom 			= null;

	/**	Description to Attribute					*/
	private String 			p_Description			= null;

	/**	Concept Validation 							*/
	private int 			p_ValidConcept_ID		= 0;	

	/**	Payroll Department							*/ 					
	private int 			p_HR_Department_ID		= 0;

	/** Validation Concept 							*/
	private MHRConcept 		m_ConceptValidation 	= null;

	/**	Concept 									*/
	private MHRConcept 		m_Concept				= null;

	/**	Column Type									*/
	private String 			m_columnType   			= "";

	/**	Current Business Partner 					*/
	private int 			m_Current_C_BPartner_ID	= 0;

	/* stack of concepts executing rules - to check loop in recursion */
	private List<MHRConcept> activeConceptRule = null;

	/**	Generated									*/
	private int 			m_Created 				= 0;

	/** The employee being processed 				*/
	private MHREmployee m_employee;

	/**	Precision									*/
	private int precision							= 0;
	/**	Date Format 								*/
	private SimpleDateFormat format 				= null;
	/**	Simulation									*/
	private boolean p_IsSimulation					= false;
	/**	Msg											*/
	private String msg 								= null;
	/**	Client										*/
	private int p_AD_Client_ID						= 0;
	/**	Instance									*/
	private int p_AD_PInstance_ID					= 0;

	//private MBPartner m_BPartner;

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para:getParameter()) {
			String name = para.getParameterName();

			if (para.getParameter() == null)
				;
			else if(name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if(name.equals("HR_Concept_ID"))
				p_HR_Concept_ID = para.getParameterAsInt();
			else if(name.equals("HR_Payroll_ID"))
				p_HR_Payroll_ID = para.getParameterAsInt();
			else if(name.equals("HR_Department_ID"))
				p_HR_Department_ID = para.getParameterAsInt();			
			else if(name.equals("HR_Job_ID"))
				p_HR_Job_ID = para.getParameterAsInt();
			else if(name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = para.getParameterAsInt();
			else if(name.equals("Percentage"))
				p_Percentage = (BigDecimal) para.getParameter();
			else if(name.equals("Amount"))
				p_Amount = (BigDecimal) para.getParameter();
			else if (name.equals("ValidConcept_ID"))
				p_ValidConcept_ID = para.getParameterAsInt();
			else if(name.equals("Description"))
				p_Description = para.getParameter().toString();
			else if(name.equals("ValidFrom")){
				p_ValidFrom = (Timestamp) para.getParameter();
			}else if(name.equals("IsSimulation")){
				p_IsSimulation = para.getParameterAsBoolean();
			}else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);			
		}
		//	Instance Active Concept
		activeConceptRule = new ArrayList<MHRConcept>();

		//	Yamel Senih 2013-09-24, 21:41:00
		//	Correct Currency from Context
		precision = MCurrency.getStdPrecision(getCtx(), Env.getContextAsInt(getCtx(), "$C_Currency_ID"));
		//	End Yamel Senih
		format = DisplayType.getDateFormat(DisplayType.Date);

		//	ffffInit AD_Client
		p_AD_Client_ID = Env.getAD_Client_ID(getCtx());
		//	Init AD_PInstance
		p_AD_PInstance_ID = getAD_PInstance_ID();

	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		//	Valid Concept
		if(p_HR_Concept_ID == 0)
			throw new AdempiereException("@HR_Concept_ID@ @NotFound@"); 

		//	Valid Concept Validation 
		if(p_ValidConcept_ID == 0)
			throw new AdempiereException("@ValidConcept_ID@ @NotFound@");

		//	Valid Valid From 
		if(p_ValidFrom == null)
			throw new AdempiereException("@ValidFrom@ @NotFound@");

		m_ConceptValidation = MHRConcept.get(getCtx(), p_ValidConcept_ID);

		m_Concept = MHRConcept.get(getCtx(), p_HR_Concept_ID);
		//	
		if(!m_ConceptValidation.getColumnType()
				.equals(m_Concept.getColumnType()))
			throw new AdempiereException("@RecordsDontMatch@ " +
					"@ValidConcept_ID@" + m_ConceptValidation.getType() + 
					", @HR_Concept_ID@ " + m_Concept.getType());

		MBPartner[] bPartner = getEmployees();
		//
		int p_AD_Org_ID_Temp = 0;
		//		
		if(p_AD_Org_ID > 0)
			p_AD_Org_ID_Temp = p_AD_Org_ID;
		//	
		//	Clear Context
		m_scriptCtx.clear();
		//	Add Parameters to Rule
		m_scriptCtx.put("_Percentage", (p_Percentage == null? 0: p_Percentage.doubleValue()));
		m_scriptCtx.put("_Amount", (p_Amount == null? 0: p_Amount.doubleValue()));
		//		
		for (MBPartner mbPartner : bPartner) {
			if(m_Current_C_BPartner_ID != 0)
				m_Current_C_BPartner_ID = 0;
			//	
			m_Current_C_BPartner_ID = mbPartner.get_ID();
			m_employee = MHREmployee.getActiveEmployee(getCtx(), m_Current_C_BPartner_ID, 
					p_AD_Org_ID_Temp, get_TrxName());
			if(m_employee == null)
				continue;
			//	Put Variables
			//	End Yamel Senih
			m_scriptCtx.remove("_DateStart");
			m_scriptCtx.remove("_DateEnd");
			m_scriptCtx.remove("_Days");
			m_scriptCtx.remove("_C_BPartner_ID");
			//	Yamel Senih 2014-04-10, 15:32:25
			//	Remove Values
			m_scriptCtx.remove("_BPartner");
			m_scriptCtx.remove("_Employee");
			m_scriptCtx.remove("_E_VFrom");
			m_scriptCtx.remove("_E_VTo");
			m_scriptCtx.remove("_E_PValue");
			m_scriptCtx.remove("_E_HR_Department_ID");
			m_scriptCtx.remove("_E_HR_Job_ID");
			//	End Yamel Senih
			m_scriptCtx.put("_DateStart", m_employee.getStartDate());
			m_scriptCtx.put("_DateEnd", m_employee.getEndDate() == null ? TimeUtil.getDay(2999, 12, 31) : m_employee.getEndDate());
			m_scriptCtx.put("_C_BPartner_ID", mbPartner.get_ID());

			//	Yamel Senih 2013-09-24, 16:45:35
			//	Add Business Partner and Employee
			m_scriptCtx.put("_BPartner", mbPartner);
			m_scriptCtx.put("_Employee", m_employee);
			m_scriptCtx.put("_E_HR_Department_ID", m_employee.getHR_Department_ID());
			m_scriptCtx.put("_E_HR_Job_ID", m_employee.getHR_Job_ID());
			if(m_employee.getHR_Payroll_ID() != 0){
				MHRPayroll m_ePayroll = MHRPayroll.get(getCtx(), m_employee.getHR_Payroll_ID());
				m_scriptCtx.put("_E_PValue", m_ePayroll.getValue());
			} else
				m_scriptCtx.put("_E_PValue", null);
			//	Add Valid From and Valid To
			Timestamp m_From = m_employee.getStartDate();
			Timestamp m_To = m_employee.getEndDate();
			//	Add Values to Context
			m_scriptCtx.put("_E_VFrom", m_From);
			m_scriptCtx.put("_E_VTo", m_To);
			//	Process or create a attribute
			processConcept(m_ConceptValidation);
		}

		//	
		return msg + m_Created;
	}

	/**
	 * 
	 * @author <a href="mailto:dixon.22ma@gmail.com">Dixon Martinez</a> 27/2/2015, 10:42:55
	 * @param p_AD_Client_ID
	 * @param p_AD_Org_ID
	 * @param p_AD_PInstance_ID
	 * @param p_Amount
	 * @param p_Percentage
	 * @param p_ValidFrom
	 * @param p_HR_Employee_ID
	 * @param p_IsSimulation
	 * @param previousSalary
	 * @param newSalary
	 * @param previousQty
	 * @param p_Qty
	 * @param preiousServiceDate
	 * @param p_ServiceDate
	 * @param previousTextMsg
	 * @param p_TextMsg
	 * @return void
	 */
	private void insertDataReport(
			int p_AD_Client_ID, 
			int p_AD_Org_ID,
			int p_AD_PInstance_ID, 
			BigDecimal p_Amount, 
			BigDecimal p_Percentage,
			Timestamp p_ValidFrom,
			int p_HR_Employee_ID, 
			boolean p_IsSimulation,	
			BigDecimal previousSalary,
			BigDecimal newSalary, 
			BigDecimal previousQty,
			BigDecimal p_Qty,
			Timestamp preiousServiceDate,
			Timestamp p_ServiceDate,
			String previousTextMsg,
			String p_TextMsg) {

		final String sql = "INSERT INTO T_SalaryChange ("
				+ "	AD_Client_ID, AD_Org_ID, AD_PInstance_ID, Amount, Percentage, DateTrx, HR_Employee_ID, IsSimulation, "
				+ "	PreviousAmt, NewSalary, PreviousQty, Qty,PreviousServiceDate, ServiceDate,PreviousTextMsg, "
				+ " TextMsg, ValidConcept_ID, HR_Concept_ID, Description"
				+ " ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
		PreparedStatement pstmt = null;
		try {
			pstmt = DB.prepareStatement(sql, get_TrxName());										//	Prepare Statement	
			pstmt.setInt(1, p_AD_Client_ID > 0 ? p_AD_Client_ID : 0);								//	Client
			pstmt.setInt(2,p_AD_Org_ID > 0 ? p_AD_Org_ID : 0);									//	Organization 
			pstmt.setInt(3, p_AD_PInstance_ID > 0 ? p_AD_PInstance_ID : 0);						//	Instance
			pstmt.setBigDecimal(4, p_Amount != null ? p_Amount : Env.ZERO);						//	Amount Parameter
			pstmt.setBigDecimal(5, p_Percentage != null ? p_Percentage : Env.ZERO);				//	Percentage
			pstmt.setTimestamp(6, p_ValidFrom);													//	Date Transaction
			pstmt.setInt(7, p_HR_Employee_ID > 0 ? p_HR_Employee_ID : 0);							//	Employee
			pstmt.setString(8, p_IsSimulation ? "Y" : "N");										//	Simulation
			pstmt.setBigDecimal(9, previousSalary != null ? previousSalary : Env.ZERO);			//	Previous Salary
			pstmt.setBigDecimal(10, newSalary != null ? newSalary : Env.ZERO);					//	New Salary
			pstmt.setBigDecimal(11, previousQty != null ? previousQty : Env.ZERO);				//	Previous Quantity
			pstmt.setBigDecimal(12, p_Qty != null ? p_Qty : Env.ZERO);							//	Quantity
			pstmt.setTimestamp(13, preiousServiceDate != null? preiousServiceDate : null);		//	Previous Service Date
			pstmt.setTimestamp(14, p_ServiceDate != null? p_ServiceDate : null);					//	Service Date
			pstmt.setString(15, previousTextMsg != null ? previousTextMsg : null);				//	Previous Text Msg
			pstmt.setString(16, p_TextMsg != null ? p_TextMsg : null);							//	Text Msg
			pstmt.setInt(17, p_ValidConcept_ID > 0 ? p_ValidConcept_ID : null);					//	Valid concept
			pstmt.setInt(18, p_HR_Concept_ID > 0 ? p_HR_Concept_ID : null);						//	Concept
			pstmt.setString(19, p_Description  != null ? p_Description : null);					//	Description

			pstmt.execute();
		}
		catch (SQLException e)	{
			throw new DBException(e, sql);
		}
		finally {
			DB.close(pstmt);
			pstmt = null;
		}
	}

	/**
	 * Process Concept. Return list of attributes of concept
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 21/06/2014, 12:07:39
	 * @param concept
	 * @return void
	 */
	private void processConcept(MHRConcept concept) {
		Object obj = null;
		//	Add Paramters to Rule
		obj = getAttributeFromConcept(concept);
		//	
		addAttribute(obj);
	}

	/**
	 * Get Attributes of concept
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 21/06/2014, 12:11:55
	 * @param concept
	 * @param printed
	 * @return
	 * @return Object
	 */
	private Object getAttributeFromConcept(MHRConcept concept) {
		log.info("Calculating concept " + concept.getValue());
		m_columnType       = concept.getColumnType();
		Object result = null;

		List<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		whereClause.append("? >= ValidFrom ");
		params.add(p_ValidFrom);
		whereClause.append(" AND HR_Concept_ID = ? ");
		params.add(concept.getHR_Concept_ID());
		//	Yamel Senih Support to multiple groovy
		if(p_HR_Payroll_ID > 0){
			whereClause.append(" AND (HR_Payroll_ID=? OR HR_Payroll_ID IS NULL)");
			params.add(p_HR_Payroll_ID);
		}
		if(p_HR_Department_ID > 0){
			whereClause.append(" AND (HR_Department_ID=? OR HR_Payroll_ID IS NULL)");
			params.add(p_HR_Department_ID);	
		}
		if(p_HR_Job_ID > 0){
			whereClause.append(" AND (HR_Job_ID=? OR HR_Job_ID IS NULL)");
			params.add(p_HR_Job_ID);
		}
		//	End Yamel Senih
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Concept conc WHERE conc.HR_Concept_ID = HR_Attribute.HR_Concept_ID )");

		// Check the concept is within a valid range for the attribute
		if (concept.isEmployee()) {
			whereClause.append(" AND C_BPartner_ID = ? AND (HR_Employee_ID = ? OR HR_Employee_ID IS NULL)");
			params.add(m_employee.getC_BPartner_ID());
			params.add(m_employee.get_ID());
		}

		MHRAttribute att = new Query(getCtx(), MHRAttribute.Table_Name, whereClause.toString(), get_TrxName())
		.setParameters(params)
		.setOnlyActiveRecords(true)
		.setOrderBy(I_HR_Attribute.COLUMNNAME_HR_Payroll_ID + ", " + MHRAttribute.COLUMNNAME_ValidFrom + " DESC")
		.first();

		log.info("Concept - " + concept.getName());

		if (att == null)
			return result;
		else if (MHRConcept.TYPE_RuleEngine.equals(concept.getType())) {
			log.info("Executing rule for concept " + concept.getValue());
			if (activeConceptRule.contains(concept)) {
				throw new AdempiereException("Recursion loop detected in concept " + concept.getValue());
			}
			activeConceptRule.add(concept);
			result = executeScript(att.getAD_Rule_ID(), att.getColumnType());
			activeConceptRule.remove(concept);
			if (result == null
					&& (!m_columnType.equals(X_HR_Movement.COLUMNTYPE_Date)
							&& m_columnType.equals(X_HR_Movement.COLUMNTYPE_Text))) {
				log.warning("Variable (result) is null");
			}
		} else if (concept.getColumnType().equals(X_HR_Attribute.COLUMNTYPE_Date))
			result = att.getServiceDate();
		else if (concept.getColumnType().equals(X_HR_Attribute.COLUMNTYPE_Amount))
			result = att.getAmount();
		else if (concept.getColumnType().equals(X_HR_Attribute.COLUMNTYPE_Text))
			result = att.getTextMsg();
		else if (concept.getColumnType().equals(X_HR_Attribute.COLUMNTYPE_Quantity))
			result = att.getQty();
		//		
		return result;
	}

	/**
	 * Execute the script
	 * @param AD_Rule_ID
	 * @param string Column Type
	 * @return Object
	 */
	private Object executeScript(int AD_Rule_ID, String columnType)	{
		MRule rulee = MRule.get(getCtx(), AD_Rule_ID);
		Object result = null;
		//m_description = null;
		try {
			String text = "";
			if (rulee.getScript() != null){
				text = rulee.getScript().trim().replaceAll("\\bget", "process.get")
						.replace(".process.get", ".get");
			}
			String resultType = "double";
			//	Yamel Senih Add DefValue to another Types
			String defValue = "0";
			if  (MHRAttribute.COLUMNTYPE_Date.equals(columnType)){
				resultType = "Timestamp";
				defValue = "null";
			} else if  (MHRAttribute.COLUMNTYPE_Text.equals(columnType)){
				resultType = "String";
				defValue = "null";
			} else if (X_HR_Attribute.COLUMNTYPE_Amount.equals(columnType)){
				resultType = "double";
				defValue = "0.0";
			}
			//				
			final String script =
					s_scriptImport.toString()
					+" " + resultType + " result = "+ defValue +";"
					//+" String description = null;"
					+ text;
			Scriptlet engine = new Scriptlet (Scriptlet.VARIABLE, script, m_scriptCtx);	
			Exception ex = engine.execute();
			if (ex != null) {
				throw ex;
			}
			result = engine.getResult(false);
			//m_description = engine.getDescription();
		}
		catch (Exception e) {
			throw new AdempiereException("Execution error - @AD_Rule_ID@="+rulee.getValue());
		}
		return result;
	}

	/**
	 * Add Attributes to employee 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 20/06/2014, 16:18:37
	 * @param value
	 * @return void
	 */
	private void addAttribute(Object value){

		BigDecimal amount = Env.ZERO;	

		BigDecimal previousAmt = null;	
		BigDecimal previousQty = null;	
		Timestamp preiousServiceDate = null;	
		String previousTextMsg = null;	
		MHRAttribute 	m_HR_Attribute = 
				new MHRAttribute(getCtx(), 0, get_TrxName());

		//m_BPartner = MBPartner.get(getCtx(), m_Current_C_BPartner_ID);

		if(p_AD_Org_ID > 0)
			m_HR_Attribute.setAD_Org_ID(p_AD_Org_ID);
		else
			m_HR_Attribute.setAD_Org_ID(m_Concept.getAD_Org_ID());

		m_HR_Attribute.setC_BPartner_ID(m_Current_C_BPartner_ID);

		if(p_Description != null)
			m_HR_Attribute.setDescription(p_Description);

		m_HR_Attribute.setColumnType(m_Concept.getColumnType());

		m_HR_Attribute.setValidFrom(p_ValidFrom);
		m_HR_Attribute.setHR_Concept_ID(m_Concept.get_ID());
//		2015-07-08	Dixon Martinez 
//		Change requested by Rahiber Paradas
//		if(p_HR_Payroll_ID > 0 )
//			m_HR_Attribute.setHR_Payroll_ID(p_HR_Payroll_ID);
//		End Dixon Martinez
		//
		if (m_Concept.getColumnType().equals(X_HR_Attribute.COLUMNTYPE_Date)){
			m_HR_Attribute.setServiceDate((Timestamp)value);
			value = format.format(m_HR_Attribute.getServiceDate());
			preiousServiceDate = (Timestamp) getAttributeFromConcept(m_Concept);
			if(m_HR_Attribute.getServiceDate() != null){
				if(!p_IsSimulation) {
					m_HR_Attribute.saveEx();
					msg = "@Created@ = ";
					m_Created ++;
				}else {
					msg = "@IsSimulation@ = ";
					m_Created ++;
				}
				//	Add to log
				//addLog(m_BPartner.getValue() + "-" + m_BPartner.getName() + "-" + m_Concept.getName() + "-" + value);

				//	Insert Data for Report
				insertDataReport(
						p_AD_Client_ID, 						//	Client
						p_AD_Org_ID, 							//	Organization
						p_AD_PInstance_ID, 						//	Process Instance
						p_Amount, 								//	Parameter Amount
						p_Percentage, 							// 	Parameter Percentage 
						p_ValidFrom, 							//	Valid From
						m_employee.get_ID(),					//	Employee 
						p_IsSimulation, 						//	Simulation
						previousAmt, 							// 	Previous Amount
						m_HR_Attribute.getAmount(),	 			//	New Salary
						previousQty, 							// 	Previous Quantity
						m_HR_Attribute.getQty(),				//	Quantity
						preiousServiceDate, 					// 	Previous Service Date
						m_HR_Attribute.getServiceDate(), 		//	Service Date 
						previousTextMsg, 						// 	Previous Text Msg
						m_HR_Attribute.getTextMsg());			//	Text Msg
			}
		}else if (m_Concept.getColumnType().equals(X_HR_Attribute.COLUMNTYPE_Text)){
			m_HR_Attribute.setTextMsg(value.toString());
			value = m_HR_Attribute.getTextMsg();
			previousTextMsg = getAttributeFromConcept(m_Concept).toString();
			if(m_HR_Attribute.getTextMsg() != null
					&& m_HR_Attribute.getTextMsg().length() > 0){
				if(!p_IsSimulation) {
					m_HR_Attribute.saveEx();
					msg = "@Created@ = ";
					m_Created ++;
				}else {
					msg = "@IsSimulation@ = ";
					m_Created ++;
				}
				//	Add to log
				//addLog(m_BPartner.getValue() + "-" + m_BPartner.getName() + "-" + m_Concept.getName() + "-" + value);

				//	Insert Data for Report
				insertDataReport(
						p_AD_Client_ID, 						//	Client
						p_AD_Org_ID, 							//	Organization
						p_AD_PInstance_ID, 						//	Process Instance
						p_Amount, 								//	Parameter Amount
						p_Percentage, 							// 	Parameter Percentage 
						p_ValidFrom, 							//	Valid From
						m_employee.get_ID(),					//	Employee 
						p_IsSimulation, 						//	Simulation
						previousAmt, 							// 	Previous Amount
						m_HR_Attribute.getAmount(),	 			//	New Salary
						previousQty, 							// 	Previous Quantity
						m_HR_Attribute.getQty(),				//	Quantity
						preiousServiceDate, 					// 	Previous Service Date
						m_HR_Attribute.getServiceDate(), 		//	Service Date 
						previousTextMsg, 						// 	Previous Text Msg
						m_HR_Attribute.getTextMsg());			//	Text Msg
			}
		}else if (m_Concept.getColumnType().equals(X_HR_Attribute.COLUMNTYPE_Quantity)) {
			BigDecimal qty = new BigDecimal(value.toString());
			qty = qty.setScale(precision,BigDecimal.ROUND_HALF_UP);
			m_HR_Attribute.setQty(qty);
			m_HR_Attribute.setAmount(Env.ZERO);
			value = qty.doubleValue();
			
			Object obj =  getAttributeFromConcept(m_Concept);

			String objToString = obj != null ? obj.toString() : Env.ZERO.toString();
			
			previousQty = new BigDecimal(objToString);
			
//			previousQty = new BigDecimal(getAttributeFromConcept(m_Concept).toString());
			previousQty = previousQty.setScale(precision, BigDecimal.ROUND_HALF_UP);
			
			if(m_HR_Attribute.getQty() != null
					&& m_HR_Attribute.getQty().doubleValue() > 0){
				if(!p_IsSimulation) {
					m_HR_Attribute.saveEx();
					msg = "@Created@ = ";
					m_Created ++;
				}else {
					msg = "@IsSimulation@ = ";
					m_Created ++;
				}
				//	Add to log
				//addLog(m_BPartner.getValue() + "-" + m_BPartner.getName() + "-" + m_Concept.getName() + "-" + value);

				//	Insert Data for Report
				//	Insert Data for Report
				insertDataReport(
						p_AD_Client_ID, 						//	Client
						p_AD_Org_ID, 							//	Organization
						p_AD_PInstance_ID, 						//	Process Instance
						p_Amount, 								//	Parameter Amount
						p_Percentage, 							// 	Parameter Percentage 
						p_ValidFrom, 							//	Valid From
						m_employee.get_ID(),					//	Employee 
						p_IsSimulation, 						//	Simulation
						previousAmt, 							// 	Previous Amount
						m_HR_Attribute.getAmount(),	 			//	New Salary
						previousQty, 							// 	Previous Quantity
						m_HR_Attribute.getQty(),				//	Quantity
						preiousServiceDate, 					// 	Previous Service Date
						m_HR_Attribute.getServiceDate(), 		//	Service Date 
						previousTextMsg, 						// 	Previous Text Msg
						m_HR_Attribute.getTextMsg());			//	Text Msg
			}

		} else if (m_Concept.getColumnType().equals(X_HR_Attribute.COLUMNTYPE_Amount)) {
			amount = new BigDecimal(value.toString());
			amount = amount.setScale(precision, BigDecimal.ROUND_HALF_UP);
			m_HR_Attribute.setAmount(amount);
			m_HR_Attribute.setQty(Env.ZERO);
			value = amount.doubleValue();

			Object obj =  getAttributeFromConcept(m_Concept);

			String objToString = obj != null ? obj.toString() : Env.ZERO.toString();
			
			previousAmt = new BigDecimal(objToString);
			previousAmt = previousAmt.setScale(precision, BigDecimal.ROUND_HALF_UP);
			
			
			if(m_HR_Attribute.getAmount() != null
					&& m_HR_Attribute.getAmount().doubleValue() > 0){
				if(!p_IsSimulation) {
					m_HR_Attribute.saveEx();
					msg = "@Created@ = ";
					m_Created ++;

				}else {
					msg = "@IsSimulation@ = ";
					m_Created ++;
				}
				//	Add to log
				//addLog(m_BPartner.getValue() + "-" + m_BPartner.getName() + "-" + m_Concept.getName() + "-" + value);

				//	Insert Data for Report
				insertDataReport(
						p_AD_Client_ID, 						//	Client
						p_AD_Org_ID, 							//	Organization
						p_AD_PInstance_ID, 						//	Process Instance
						p_Amount, 								//	Parameter Amount
						p_Percentage, 							// 	Parameter Percentage 
						p_ValidFrom, 							//	Valid From
						m_employee.get_ID(),					//	Employee 
						p_IsSimulation, 						//	Simulation
						previousAmt, 							// 	Previous Amount
						m_HR_Attribute.getAmount(),	 			//	New Salary
						previousQty, 							// 	Previous Quantity
						m_HR_Attribute.getQty(),				//	Quantity
						preiousServiceDate, 					// 	Previous Service Date
						m_HR_Attribute.getServiceDate(), 		//	Service Date 
						previousTextMsg, 						// 	Previous Text Msg
						m_HR_Attribute.getTextMsg());			//	Text Msg
			}
		} 
	}


	/**
	 * 	Get Employees of Process
	 * 	@return Array of Business Partners
	 */
	public MBPartner[] getEmployees () {
		List<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//	Yamel Senih 2013-10-12, 17:48:31
		//whereClause.append(" C_BPartner.C_BPartner_ID IN (SELECT e.C_BPartner_ID FROM HR_Employee e WHERE e.IsActive=?");
		//	Just Employee from Organization
		//	AC = Active
		whereClause.append("C_BPartner.EmployeeStatus = 'AC' " +
				"AND EXISTS(SELECT 1 FROM HR_Employee e " +
				"WHERE e.C_BPartner_ID = C_BPartner.C_BPartner_ID " +
				"AND e.IsActive=? "
				);
		//	End Yamel Senih
		// Just active employee
		params.add(true);
		//params.add(p.getAD_Org_ID());
		// Selected Organization
		if (p_AD_Org_ID != 0) {
			whereClause.append(" AND e.AD_Org_ID =? ");
			params.add(p_AD_Org_ID);
		}

		//	Yamel Senih 2014-04-29, 16:52:52
		//	Add Not Payroll Regular
		MHRPayroll payroll = MHRPayroll.get(getCtx(), p_HR_Payroll_ID);
		// This payroll not content periods, NOT IS a Regular Payroll > ogi-cd 28Nov2007
		if(p_HR_Payroll_ID != 0 
				&& !payroll.get_ValueAsBoolean("IsNotRegularPayroll")) {
			whereClause.append(" AND (e.HR_Payroll_ID IS NULL OR e.HR_Payroll_ID=?) " );
			params.add(p_HR_Payroll_ID);
		}
		//	End Yamel Senih

		// Selected Department
		if (p_HR_Department_ID != 0) {
			whereClause.append(" AND e.HR_Department_ID =? ");
			params.add(p_HR_Department_ID);
		}	
		// Selected Job add
		if (p_HR_Job_ID != 0) {
			whereClause.append(" AND e.HR_Job_ID =? ");
			params.add(p_HR_Job_ID);
		}
//		2015-07-23 Dixon Martinez
//		Change requested by Rahiber Paradas
//		Validate that the employee is not withdrawn
		//	Valid From 
		if(p_ValidFrom != null){
			whereClause.append(" AND (e.DateFinish IS NULL OR e.DateFinish > ?)");
			params.add(p_ValidFrom);
		}
//		End Dixon Martinez
		
		whereClause.append(" ) "); // end select from HR_Employee

		// Selected Employee
		if (p_C_BPartner_ID != 0){
			whereClause.append(" AND C_BPartner_ID =? ");
			params.add(p_C_BPartner_ID);
		}
		//	Get Records
		List<MBPartner> list = new Query(getCtx(), MBPartner.Table_Name, whereClause.toString(), get_TrxName())
		.setParameters(params)
		.setOnlyActiveRecords(true)
		.setOrderBy(X_C_BPartner.COLUMNNAME_Name)
		.list();

		return list.toArray(new MBPartner[list.size()]);
	}	//	getEmployees

}
