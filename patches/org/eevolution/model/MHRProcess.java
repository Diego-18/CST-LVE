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
 * Copyright (C) 2003-2007 e-Evolution,SC. All Rights Reserved.               *
 * Contributor(s): Victor Perez www.e-evolution.com                           *
 *****************************************************************************/
package org.eevolution.model;

import java.io.File;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.I_AD_User;
import org.compiere.model.MBPartner;
import org.compiere.model.MCurrency;
import org.compiere.model.MDocType;
import org.compiere.model.MFactAcct;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPeriod;
import org.compiere.model.MPeriodControl;
import org.compiere.model.MProduct;
import org.compiere.model.MRefList;
import org.compiere.model.MRule;
import org.compiere.model.MUOM;
import org.compiere.model.MUser;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.model.Scriptlet;
import org.compiere.model.X_AD_User;
import org.compiere.print.ReportEngine;
import org.compiere.process.DocAction;
import org.compiere.process.DocumentEngine;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Language;
import org.compiere.util.Msg;
import org.compiere.util.TimeUtil;
import org.spin.model.MLVEHRBPMeasures;
import org.spin.model.MLVEHRLoanDefinition;
import org.spin.model.MLVEHRPCombination;
import org.spin.model.MLVEHRProvision;
import org.spin.model.MLVEHRProvisionType;
import org.spin.util.FactorMovement;

/**
 * HR Process Model
 *
 *  @author oscar.gomez@e-evolution.com, e-Evolution http://www.e-evolution.com
 *			<li> Original contributor of Payroll Functionality
 *  @author victor.perez@e-evolution.com, e-Evolution http://www.e-evolution.com
 * 			<li> FR [ 2520591 ] Support multiples calendar for Org 
 *			@see http://sourceforge.net/tracker2/?func=detail&atid=879335&aid=2520591&group_id=176962
 * @author Cristina Ghita, www.arhipac.ro
 */
public class MHRProcess extends X_HR_Process implements DocAction
{
	

	/**
	 * 
	 */
	private static final long serialVersionUID = -8553627333715790110L;
	
	public int m_C_BPartner_ID = 0;
	public int m_AD_User_ID = 0;
	public int m_HR_Concept_ID = 0;
	public int m_HR_Payroll_ID = 0;
	public int m_HR_Department_ID = 0;
	public int m_HR_Job_ID = 0;
	public String m_columnType   = "";
	public Timestamp m_dateFrom;
	public Timestamp m_dateTo;
	//	Yamel Senih Employee Valid From and To
	private Timestamp m_E_VFrom = null;
	private Timestamp m_E_VTo = null;
	//	End Yamel Senih
	/** HR_Concept_ID->MHRMovement */
	public Hashtable<Integer, MHRMovement> m_movement = new Hashtable<Integer, MHRMovement>();
	public MHRPayrollConcept[] linesConcept;
	//	Yamel Senih Payroll Value
	private String 		m_PayrollValue = null;
	private int 		m_C_Activity_ID = 0;
	private BigDecimal 	m_SSDiscountRate = null;
	private BigDecimal 	m_SSClientDiscountRate = null;
	private int 		m_Precision = 0;
	//	EndYamel Senih
	/** The employee being processed */
	private MHREmployee m_employee;
	/** the context for rules */
	HashMap<String, Object> m_scriptCtx = new HashMap<String, Object>();
	/* stack of concepts executing rules - to check loop in recursion */
	private List<MHRConcept> activeConceptRule = new ArrayList<MHRConcept>();

	/**	Static Logger	*/
	private static CLogger	s_log	= CLogger.getCLogger (MHRProcess.class);
	public static final String CONCEPT_PP_COST_COLLECTOR_LABOR = "PP_COST_COLLECTOR_LABOR"; // HARDCODED
	Object m_description = null;

	private static StringBuffer s_scriptImport = new StringBuffer(	 " import org.eevolution.model.*;" 
			+" import org.compiere.model.*;"
			+" import org.adempiere.model.*;"
			+" import org.compiere.util.*;"
			+" import java.math.*;"
			+" import java.sql.*;" 
			+" import java.util.*;" 
			+" import org.spin.model.*;" 
			+" import org.spin.util.*;");

	public static void addScriptImportPackage(String packageName)
	{
		s_scriptImport.append(" import ").append(packageName).append(";");
	}

	/**************************************************************************
	 *  Default Constructor
	 *  @param ctx context
	 *  @param  HR_Process_ID    To load, (0 create new order)
	 */
	public MHRProcess(Properties ctx, int HR_Process_ID, String trxName) 
	{
		super(ctx, HR_Process_ID,trxName);
		if (HR_Process_ID == 0)
		{
			setDocStatus(DOCSTATUS_Drafted);
			setDocAction(DOCACTION_Prepare);
			setC_DocType_ID(0);
			set_ValueNoCheck ("DocumentNo", null);
			setProcessed(false);
			setProcessing(false);
			setPosted(false);
			setHR_Department_ID(0);
			setC_BPartner_ID(0);
		}
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 */
	public MHRProcess(Properties ctx, ResultSet rs, String trxName) 
	{
		super(ctx, rs,trxName);
	}	//	MHRProcess

	@Override
	public final void setProcessed(boolean processed)
	{
		super.setProcessed(processed);
		if (get_ID() <= 0)
		{
			return;
		}
		final String sql = "UPDATE HR_Process SET Processed=? WHERE HR_Process_ID=?";
		DB.executeUpdateEx(sql, new Object[]{processed, get_ID()}, get_TrxName());
	}	//	setProcessed

	@Override
	protected boolean beforeSave(boolean newRecord)
	{
		if (getAD_Client_ID() == 0)
		{
			throw new AdempiereException("@AD_Client_ID@ = 0");
		}
		if (getAD_Org_ID() == 0)
		{
			int context_AD_Org_ID = getAD_Org_ID();
			if (context_AD_Org_ID == 0)
			{
				throw new AdempiereException("@AD_Org_ID@ = *");
			}
			setAD_Org_ID(context_AD_Org_ID);
			log.warning("Changed Org to Context=" + context_AD_Org_ID);
		}
		setC_DocType_ID(getC_DocTypeTarget_ID());

		return true;
	}       
	
	/**
	 * 	Process document
	 *	@param processAction document action
	 *	@return true if performed
	 */
	public boolean processIt(String processAction) 
	{
		DocumentEngine engine = new DocumentEngine(this, getDocStatus());
		return engine.processIt(processAction, getDocAction());
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
		setProcessing(false);
		return true;
	}	//	unlockIt


	/**
	 * 	Invalidate Document
	 * 	@return true if success
	 */
	public boolean invalidateIt() 
	{
		log.info("invalidateIt - " + toString());
		setDocAction(DOCACTION_Prepare);
		return true;
	}	//	invalidateIt


	/**************************************************************************
	 *	Prepare Document
	 * 	@return new status (In Progress or Invalid)
	 */
	public String prepareIt()
	{
		log.info("prepareIt - " + toString());

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
		{
			return DocAction.STATUS_Invalid;
		}

		//	Std Period open?
		//	Yamel Senih 2014-07-14, 15:04:39
		//	Change Period for DateAcct
		//MHRPeriod period = MHRPeriod.get(getCtx(), getHR_Period_ID());
		MPeriod.testPeriodOpen(getCtx(), getDateAcct(), getC_DocTypeTarget_ID(), getAD_Org_ID());
		//	End Yamel Senih
		//	New or in Progress/Invalid
		if (   DOCSTATUS_Drafted.equals(getDocStatus()) 
				|| DOCSTATUS_InProgress.equals(getDocStatus())
				|| DOCSTATUS_Invalid.equals(getDocStatus()) 
				|| getC_DocType_ID() == 0)
		{
			setC_DocType_ID(getC_DocTypeTarget_ID()); 
		}
		try 
		{
			createMovements();
		} 
		catch (Exception e) 
		{
			throw new AdempiereException(e);
		}
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		//
		m_justPrepared = true;
		if (!DOCACTION_Complete.equals(getDocAction()))
			setDocAction(DOCACTION_Complete);
		return DocAction.STATUS_InProgress;
	}	//	prepareIt


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

		//	User Validation
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (m_processMsg != null)
		{
			return DocAction.STATUS_Invalid;
		}
		//
		setProcessed(true);	
		setDocAction(DOCACTION_Close);
		return DocAction.STATUS_Completed;
	}	//	completeIt

	/**
	 * 	Approve Document
	 * 	@return true if success
	 */
	public boolean  approveIt() {
		return true;
	}	//	approveIt


	/**
	 * 	Reject Approval
	 * 	@return true if success
	 */
	public boolean rejectIt() {
		log.info("rejectIt - " + toString());
		return true;
	}	//	rejectIt

	/**
	 * 	Post Document - nothing
	 * 	@return true if success
	 */
	public boolean postIt() {
		log.info("postIt - " + toString());
		return false;
	}	//	postIt


	/**
	* Void Document.
	* Set Movement Line Amount to 0
	* @return true if success
	*/
	public boolean voidIt() 
	{

	log.info("voidIt - " + toString());
	// Before Void
	m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_VOID);
	if (m_processMsg != null)
		return false;



	if (DOCSTATUS_Closed.equals(getDocStatus())
	|| DOCSTATUS_Reversed.equals(getDocStatus())
	|| DOCSTATUS_Voided.equals(getDocStatus()))
	{
		m_processMsg = "Document Closed: " + getDocStatus();
		return false;
	}

	//		Not Processed
	if (DOCSTATUS_Drafted.equals(getDocStatus())
	|| DOCSTATUS_Invalid.equals(getDocStatus())
	|| DOCSTATUS_InProgress.equals(getDocStatus())
	|| DOCSTATUS_Approved.equals(getDocStatus())
	|| DOCSTATUS_NotApproved.equals(getDocStatus()) )
	{
		//Set lines to 0
		List<MHRMovement> lines = MHRMovement.getLinesForProcess(this);
		for (MHRMovement movement : lines)
		{
	
			BigDecimal oldAmount = movement.getAmount();
	
			if (oldAmount.signum() != 0)
		
			{	
				movement.setAmount(Env.ZERO);
				movement.setDescription("Void (" + oldAmount + ")");
				movement.save(get_TrxName());
			}
		}
		//
		setProcessed(true);
		setDocStatus(DOCSTATUS_Voided); // need to set & save docstatus to be able to check it in MHRProcess.voidIt()
		saveEx();
	}
	else
	{
		return reverseCorrectIt();
	}
	// After Void
	m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_VOID);
	if (m_processMsg != null)
		return false;

	return true;
	}	//	voidIt


	/**
	 * 	Close Document.
	 * 	Cancel not delivered Qunatities
	 * 	@return true if success 
	 */
	public boolean closeIt()
	{
		if (isProcessed())
		{
			log.info(toString());
			
			// Before Close
			m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_CLOSE);
			if (m_processMsg != null)
				return false;
			
			setProcessed(true);
			setDocAction(DOCACTION_None);
			
			// After Close
			m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_CLOSE);
			if (m_processMsg != null)
				return false;
				
			return true;	

		}     	
		return false;
	}	//	closeIt


	/**
	 * 	Reverse Correction - same void
	 * 	@return true if success
	 */
	public boolean reverseCorrectIt() {
		log.info("reverseCorrectIt - " + toString());
		// Before reverseCorrect
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REVERSECORRECT);
		if (m_processMsg != null)
			return false;

		MPeriod.testPeriodOpen(getCtx(), getDateAcct(), MPeriodControl.DOCBASETYPE_Payroll, getAD_Org_ID());
		
		MHRProcess reversal = copyFrom (this, getDateAcct(), getC_DocType_ID(), false, get_TrxName(), true);
		if (reversal == null)
		{
			m_processMsg = "Could not create Payroll Process Reversal";
			return false;
		}
		reversal.setReversal_ID(getHR_Process_ID());
		reversal.setProcessing (false);
		reversal.setDocStatus(DOCSTATUS_Reversed);
		reversal.setDocAction(DOCACTION_None);
		reversal.setProcessed(true);
		reversal.setName("("+reversal.getDocumentNo()+" -> "+getDocumentNo()+")");
		reversal.saveEx(get_TrxName());
		
		m_processMsg = reversal.getDocumentNo();
		setProcessed(true);
		setReversal_ID(reversal.getHR_Process_ID());
		setDocStatus(DOCSTATUS_Reversed);	//	may come from void
		setDocAction(DOCACTION_None);
		setProcessed(true);
		setDocAction(DOCACTION_None);
		setName("(" + getName() + " <- "+reversal.getDocumentNo() + ")");
		saveEx();

		// After reverseCorrect
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REVERSECORRECT);
		if (m_processMsg != null)
			return false;
		
				return true;
	}			
	//	reverseCorrectionIt


	/**
	 * 	Reverse Accrual - none
	 * 	@return true if success
	 */
	public boolean reverseAccrualIt() {
		log.info("reverseAccrualIt - " + toString());
		// Before reverseAccrual
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REVERSEACCRUAL);
		if (m_processMsg != null)
			return false;
		
		// After reverseAccrual
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REVERSEACCRUAL);
		if (m_processMsg != null)
			return false;
		
		return false;
	}	//	reverseAccrualIt


	/**
	 * 	Re-activate.
	 * 	@return true if success
	 */
	public boolean reActivateIt() {
		log.info("reActivateIt - " + toString());

		// Before reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REACTIVATE);
		if (m_processMsg != null)
			return false;
		
		//	Can we delete posting
		MPeriod.testPeriodOpen(getCtx(), getDateAcct(), MPeriodControl.DOCBASETYPE_Payroll, getAD_Org_ID());

		//	Delete 
		String sql = "DELETE FROM HR_Movement WHERE HR_Process_ID =" + this.getHR_Process_ID() + " AND IsManual = 'N'" ;
		int no = DB.executeUpdateEx(sql, get_TrxName());
		log.fine("HR_Process deleted #" + no);

		//	Delete Posting
		no = MFactAcct.deleteEx(MHRProcess.Table_ID, getHR_Process_ID(), get_TrxName());
		log.fine("Fact_Acct deleted #" + no);

		setDocAction(DOCACTION_Complete);
		setProcessed(false);
				
		// After reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REACTIVATE);
		if (m_processMsg != null)
			return false;

		return true;
	}	//	reActivateIt


	/**
	 * 	Get Document Owner (Responsible)
	 *	@return AD_User_ID
	 */
	public int getDoc_User_ID() {
		return 0;
	}	//	getDoc_User_ID


	/**
	 * 	Get Document Approval Amount
	 *	@return amount
	 */
	public java.math.BigDecimal getApprovalAmt() 
	{
		return BigDecimal.ZERO;
	}	//	getApprovalAmt

	/**
	 * 
	 */
	public int getC_Currency_ID() 
	{
		return 0;
	}

	public String getProcessMsg() 
	{
		return m_processMsg;
	}

	public String getSummary()
	{
		return "";
	}

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
		ReportEngine re = ReportEngine.get (getCtx(), ReportEngine.ORDER, 0);
		if (re == null)
			return null;
		return re.getPDF(file);
	}	//	createPDF

	/**
	 * 	Get Document Info
	 *	@return document info (untranslated)
	 */
	public String getDocumentInfo()
	{
		org.compiere.model.MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());
		return dt.getName() + " " + getDocumentNo();
	}	//	getDocumentInfo


	/**
	 * 	Get Lines
	 *	@param requery requery
	 *	@return lines
	 */
	public MHRMovement[] getLines (boolean requery)
	{
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		// For HR_Process:
		whereClause.append(MHRMovement.COLUMNNAME_HR_Process_ID+"=?");
		params.add(getHR_Process_ID());
		// With Qty or Amounts
		whereClause.append("AND (Qty <> 0 OR Amount <> 0)"); // TODO: it's really needed ?
		// Only Active Concepts
		whereClause.append(" AND EXISTS(SELECT 1 FROM HR_Concept c WHERE c.HR_Concept_ID=HR_Movement.HR_Concept_ID"
				+" AND c.IsActive=?"
				+" AND c.AccountSign<>?)"); // TODO : why ?
		params.add(true);
		params.add(MHRConcept.ACCOUNTSIGN_Natural); // TODO : why ?
		// Concepts with accounting
		whereClause.append(" AND EXISTS(SELECT 1 FROM HR_Concept_Acct ca WHERE ca.HR_Concept_ID=HR_Movement.HR_Concept_ID"
				+" AND ca.IsActive=? AND ca.IsBalancing<>?)");
		params.add(true);
		params.add(true);
		// BPartner field is filled
		whereClause.append(" AND C_BPartner_ID IS NOT NULL");
		//
		// ORDER BY
		StringBuffer orderByClause = new StringBuffer();
		orderByClause.append("(SELECT bp.C_BP_Group_ID FROM C_BPartner bp WHERE bp.C_BPartner_ID=HR_Movement.C_BPartner_ID)");
		//
		List<MHRMovement> list = new Query (getCtx(), MHRMovement.Table_Name, whereClause.toString(), get_TrxName())
		.setParameters(params)
		.setOrderBy(orderByClause.toString())
		.list();
		return list.toArray(new MHRMovement[list.size()]);
	}

	/**
	 * Load HR_Movements and store them in a HR_Concept_ID->MHRMovement hashtable
	 * @param movements hashtable
	 * @param C_PBartner_ID
	 */
	private void loadMovements(Hashtable<Integer,MHRMovement> movements, int C_PBartner_ID)
	{
		final String whereClause = MHRMovement.COLUMNNAME_HR_Process_ID+"=?"
		+" AND "+MHRMovement.COLUMNNAME_C_BPartner_ID+"=?";
		List<MHRMovement> list = new Query(getCtx(), MHRMovement.Table_Name, whereClause, get_TrxName())
		.setParameters(new Object[]{getHR_Process_ID(), C_PBartner_ID})
		.list();
		for (MHRMovement mvm : list)
		{
			if(movements.containsKey(mvm.getHR_Concept_ID()))
			{
				MHRMovement lastM = movements.get(mvm.getHR_Concept_ID());
				String columntype = lastM.getColumnType();
				if (columntype.equals(MHRConcept.COLUMNTYPE_Amount))
				{
					mvm.addAmount(lastM.getAmount());
				}
				else if (columntype.equals(MHRConcept.COLUMNTYPE_Quantity))
				{
					mvm.addQty(lastM.getQty());
				}
			}
			movements.put(mvm.getHR_Concept_ID(), mvm);
		}
	}

	/**
	 * Execute the script
	 * @param AD_Rule_ID
	 * @param string Column Type
	 * @return Object
	 */
	private Object executeScript(int AD_Rule_ID, String columnType)
	{
		MRule rulee = MRule.get(getCtx(), AD_Rule_ID);
		Object result = null;
		m_description = null;
		try
		{
			String text = "";
			if (rulee.getScript() != null)
			{
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
			}
			final String script =
				s_scriptImport.toString()
				+" " + resultType + " result = "+ defValue +";"
				+" String description = null;"
				+ text;
			Scriptlet engine = new Scriptlet (Scriptlet.VARIABLE, script, m_scriptCtx);	
			Exception ex = engine.execute();
			if (ex != null)
			{
				throw ex;
			}
			result = engine.getResult(false);
			m_description = engine.getDescription();
		}
		catch (Exception e)
		{
			throw new AdempiereException("Execution error - @AD_Rule_ID@="+rulee.getValue());
		}
		return result;
	}

	/**
	 * creates movements for concepts related to labor
	 * @param C_BPartner_ID
	 * @param period
	 */
	private void createCostCollectorMovements(int C_BPartner_ID, MHRPeriod period)
	{
		List<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		whereClause.append("EXISTS (SELECT 1 FROM AD_User u WHERE u.AD_User_ID=PP_Cost_Collector.AD_User_ID AND u.C_BPartner_ID=?)");
		params.add(C_BPartner_ID);
		whereClause.append(" AND "+MPPCostCollector.COLUMNNAME_MovementDate + ">=?");
		params.add(period.getStartDate());
		whereClause.append(" AND "+MPPCostCollector.COLUMNNAME_MovementDate + "<=?");
		params.add(period.getEndDate());
		whereClause.append(" AND "+MPPCostCollector.COLUMNNAME_DocStatus + " IN (?,?)");
		params.add(MPPCostCollector.DOCSTATUS_Completed);
		params.add(MPPCostCollector.DOCSTATUS_Closed);

		List<MPPCostCollector> listColector = new Query(getCtx(), MPPCostCollector.Table_Name, 
				whereClause.toString(), get_TrxName())
		.setOnlyActiveRecords(true)
		.setParameters(params)
		.setOrderBy(MPPCostCollector.COLUMNNAME_PP_Cost_Collector_ID+" DESC") 
		.list();


		for (MPPCostCollector cc : listColector)
		{
			createMovementForCC(C_BPartner_ID, cc);
		}
	}

	/**
	 * create movement for cost collector
	 * @param C_BPartner_ID
	 * @param cc
	 * @return
	 */
	private MHRMovement createMovementForCC(int C_BPartner_ID, I_PP_Cost_Collector cc)
	{
		//get the concept that should store the labor
		MHRConcept concept = MHRConcept.forValue(getCtx(), CONCEPT_PP_COST_COLLECTOR_LABOR);

		//get the attribute for specific concept
		List<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		whereClause.append("? >= ValidFrom AND ( ? <= ValidTo OR ValidTo IS NULL)");
		params.add(m_dateFrom);
		params.add(m_dateTo);
		
		if(m_HR_Payroll_ID > 0){
			whereClause.append(" AND (HR_Payroll_ID=? OR HR_Payroll_ID IS NULL)");
			params.add(m_HR_Payroll_ID);
		}
		if(m_HR_Department_ID > 0){
			whereClause.append(" AND (HR_Department_ID=? OR HR_Payroll_ID IS NULL)");
			params.add(m_HR_Department_ID);	}
		if(m_HR_Job_ID > 0){
			whereClause.append(" AND (HR_Job_ID=? OR HR_Job_ID IS NULL)");
			params.add(m_HR_Job_ID);
		}					
		
		whereClause.append(" AND HR_Concept_ID = ? ");
		params.add(concept.get_ID());
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Concept conc WHERE conc.HR_Concept_ID = HR_Attribute.HR_Concept_ID )");
		MHRAttribute att = new Query(getCtx(), MHRAttribute.Table_Name, whereClause.toString(), get_TrxName())
		.setParameters(params)
		.setOnlyActiveRecords(true)
		.setOrderBy(I_HR_Attribute.COLUMNNAME_HR_Payroll_ID + ", " + MHRAttribute.COLUMNNAME_ValidFrom + " DESC")
		.first();
		if (att == null)
		{
			throw new AdempiereException(); // TODO ?? is necessary
		}

		if (MHRConcept.TYPE_RuleEngine.equals(concept.getType()))
		{
			Object result = null;

			m_scriptCtx.put("_CostCollector", cc);
			try
			{
				result = executeScript(att.getAD_Rule_ID(), att.getColumnType());
			}
			finally
			{
				m_scriptCtx.remove("_CostCollector");
			}
			if(result == null)
			{
				// TODO: throw exception ???
				log.warning("Variable (result) is null");
			}

			//get employee
			MHREmployee employee = MHREmployee.getActiveEmployee(getCtx(), C_BPartner_ID, getAD_Org_ID(), get_TrxName());

			//create movement
			MHRMovement mv = new MHRMovement(this, concept);
			mv.setC_BPartner_ID(C_BPartner_ID);
			mv.setAD_Rule_ID(att.getAD_Rule_ID());
			mv.setHR_Job_ID(employee.getHR_Job_ID());
			mv.setHR_Department_ID(employee.getHR_Department_ID());
			mv.setC_Activity_ID(m_C_Activity_ID);
			mv.setValidFrom(m_dateFrom);
			mv.setValidTo(m_dateTo); 
			mv.setPP_Cost_Collector_ID(cc.getPP_Cost_Collector_ID());	
			mv.setIsManual(true);
			mv.setColumnValue(result);
			mv.setProcessed(true);
			mv.saveEx();
			return mv;
		}
		else
		{
			throw new AdempiereException(); //TODO ?? is necessary
		}

	}
	
	/**
	 * create Movements for corresponding process , period
	 */
	private void createMovements() throws Exception
	{
		m_scriptCtx.clear();
		m_scriptCtx.put("process", this);
		m_scriptCtx.put("_Process", getHR_Process_ID());
		m_scriptCtx.put("_Period", getHR_Period_ID());
		m_scriptCtx.put("_Payroll", getHR_Payroll_ID());
		m_scriptCtx.put("_Department", getHR_Department_ID());
		
		log.info("info data - " + " Process: " +getHR_Process_ID()+ ", Period: " +getHR_Period_ID()+ ", Payroll: " +getHR_Payroll_ID()+ ", Department: " +getHR_Department_ID());
		
		MHRPeriod hrPeriod = null;
		
		if (getHR_Period_ID() > 0)
		{
			hrPeriod = MHRPeriod.get(getCtx(), getHR_Period_ID());
		}
		else
		{
			hrPeriod = new MHRPeriod(getCtx() , 0 , get_TrxName());
			
			//MPeriod period = MPeriod.get(getCtx(),  getDateAcct() , getAD_Org_ID());	
			//if(period != null)
			//{
				//hrPeriod.setStartDate(period.getStartDate());
				//hrPeriod.setEndDate(period.getEndDate());
			//}
			//else
			//{
				hrPeriod.setStartDate(getDateAcct());
				hrPeriod.setEndDate(getDateAcct());			
			//}
		}
		//	Get Organization
//		Dixon Martinez 2016-03-09
//		Add support get values SS Discount Rate and SS Client Discount Rate from org info 
//		MOrg org = MOrg.get(getCtx(), getAD_Org_ID());
		MOrgInfo orgInfo = MOrg.get(getCtx(), getAD_Org_ID()).getInfo();
//		m_SSDiscountRate = (BigDecimal) org.get_Value("SSDiscountRate");
//		m_SSClientDiscountRate = (BigDecimal) org.get_Value("SSClientDiscountRate");
		m_SSDiscountRate = (BigDecimal) orgInfo.get_Value("SSDiscountRate");
		m_SSClientDiscountRate = (BigDecimal) orgInfo.get_Value("SSClientDiscountRate");
//		End Dixon Martinez
		if(m_SSDiscountRate == null)
			m_SSDiscountRate = Env.ZERO;
		if(m_SSClientDiscountRate == null)
			m_SSClientDiscountRate = Env.ZERO;
		//	Get Presicion
		m_Precision = MCurrency.getStdPrecision(getCtx(), Env.getContextAsInt(getCtx(), "$C_Currency_ID"));
		//	End
		//	
		m_dateFrom = hrPeriod.getStartDate();
		m_dateTo   = hrPeriod.getEndDate();
		m_scriptCtx.put("_From", m_dateFrom);
		m_scriptCtx.put("_To", m_dateTo);
				
		if(getHR_Payroll_ID() > 0)
		{
			m_HR_Payroll_ID=getHR_Payroll_ID();
		}
		if(getHR_Department_ID() > 0)
		{
			m_HR_Department_ID=getHR_Department_ID();
		}
		if(getHR_Job_ID() > 0)
		{
			m_HR_Job_ID=getHR_Job_ID();	
		}

		// RE-Process, delete movement except concept type Incidence 
		int no = DB.executeUpdateEx("DELETE FROM HR_Movement m WHERE HR_Process_ID=? AND IsManual<>?",
				new Object[]{getHR_Process_ID(), true},
				get_TrxName());
		log.info("HR_Movement deleted #"+ no);

		linesConcept = MHRPayrollConcept.getPayrollConcepts(this);
		//	Yamel Senih 2014-06-04, 21:36:23
		//	Add Payroll Value
		MHRPayroll payroll = MHRPayroll.get(getCtx(), m_HR_Payroll_ID);
		if(payroll != null) {
			m_PayrollValue = payroll.getValue();
			m_scriptCtx.put("_PayrollValue", payroll.getValue());
		}
		//	End Yamel Senih
		MBPartner[] linesEmployee = MHREmployee.getEmployees(this);
		//
		int count = 1;
		long startTime = System.currentTimeMillis();
		for(MBPartner bp : linesEmployee)	//=============================================================== Employee
		{
			long bp_startTime = System.currentTimeMillis();
			log.info("Employee " + count + "  ---------------------- " + bp.getName());
			count++;
			m_C_BPartner_ID = bp.get_ID();

			m_employee = MHREmployee.getActiveEmployee(getCtx(), m_C_BPartner_ID, getAD_Org_ID(), get_TrxName());
			//	Yamel Senih 2014-05-02, 18:06:14
			//	Only Active Employee
			if(m_employee == null)
				continue;
			//	Get Activity
			m_C_Activity_ID = (m_employee.getC_Activity_ID() > 0 
										? m_employee.getC_Activity_ID() 
												: m_employee.getHR_Department().getC_Activity_ID());
			//	Add support to employee attributes
			//	For Department
			if(m_employee.getHR_Department_ID() > 0) {
				m_HR_Department_ID = m_employee.getHR_Department_ID();
			}
			//	For Job
			if(m_employee.getHR_Job_ID() > 0) {
				m_HR_Job_ID = m_employee.getHR_Job_ID();	
			}
			//	End
			//	Get Social Security Discount Rate
			BigDecimal m_SSDiscountRate_E = (BigDecimal) m_employee.get_Value("SSDiscountRate");
			BigDecimal m_SSClientDiscountRate_E = (BigDecimal) m_employee.get_Value("SSClientDiscountRate");
			//	End Yamel Senih
			m_scriptCtx.remove("_DateStart");
			m_scriptCtx.remove("_DateEnd");
			m_scriptCtx.remove("_Days");
			m_scriptCtx.remove("_C_BPartner_ID");
			m_scriptCtx.remove("_SSDiscountRate");
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
			m_scriptCtx.put("_Days", TimeUtil.getDaysBetween(hrPeriod.getStartDate(),hrPeriod.getEndDate()) + 1);
			m_scriptCtx.put("_C_BPartner_ID", bp.getC_BPartner_ID());
			
			//	Yamel Senih 2013-09-24, 16:45:35
			//	Add Business Partner and Employee
			m_scriptCtx.put("_BPartner", bp);
			m_scriptCtx.put("_Employee", m_employee);
			m_scriptCtx.put("_E_HR_Department_ID", m_employee.getHR_Department_ID());
			m_scriptCtx.put("_E_HR_Job_ID", m_employee.getHR_Job_ID());
			m_scriptCtx.put("_SSDiscountRate", (m_SSDiscountRate_E != null && m_SSDiscountRate_E.doubleValue() > 0
													? m_SSDiscountRate_E.doubleValue()
															: m_SSDiscountRate.doubleValue()));
			m_scriptCtx.put("_SSClientDiscountRate", (m_SSClientDiscountRate_E != null && m_SSClientDiscountRate_E.doubleValue() > 0
													? m_SSClientDiscountRate_E.doubleValue()
															: m_SSClientDiscountRate.doubleValue()));
			//	
			if(m_employee.getHR_Payroll_ID() != 0){
				MHRPayroll m_ePayroll = MHRPayroll.get(getCtx(), m_employee.getHR_Payroll_ID());
				m_scriptCtx.put("_E_PValue", m_ePayroll.getValue());
			} else
				m_scriptCtx.put("_E_PValue", null);
			//	Add Valid From and Valid To
			m_E_VFrom = m_dateFrom;
			m_E_VTo = m_dateTo;
			//  Valid Employee Start Date
			if(m_employee.getStartDate() != null && m_dateFrom != null && m_employee.getStartDate().getTime() > m_dateFrom.getTime())
			  m_E_VFrom = m_employee.getStartDate();
			//  Valid Employee End Date
			if(m_employee.getEndDate() != null && m_dateTo != null && m_employee.getEndDate().getTime() < m_dateTo.getTime())
			  m_E_VTo = m_employee.getEndDate();
			//	Add Values to Context
			m_scriptCtx.put("_E_VFrom", m_E_VFrom);
			m_scriptCtx.put("_E_VTo", m_E_VTo);
			//	End Yamel Senih
			if(getHR_Period_ID() > 0)
				createCostCollectorMovements(bp.get_ID(), hrPeriod);

			m_movement.clear();
			loadMovements(m_movement, m_C_BPartner_ID);
			int m_ValidationConcept_ID = payroll.get_ValueAsInt("HR_Concept_ID");
			//	Validation Concept
			if(m_ValidationConcept_ID != 0){
				MHRMovement validMovement = loadConcept(payroll.get_ValueAsInt("HR_Concept_ID"), true);
				//	Valid Concept
				if(validMovement == null
						|| validMovement.isEmpty()) {
					saveMovements();
					continue;
				}
			}
			//
			for(MHRPayrollConcept pc : linesConcept) // ==================================================== Concept
			{
				loadConcept(pc.getHR_Concept_ID(), pc.isPrinted());
			} // concept

			// Save movements:
			saveMovements();
			//	Log with time
			long bp_endTime = System.currentTimeMillis();
			log.warning("***Employee " + bp.getValue() + " - " + bp.getName() + " Time: " + getDifferenceValue(bp_endTime - bp_startTime));
		} // for each employee
		long endTime = System.currentTimeMillis();
		log.warning("***All Time: " + getDifferenceValue(endTime - startTime));
		//
		// Save period & finish
		if(getHR_Period_ID()>0)
		{
			hrPeriod.setProcessed(true);
			hrPeriod.saveEx();
		}
	} // createMovements
	
	/**
	 * Save Movements from Array 
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Sep 7, 2015, 9:40:37 AM
	 * @return void
	 */
	private void saveMovements() {
		for (MHRMovement m: m_movement.values())
		{
			long c_startTime = System.currentTimeMillis();
			MHRConcept c = (MHRConcept) m.getHR_Concept();
			if (c.isManual() || m.isEmpty())
			{	
				log.fine("Skip saving "+m);
			}
			else
			{
				boolean saveThisRecord = c.isSaveInHistoric() || m.isPrinted() || c.isPaid() || c.isPrinted();
				if (saveThisRecord)
					m.saveEx();
			}
			//	
			long c_endTime = System.currentTimeMillis();
			log.warning("***Concept Saving " + c.getValue() + " - " + c.getName() + " Time: " + getDifferenceValue(c_endTime - c_startTime));
		}
	}
	
	/**
	 * Get Duration from milliseconds
	 * @author Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com
	 * @param duration
	 * @return
	 * @return String
	 */
	public static String getDifferenceValue(long duration) {
		//	Get Times
		int hours = (int) ((duration / 1000) / 3600);
		int minutes = (int) (((duration / 1000) / 60) % 60);
		int seconds = (int) ((duration / 1000) % 60);
		//	Show Time
		String time = hours + "| h :" + minutes + "m :" + seconds + "s :" + duration + "ms"; 
		//	Set Last Message
		return time;
	}
	
	/**
	 * Load a Concept
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/04/2014, 08:38:07
	 * @param p_HR_Concept_ID
	 * @param isPrinted
	 * @return
	 * @return MHRMovement
	 */
	private MHRMovement loadConcept(int p_HR_Concept_ID, boolean isPrinted){
		long c_startTime = System.currentTimeMillis();
		//	Valid Concept
		if(p_HR_Concept_ID == 0)
			return null;
		//	
		m_HR_Concept_ID = p_HR_Concept_ID;
		MHRConcept concept = MHRConcept.get(getCtx(), m_HR_Concept_ID);
		boolean printed = isPrinted || concept.isPrinted();
		MHRMovement movement = m_movement.get(concept.get_ID()); // as it's now recursive, it can happen that the concept is already generated
		if (movement == null) {
			movement = createMovementFromConcept(concept, printed);
			movement = m_movement.get(concept.get_ID());
		}
		//	Throw
		if (movement == null)
		{
			throw new AdempiereException("Concept " + concept.getValue() + " not created");
		}
		//	
		long c_endTime = System.currentTimeMillis();
		log.warning("***Concept Loaded " + concept.getValue() + " - " + concept.getName() + " Time: " + getDifferenceValue(c_endTime - c_startTime));
		//	Return
		return movement;
	}

	private MHRMovement createMovementFromConcept(MHRConcept concept,
			boolean printed) {
		log.info("Calculating concept " + concept.getValue());
		m_columnType = concept.getColumnType();

		List<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		whereClause.append("? >= ValidFrom AND ( ? <= ValidTo OR ValidTo IS NULL)");
		params.add(m_dateFrom);
		params.add(m_dateTo);
		whereClause.append(" AND HR_Concept_ID = ? ");
		params.add(concept.getHR_Concept_ID());
		//	Yamel Senih Support to multiple groovy
		if(m_HR_Payroll_ID > 0){
			whereClause.append(" AND (HR_Payroll_ID=? OR HR_Payroll_ID IS NULL)");
			params.add(m_HR_Payroll_ID);
		}
		if(m_HR_Department_ID > 0){
			whereClause.append(" AND (HR_Department_ID=? OR HR_Department_ID IS NULL)");
			params.add(m_HR_Department_ID);	}
		if(m_HR_Job_ID > 0){
			whereClause.append(" AND (HR_Job_ID=? OR HR_Job_ID IS NULL)");
			params.add(m_HR_Job_ID);
		}
		//	End Yamel Senih
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Concept conc WHERE conc.HR_Concept_ID = HR_Attribute.HR_Concept_ID )");

		// Check the concept is within a valid range for the attribute
		if (concept.isEmployee())
		{
			whereClause.append(" AND C_BPartner_ID = ? AND (HR_Employee_ID = ? OR HR_Employee_ID IS NULL)");
			params.add(m_employee.getC_BPartner_ID());
			params.add(m_employee.get_ID());
		}

		MHRAttribute att = new Query(getCtx(), MHRAttribute.Table_Name, whereClause.toString(), get_TrxName())
		.setParameters(params)
		.setOnlyActiveRecords(true)
		.setOrderBy(I_HR_Attribute.COLUMNNAME_HR_Payroll_ID + ", " 
				+ I_HR_Attribute.COLUMNNAME_HR_Department_ID + ", " 
				+ I_HR_Attribute.COLUMNNAME_HR_Job_ID + ", "
				+ MHRAttribute.COLUMNNAME_ValidFrom + " DESC")
		.first();
		if (att == null || concept.isManual())
		{
			log.info("Skip concept "+concept+" - attribute not found");
			MHRMovement dummymov = new MHRMovement (getCtx(), 0, get_TrxName());
			dummymov.setIsManual(true); // to avoid landing on movement table
			m_movement.put(concept.getHR_Concept_ID(), dummymov);
			return dummymov;
		}

		log.info("Concept - " + concept.getName());
		MHRMovement movement = new MHRMovement (getCtx(), 0, get_TrxName());
		movement.setAD_Org_ID(getAD_Org_ID());
		movement.setC_BPartner_ID(m_C_BPartner_ID);
		movement.setHR_Concept_ID(concept.getHR_Concept_ID());
		movement.setHR_Concept_Category_ID(concept.getHR_Concept_Category_ID());
		movement.setHR_Process_ID(getHR_Process_ID());
		movement.setHR_Department_ID(m_employee.getHR_Department_ID());
		movement.setHR_Job_ID(m_employee.getHR_Job_ID());
		movement.setColumnType(m_columnType);
		movement.setAD_Rule_ID(att.getAD_Rule_ID());
		movement.setValidFrom(m_dateFrom);
		movement.setValidTo(m_dateTo);
		movement.setIsPrinted(printed);
		movement.setIsManual(concept.isManual());
		movement.setC_Activity_ID(m_C_Activity_ID);
		//	Yamel Senih 2014-01-30
		//	Add movement to context
		m_scriptCtx.remove("currentMovement");
		m_scriptCtx.put("currentMovement", movement);
		//	End Yamel Senih
		if (MHRConcept.TYPE_RuleEngine.equals(concept.getType()))
		{
			log.info("Executing rule for concept " + concept.getValue());
			if (activeConceptRule.contains(concept)) {
				throw new AdempiereException("Recursion loop detected in concept " + concept.getValue());
			}
			activeConceptRule.add(concept);
			Object result = executeScript(att.getAD_Rule_ID(), att.getColumnType());
			activeConceptRule.remove(concept);
			if (result == null
					&& (!m_columnType.equals(X_HR_Movement.COLUMNTYPE_Date)
							&& m_columnType.equals(X_HR_Movement.COLUMNTYPE_Text)))
			{
				// TODO: throw exception ???
				log.warning("Variable (result) is null");
				return movement;
			}
			movement.setColumnValue(result); // double rounded in MHRMovement.setColumnValue
			if (m_description != null)
				movement.setDescription(m_description.toString());
		}
		else
		{
			movement.setQty(att.getQty()); 
			movement.setAmount(att.getAmount());
			movement.setTextMsg(att.getTextMsg());						
			movement.setServiceDate(att.getServiceDate());
		}
		movement.setProcessed(true);
		m_movement.put(concept.getHR_Concept_ID(), movement);
		return movement;
	}



	// Helper methods -------------------------------------------------------------------------------

	/**
	 * Helper Method : get the value of the concept
	 * @param pconcept
	 * @return
	 */
	public double getConcept (String pconcept)
	{
		MHRConcept concept = MHRConcept.forValue(getCtx(), pconcept.trim());

		if (concept == null)
		{
			return 0; // TODO throw exception ?
		}

		MHRMovement m = m_movement.get(concept.get_ID());
		if (m == null) {
			createMovementFromConcept(concept, concept.isPrinted());
			m = m_movement.get(concept.get_ID());
		}
		if (m == null)
		{
			throw new AdempiereException("Concept " + concept.getValue() + " not created");
		}

		String type = m.getColumnType();
		if (MHRMovement.COLUMNTYPE_Amount.equals(type))
		{
			return m.getAmount().doubleValue();
		}
		else if (MHRMovement.COLUMNTYPE_Quantity.equals(type))
		{
			return m.getQty().doubleValue();
		}
		else
		{
			// TODO: throw exception ?
			return 0;
		}
	} // getConcept
	
	/**
	 * Get Concept from ID
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 22:37:11
	 * @param m_HR_Concept_ID
	 * @return
	 * @return double
	 */
	public double getConcept (int m_HR_Concept_ID) {
		//	
		MHRConcept concept = MHRConcept.get(getCtx(), m_HR_Concept_ID);
		//	
		if (concept == null) {
			return 0; // TODO throw exception ?
		}

		MHRMovement m = m_movement.get(concept.get_ID());
		if (m == null) {
			createMovementFromConcept(concept, concept.isPrinted());
			m = m_movement.get(concept.get_ID());
		}
		if (m == null)
		{
			throw new AdempiereException("Concept " + concept.getValue() + " not created");
		}

		String type = m.getColumnType();
		if (MHRMovement.COLUMNTYPE_Amount.equals(type))
		{
			return m.getAmount().doubleValue();
		}
		else if (MHRMovement.COLUMNTYPE_Quantity.equals(type))
		{
			return m.getQty().doubleValue();
		}
		else
		{
			// TODO: throw exception ?
			return 0;
		}
	} // getConcept

	/**
	 * Helper Method : get the value of the concept string type
	 * @param pconcept
	 * @return String value of concept
	 */
	public String getConceptString (String pconcept)
	{
		MHRConcept concept = MHRConcept.forValue(getCtx(), pconcept.trim());

		if (concept == null)
		{
			return null; // TODO throw exception ?
		}

		MHRMovement m = m_movement.get(concept.get_ID());
		if (m == null) {
			createMovementFromConcept(concept, concept.isPrinted());
			m = m_movement.get(concept.get_ID());
		}

		String type = m.getColumnType();
		if (MHRMovement.COLUMNTYPE_Text.equals(type))
		{
			return m.getTextMsg();
		}
		else
		{
			// TODO: throw exception ?
			return null;
		}
	} // getConceptString

	/**
	 * Helper Method : get the value of the concept date type
	 * @param pconcept
	 * @return Timestamp value of concept
	 */
	public Timestamp getConceptDate (String pconcept)
	{
		MHRConcept concept = MHRConcept.forValue(getCtx(), pconcept.trim());
		if (concept == null)
		{
			return null; // TODO throw exception ?
		}

		MHRMovement m = m_movement.get(concept.get_ID());
		if (m == null) {
			createMovementFromConcept(concept, concept.isPrinted());
			m = m_movement.get(concept.get_ID());
		}
		//	Not null
		if(m != null){
			String type = m.getColumnType();
			if (MHRMovement.COLUMNTYPE_Date.equals(type))
				return m.getServiceDate();
		}
		//	Return null
		return null;
	} // getConceptDate

	/**
	 * Helper Method : sets the value of a concept
	 * @param conceptValue
	 * @param value
	 */
	public void setConcept (String conceptValue, double value)
	{
		try
		{
			MHRConcept c = MHRConcept.forValue(getCtx(), conceptValue); 
			if (c == null)
			{
				return; // TODO throw exception
			}
			MHRMovement m = new MHRMovement(this, c);
			MHREmployee employee = MHREmployee.getActiveEmployee(getCtx(), m_C_BPartner_ID, getAD_Org_ID(), get_TrxName());
			m.setColumnValue(BigDecimal.valueOf(value));
			m.setAD_Org_ID(getAD_Org_ID());
			m.setC_BPartner_ID(m_C_BPartner_ID);
			m.setDescription(Msg.translate(getCtx(), "Added") + " " 
					+ Msg.translate(getCtx(), "from") + " " 
					+ Msg.translate(getCtx(), "AD_Rule_ID"));
			m.setValidFrom(m_dateTo);
			m.setValidTo(m_dateTo);
			
			m.setHR_Department_ID(employee.getHR_Department_ID());
			m.setHR_Job_ID(employee.getHR_Job_ID());
			m.setIsManual(c.isManual());
			m.setC_Activity_ID(employee.getC_Activity_ID() > 0 ?  employee.getC_Activity_ID() : employee.getHR_Department().getC_Activity_ID());		
			m.setProcessed(true);
			
			m.saveEx();
		} 
		catch(Exception e)
		{
			s_log.warning(e.getMessage());
		}
	} // setConcept
	
	/* Helper Method : sets the value of a concept and set if isManual
	* @param conceptValue
	* @param value
	* @param isManual
	*/
	public void setConcept (String conceptValue,double value,boolean isManual)
	{
		try
		{
			MHRConcept c = MHRConcept.forValue(getCtx(), conceptValue); 
			if (c == null)
			{
				return; // TODO throw exception
			}
			MHRMovement m = new MHRMovement(this, c);
			MHREmployee employee = MHREmployee.getActiveEmployee(getCtx(), m_C_BPartner_ID, getAD_Org_ID(), get_TrxName());
			if (c.getColumnType().equals(MHRConcept.COLUMNTYPE_Amount))
				m.setAmount(BigDecimal.valueOf(value));
			else if (c.getColumnType().equals(MHRConcept.COLUMNTYPE_Quantity))
				m.setQty(BigDecimal.valueOf(value));
			else
				return;
			m.setAD_Org_ID(getAD_Org_ID());
			m.setC_BPartner_ID(m_C_BPartner_ID);
			m.setDescription(Msg.translate(getCtx(), "Added") + " " 
					+ Msg.translate(getCtx(), "from") + " " 
					+ Msg.translate(getCtx(), "AD_Rule_ID"));
			m.setValidFrom(m_dateTo);
			m.setValidTo(m_dateTo);
			m.setIsManual(isManual);
			
			m.setHR_Department_ID(employee.getHR_Department_ID());
			m.setHR_Job_ID(employee.getHR_Job_ID());
			m.setIsManual(c.isManual());
			m.setC_Activity_ID(employee.getC_Activity_ID() > 0 ? employee.getC_Activity_ID() : employee.getHR_Department().getC_Activity_ID());	
			m.setProcessed(true);
			
			m.saveEx();
		} 
		catch(Exception e)
		{
			s_log.warning(e.getMessage());
		}
	} // setConcept	
	
	/**
	 * Helper Method : get the sum of the concept values, grouped by the Category
	 * @param pconcept
	 * @return
	 */
	public double getConceptGroup (String pconcept)
	{
		final MHRConceptCategory category = MHRConceptCategory.forValue(getCtx(), pconcept);
		if (category == null)
		{
			return 0.0; // TODO: need to throw exception ?
		}
		//
		double value = 0.0;
		for(MHRPayrollConcept pc : linesConcept)
		{
			MHRConcept con = MHRConcept.get(getCtx(), pc.getHR_Concept_ID());
			if(con.getHR_Concept_Category_ID() == category.get_ID())
			{
				MHRMovement movement = m_movement.get(pc.getHR_Concept_ID());
				if (movement == null) {
					createMovementFromConcept(con, con.isPrinted());
					movement = m_movement.get(con.get_ID());
				}
				else
				{
					String columnType = movement.getColumnType();
					if(MHRConcept.COLUMNTYPE_Amount.equals(columnType))
					{
						value += movement.getAmount().doubleValue();
					}
					else if (MHRConcept.COLUMNTYPE_Quantity.equals(columnType))
					{
						value += movement.getQty().doubleValue();
					}
				}
			}
		}
		return value;
	} // getConceptGroup
	
	/**
	 * Helper Method : returns an integer value that distinguishes the day of the week
	 * @param pconcept
	 * @return integer
	 */
	public int getDayOfWeek(Timestamp pdate){
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(pdate);
		return cal.get(Calendar.DAY_OF_WEEK);		
	}
	/**
	 * Helper Method : Get Concept [get concept to search key ]
	 * @param pList Value List
	 * @param amount Amount to search
	 * @param column Number of column to return (1.......8)
	 * @return The amount corresponding to the designated column 'column'
	 */
	public double getList (String pList, double amount, String columnParam)
	{
		BigDecimal value = Env.ZERO;
		String column = columnParam;
		column = column.toString().length() == 1 ? "Col_"+column : "Amount"+column;
		ArrayList<Object> params = new ArrayList<Object>();
		String sqlList = "SELECT " +column+
			" FROM HR_List l " +
			"INNER JOIN HR_ListVersion lv ON (lv.HR_List_ID=l.HR_List_ID) " +
			"INNER JOIN HR_ListLine ll ON (ll.HR_ListVersion_ID=lv.HR_ListVersion_ID) " +
			"WHERE l.IsActive='Y' AND lv.IsActive='Y' AND ll.IsActive='Y' AND l.Value = ? AND " +
			"l.AD_Client_ID = ? AND " +
			"(? BETWEEN lv.ValidFrom AND lv.ValidTo ) AND " +
			"(? BETWEEN ll.MinValue AND	ll.MaxValue)";
		params.add(pList);
		params.add(getAD_Client_ID());
		params.add(m_dateFrom);
		params.add(BigDecimal.valueOf(amount));

		value = DB.getSQLValueBDEx(get_TrxName(),sqlList,params);
		//
		if (value == null) {
			//throw new IllegalStateException("getList Out of Range");
			return 0.0;
		}
		return value.doubleValue();
	} // getList

	/**
	 * 	Helper Method : Get Attribute [get Attribute to search key concept ]
	 *  @param conceptValue
	 *  @return ServiceDate
	 */ 
	public Timestamp getAttributeDate (String conceptValue)
	{
		MHRConcept concept = MHRConcept.forValue(getCtx(), conceptValue);
		if (concept == null)
			return null;

		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//check client
		whereClause.append("AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Concept c WHERE c.HR_Concept_ID=HR_Attribute.HR_Concept_ID" 
				+ " AND c.Value = ?)");
		params.add(conceptValue);
		//
		if (!concept.getType().equals(MHRConcept.TYPE_Information))
		{
			whereClause.append(" AND " + MHRAttribute.COLUMNNAME_C_BPartner_ID + " = ?");
			params.add(m_C_BPartner_ID);
		}

		MHRAttribute attribute = new Query(getCtx(), MHRAttribute.Table_Name, whereClause.toString(), get_TrxName())
		.setParameters(params)
		.setOrderBy(I_HR_Attribute.COLUMNNAME_HR_Payroll_ID + ", " + MHRAttribute.COLUMNNAME_ValidFrom + " DESC")
		.first();
		if (attribute == null)
			return null;

		return attribute.getServiceDate();
	} // getAttributeDate

	/**
	 * 	Helper Method : Get Attribute [get Attribute to search key concept ]
	 *  @param conceptValue
	 *  @return TextMsg
	 */ 
	public String getAttributeString (String conceptValue)
	{
		MHRConcept concept = MHRConcept.forValue(getCtx(), conceptValue);
		if (concept == null)
			return null;

		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//check client
		whereClause.append("AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Concept c WHERE c.HR_Concept_ID=HR_Attribute.HR_Concept_ID" 
				+ " AND c.Value = ?)");
		params.add(conceptValue);
		//
		if (!concept.getType().equals(MHRConcept.TYPE_Information))
		{
			whereClause.append(" AND " + MHRAttribute.COLUMNNAME_C_BPartner_ID + " = ?");
			params.add(m_C_BPartner_ID);
		}

		MHRAttribute attribute = new Query(getCtx(), MHRAttribute.Table_Name, whereClause.toString(), get_TrxName())
		.setParameters(params)
		.setOrderBy(I_HR_Attribute.COLUMNNAME_HR_Payroll_ID + ", " + MHRAttribute.COLUMNNAME_ValidFrom + " DESC")
		.first();
		if (attribute == null)
			return null;

		return attribute.getTextMsg();
	} // getAttributeString

	/**
	 * 	Helper Method : Get the number of days between start and end, in Timestamp format
	 *  @param date1 
	 *  @param date2
	 *  @return no. of days
	 */ 
	public int getDays (Timestamp date1, Timestamp date2)
	{		
		// adds one for the last day
		return org.compiere.util.TimeUtil.getDaysBetween(date1,date2) + 1;
	} // getDays


	/**
	 * 	Helper Method : Get the number of days between start and end, in String format
	 *  @param date1 
	 *  @param date2
	 *  @return no. of days
	 */  
	public  int getDays (String date1, String date2)
	{		
		Timestamp dat1 = Timestamp.valueOf(date1);
		Timestamp dat2 = Timestamp.valueOf(date2);
		return getDays(dat1, dat2);
	}  // getDays

	/**
	 * 	Helper Method : Get Months, Date in Format Timestamp
	 *  @param start
	 *  @param end
	 *  @return no. of month between two dates
	 */ 
	public int getMonthsOld(Timestamp startParam, Timestamp endParam)
	{
		boolean negative = false;
		Timestamp start = startParam;
		Timestamp end = endParam;
		if (end.before(start))
		{
			negative = true;
			Timestamp temp = start;
			start = end;
			end = temp;
		}

		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(start);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		GregorianCalendar calEnd = new GregorianCalendar();

		calEnd.setTime(end);
		calEnd.set(Calendar.HOUR_OF_DAY, 0);
		calEnd.set(Calendar.MINUTE, 0);
		calEnd.set(Calendar.SECOND, 0);
		calEnd.set(Calendar.MILLISECOND, 0);

		if (cal.get(Calendar.YEAR) == calEnd.get(Calendar.YEAR))
		{
			int months = 0;
			if (negative) {
				months = (calEnd.get(Calendar.MONTH) - cal.get(Calendar.MONTH)) * -1;
				if(((calEnd.get(Calendar.DAY_OF_MONTH) - cal.get(Calendar.DAY_OF_MONTH)) * -1) < 0)
					months--;
			} else {
				months = calEnd.get(Calendar.MONTH) - cal.get(Calendar.MONTH);
				if(calEnd.get(Calendar.DAY_OF_MONTH) - cal.get(Calendar.DAY_OF_MONTH) < 0)
					months--;
			}
			//	Return Months
			return months;
		}

		//	not very efficient, but correct
		int counter = 0;
		while (calEnd.after(cal))
		{
			cal.add (Calendar.MONTH, 1);
			counter++;
		}
		if (negative) {
			counter *= -1;
			if(((calEnd.get(Calendar.DAY_OF_MONTH) - cal.get(Calendar.DAY_OF_MONTH)) * -1) < 0)
				counter --;
		} else {
			if(calEnd.get(Calendar.DAY_OF_MONTH) - cal.get(Calendar.DAY_OF_MONTH) < 0)
				counter--;
		}
		return counter;
	} // getMonths
	
	/**
	 * Get Months
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 04/09/2014, 16:58:49
	 * @param startParam
	 * @param endParam
	 * @return
	 * @return int
	 */
	public int getMonths(Timestamp startParam, Timestamp endParam) {
		boolean negative = false;
		Timestamp start = startParam;
		Timestamp end = endParam;
		if (end.before(start))
		{
			negative = true;
			Timestamp temp = start;
			start = end;
			end = temp;
		}

		GregorianCalendar cal = new GregorianCalendar();
		cal.setTime(start);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		GregorianCalendar calEnd = new GregorianCalendar();

		calEnd.setTime(end);
		calEnd.set(Calendar.HOUR_OF_DAY, 0);
		calEnd.set(Calendar.MINUTE, 0);
		calEnd.set(Calendar.SECOND, 0);
		calEnd.set(Calendar.MILLISECOND, 0);

		if (cal.get(Calendar.YEAR) == calEnd.get(Calendar.YEAR))
		{
			int months = 0;
			if (negative) {
				months = (calEnd.get(Calendar.MONTH) - cal.get(Calendar.MONTH)) * -1;
				if(((calEnd.get(Calendar.DAY_OF_MONTH) - cal.get(Calendar.DAY_OF_MONTH)) * -1) < 0)
					months--;
			} else {
				months = calEnd.get(Calendar.MONTH) - cal.get(Calendar.MONTH);
				if(calEnd.get(Calendar.DAY_OF_MONTH) - cal.get(Calendar.DAY_OF_MONTH) < 0)
					months--;
			}
			//	Return Months
			return months;
		}

		//	not very efficient, but correct
		int counter = 0;
		while (calEnd.after(cal)) {
			cal.add (Calendar.MONTH, 1);
			counter++;
			//	Yamel Senih 2014-09-04, 17:15:35
			//	Add Break on equals values
			if(calEnd.get(Calendar.MONTH) == cal.get(Calendar.MONTH))
				break;
			//	End Yamel Senih
		}
		if (negative) {
			counter *= -1;
			if(((calEnd.get(Calendar.DAY_OF_MONTH) - cal.get(Calendar.DAY_OF_MONTH)) * -1) < 0)
				counter --;
		} else {
			if(calEnd.get(Calendar.DAY_OF_MONTH) - cal.get(Calendar.DAY_OF_MONTH) < 0)
				counter--;
		}
		return counter;
	} // getMonths

	/**
	 * Is Month Last Week
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 17/07/2014, 15:44:17
	 * @param date
	 * @return
	 * @return boolean
	 */
	public boolean isMonthLastWeek(Timestamp date) {
		if(date == null)
			return false;
		//	
		GregorianCalendar cal = new GregorianCalendar();
		cal.setTimeInMillis(date.getTime());
		//	Set to Zero Hours...
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		//	Get Current Day
		int currentDay = cal.get(Calendar.DAY_OF_MONTH);
		//	Set to last day
		cal.set(Calendar.DAY_OF_MONTH, cal.getMaximum(Calendar.DAY_OF_MONTH));
		//	Get Month Last Day
		int monthLastDay = cal.get(Calendar.DAY_OF_MONTH);
		//	Return
		return (monthLastDay - currentDay) < 7;
	} // 
	

	/**
	 * Helper Method : Concept for a range from-to in periods.
	 * Periods with values of 0 -1 1, etc. actual previous one period, next period
	 * 0 corresponds to actual period.
	 * @param conceptValue concept key(value)
	 * @param periodFrom the search is done by the period value, it helps to search from previous years
	 * @param periodTo
	 */
	public double getConcept (String conceptValue, int periodFrom, int periodTo)
	{
		return getConcept(conceptValue, null, periodFrom,periodTo);
	} // getConcept

	/**
	 *  Helper Method : Concept by range from-to in periods from a different payroll
	 *  periods with values 0 -1 1, etc. actual previous one period, next period
	 *  0 corresponds to actual period
	 *  @param conceptValue 
	 *  @param pFrom 
	 *  @param pTo the search is done by the period value, it helps to search from previous years
	 *  @param payrollValue is the value of the payroll.
	 */
	public double getConcept(String conceptValue, String payrollValue,int periodFrom,int periodTo)
	{
		int payroll_id;
		if (payrollValue == null)
		{
			payroll_id = getHR_Payroll_ID();
		}
		else
		{
			MHRPayroll payroll = MHRPayroll.forValue(getCtx(), payrollValue);
			if(payroll == null)
				return 0.0;
			//	
			payroll_id = payroll.get_ID();
		}

		MHRConcept concept = MHRConcept.forValue(getCtx(), conceptValue);
		if (concept == null)
			return 0.0;
		//
		// Detect field name
		final String fieldName;
		if (MHRConcept.COLUMNTYPE_Quantity.equals(concept.getColumnType()))
		{
			fieldName = MHRMovement.COLUMNNAME_Qty;
		}
		else if (MHRConcept.COLUMNTYPE_Amount.equals(concept.getColumnType()))
		{
			fieldName = MHRMovement.COLUMNNAME_Amount;
		}
		else
		{
			return 0; // TODO: throw exception?
		}
		//
		MHRPeriod p = MHRPeriod.get(getCtx(), getHR_Period_ID());
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//check client
		whereClause.append("AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_HR_Concept_ID + "=?");
		params.add(concept.get_ID());
		//check partner
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_C_BPartner_ID  + "=?");
		params.add(m_C_BPartner_ID);
		//
		//check process and payroll
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Process p"
				//+" INNER JOIN HR_Period pr ON (pr.HR_Period_id=p.HR_Period_ID)"
				+" WHERE HR_Movement.HR_Process_ID = p.HR_Process_ID" 
				+" AND p.HR_Payroll_ID=?");

		params.add(payroll_id);
		if (periodFrom < 0)
		{
			whereClause.append(" AND pr.PeriodNo >= ?");
			params.add(p.getPeriodNo() +periodFrom);
		}
		if (periodTo > 0)
		{
			whereClause.append(" AND pr.PeriodNo <= ?");
			params.add(p.getPeriodNo() +periodTo);
		}
		whereClause.append(")");
		//
		StringBuffer sql = new StringBuffer("SELECT COALESCE(SUM(").append(fieldName).append("),0) FROM ").append(MHRMovement.Table_Name)
		.append(" WHERE ").append(whereClause);
		BigDecimal value = DB.getSQLValueBDEx(get_TrxName(), sql.toString(), params);
		return value.doubleValue();

	} // getConcept

	/**
	 * Helper Method: gets Concept value of a payrroll between 2 dates
	 * @param pConcept
	 * @param pPayrroll
	 * @param from
	 * @param to
	 * */
	public double getConcept (String conceptValue, String payrollValue,Timestamp from,Timestamp to)
	{
		int payroll_id;
		if (payrollValue == null)
		{
			payroll_id = getHR_Payroll_ID();
		}
		else
		{
			MHRPayroll payroll = MHRPayroll.forValue(getCtx(), payrollValue);
			if(payroll == null)
				return 0.0;
			//	
			payroll_id = payroll.get_ID();
		}
		
		MHRConcept concept = MHRConcept.forValue(getCtx(), conceptValue);
		if (concept == null)
			return 0.0;
		//
		// Detect field name
		final String fieldName;
		if (MHRConcept.COLUMNTYPE_Quantity.equals(concept.getColumnType()))
		{
			fieldName = MHRMovement.COLUMNNAME_Qty;
		}
		else if (MHRConcept.COLUMNTYPE_Amount.equals(concept.getColumnType()))
		{
			fieldName = MHRMovement.COLUMNNAME_Amount;
		}
		else
		{
			return 0; // TODO: throw exception?
		}
		//
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//check client
		whereClause.append("AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_HR_Concept_ID + "=?");
		params.add(concept.get_ID());
		//check partner
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_C_BPartner_ID  + "=?");
		params.add(m_C_BPartner_ID);
		//Adding dates 
		whereClause.append(" AND validTo BETWEEN ? AND ?");
		params.add(from);
		params.add(to);
		//
		//check process and payroll
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Process p"
							//+" INNER JOIN HR_Period pr ON (pr.HR_Period_id=p.HR_Period_ID)"
							+" WHERE HR_Movement.HR_Process_ID = p.HR_Process_ID"
							+" AND p.HR_Payroll_ID=? AND p.DocStatus IN('CO', 'CL')");

		params.add(payroll_id);
		
		whereClause.append(")");
		//
		StringBuffer sql = new StringBuffer("SELECT COALESCE(SUM(").append(fieldName).append("),0) FROM ").append(MHRMovement.Table_Name)
								.append(" WHERE ").append(whereClause);
		BigDecimal value = DB.getSQLValueBDEx(get_TrxName(), sql.toString(), params);
		return value.doubleValue();
		
	} // getConcept
	
	/**
	 * Get concept with ID
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 22:46:07
	 * @param m_HR_Concept_ID
	 * @param payrollValue
	 * @param from
	 * @param to
	 * @return
	 * @return double
	 */
	public double getConcept (int m_HR_Concept_ID, String payrollValue,Timestamp from,Timestamp to)
	{
		int payroll_id;
		if (payrollValue == null)
		{
			payroll_id = getHR_Payroll_ID();
		}
		else
		{
			MHRPayroll payroll = MHRPayroll.forValue(getCtx(), payrollValue);
			if(payroll == null)
				return 0.0;
			//	
			payroll_id = payroll.get_ID();
		}
		
		MHRConcept concept = MHRConcept.get(getCtx(), m_HR_Concept_ID);
		if (concept == null)
			return 0.0;
		//
		// Detect field name
		final String fieldName;
		if (MHRConcept.COLUMNTYPE_Quantity.equals(concept.getColumnType()))
		{
			fieldName = MHRMovement.COLUMNNAME_Qty;
		}
		else if (MHRConcept.COLUMNTYPE_Amount.equals(concept.getColumnType()))
		{
			fieldName = MHRMovement.COLUMNNAME_Amount;
		}
		else
		{
			return 0; // TODO: throw exception?
		}
		//
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//check client
		whereClause.append("AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_HR_Concept_ID + "=?");
		params.add(concept.get_ID());
		//check partner
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_C_BPartner_ID  + "=?");
		params.add(m_C_BPartner_ID);
		//Adding dates 
		whereClause.append(" AND validTo BETWEEN ? AND ?");
		params.add(from);
		params.add(to);
		//
		//check process and payroll
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Process p"
							+" WHERE HR_Movement.HR_Process_ID = p.HR_Process_ID" 
							+" AND p.HR_Payroll_ID=? AND p.DocStatus IN('CO', 'CL')) ");

		params.add(payroll_id);
		
		//
		StringBuffer sql = new StringBuffer("SELECT COALESCE(SUM(").append(fieldName).append("),0) FROM ").append(MHRMovement.Table_Name)
								.append(" WHERE ").append(whereClause);
		BigDecimal value = DB.getSQLValueBDEx(get_TrxName(), sql.toString(), params);
		return value.doubleValue();
		
	} // getConcept
	
	/**
	 * Helper Method : Attribute that had from some date to another to date,
	 * if it finds just one period it's seen for the attribute of such period 
	 * if there are two or more attributes based on the days
	 * @param ctx
	 * @param vAttribute
	 * @param dateFrom
	 * @param dateTo
	 * @return attribute value
	 */
	public double getAttribute (Properties ctx, String vAttribute, Timestamp dateFrom, Timestamp dateTo)
	{
		// TODO ???
		log.warning("not implemented yet -> getAttribute (Properties, String, Timestamp, Timestamp)");
		return 0;
	} // getAttribute

	/**
	 *  Helper Method : Attribute that had from some period to another to period,
	 *   periods with values 0 -1 1, etc. actual previous one period, next period
	 *  0 corresponds to actual period
	 *  Value of HR_Attribute
	 *  if it finds just one period it's seen for the attribute of such period 
	 *  if there are two or more attributes 
	 *  pFrom and pTo the search is done by the period value, it helps to search 
	 *  from previous year based on the days
	 *  @param ctx
	 *  @param vAttribute
	 *  @param periodFrom
	 *  @param periodTo
	 *  @param pFrom
	 *  @param pTo
	 *  @return attribute value	  
	 */
	public double getAttribute (Properties ctx, String vAttribute, int periodFrom,int periodTo,
			String pFrom,String pTo)
	{
		// TODO ???
		log.warning("not implemented yet -> getAttribute (Properties, String, int, int, String, String)");
		return 0;
	} // getAttribute
	
	
		
	/**
	 * Helper Method : Get AttributeInvoice 
	 * @param pConcept - Value to Concept
	 * @return	C_Invoice_ID, 0 if does't
	 */ 
	public int getAttributeInvoice (String pConcept)
	{
		MHRConcept concept = MHRConcept.forValue(getCtx(), pConcept);
		if (concept == null)
			return 0;
		
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		// check ValidFrom:
		whereClause.append(MHRAttribute.COLUMNNAME_ValidFrom + "<=?");
		params.add(m_dateFrom);
		//check client
		whereClause.append(" AND AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Concept c WHERE c.HR_Concept_ID=HR_Attribute.HR_Concept_ID" 
						   + " AND c.Value = ?)");
		params.add(pConcept);
		//
		if (!MHRConcept.TYPE_Information.equals(concept.getType()))
		{
			whereClause.append(" AND " + MHRAttribute.COLUMNNAME_C_BPartner_ID + " = ?");
			params.add(m_C_BPartner_ID);
		}
		
		MHRAttribute attribute = new Query(getCtx(), MHRAttribute.Table_Name, whereClause.toString(), get_TrxName())
		.setParameters(params)
		.setOrderBy(I_HR_Attribute.COLUMNNAME_HR_Payroll_ID + ", " + MHRAttribute.COLUMNNAME_ValidFrom + " DESC")
		.first();
		
		if(attribute!=null)
			return (Integer) attribute.get_Value("C_Invoice_ID");
		else
			return 0;
		
	} // getAttributeInvoice
		
	/**
	 * Helper Method : Get AttributeDocType
	 * @param pConcept - Value to Concept
	 * @return	C_DocType_ID, 0 if does't
	 */ 
	public int getAttributeDocType (String pConcept)
	{
		MHRConcept concept = MHRConcept.forValue(getCtx(), pConcept);
		if (concept == null)
			return 0;
		
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		// check ValidFrom:
		whereClause.append(MHRAttribute.COLUMNNAME_ValidFrom + "<=?");
		params.add(m_dateFrom);
		//check client
		whereClause.append(" AND AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Concept c WHERE c.HR_Concept_ID=HR_Attribute.HR_Concept_ID" 
						   + " AND c.Value = ?)");
		params.add(pConcept);
		//
		if (!MHRConcept.TYPE_Information.equals(concept.getType()))
		{
			whereClause.append(" AND " + MHRAttribute.COLUMNNAME_C_BPartner_ID + " = ?");
			params.add(m_C_BPartner_ID);
		}
		
		MHRAttribute attribute = new Query(getCtx(), MHRAttribute.Table_Name, whereClause.toString(), get_TrxName())
		.setParameters(params)
		.setOrderBy(I_HR_Attribute.COLUMNNAME_HR_Payroll_ID + ", " + MHRAttribute.COLUMNNAME_ValidFrom + " DESC")
		.first();
		
		if(attribute!=null)
			return (Integer) attribute.get_Value("C_DocType_ID");
		else
			return 0;
		 
	} // getAttributeDocType

	/**
	 * Helper Method : get days from specific period
	 * @param period
	 * @return no. of days
	 */
	public double getDays (int period)
	{
		/* TODO: This getter could have an error as it's not using the parameter, and it doesn't what is specified in help */
		log.warning("instead of using getDays in the formula it's recommended to use _DaysPeriod+1");
		return Env.getContextAsInt(getCtx(), "_DaysPeriod") + 1;
	} // getDays
	
	
	public static MHRProcess copyFrom (MHRProcess from, Timestamp dateAcct,
			int C_DocTypeTarget_ID, boolean counter, String trxName, boolean setOrder)
	{
		MHRProcess to = new MHRProcess (from.getCtx(), 0, trxName);		
		PO.copyValues (from, to, from.getAD_Client_ID(), from.getAD_Org_ID());
		to.set_ValueNoCheck ("DocumentNo", null);
		//
		to.setDocStatus (DOCSTATUS_Drafted);		//	Draft
		to.setDocAction(DOCACTION_Complete);
		//
		to.setName(from.getDocumentNo());
		to.setC_DocType_ID(C_DocTypeTarget_ID);
		to.setC_DocTypeTarget_ID (C_DocTypeTarget_ID);
		to.setDateAcct (dateAcct);
		//
		to.setHR_Job_ID(from.getHR_Job_ID());
		to.setHR_Department_ID(from.getHR_Department_ID());
		to.setHR_Payroll_ID(from.getHR_Payroll_ID());
		to.setHR_Period_ID(from.getHR_Period_ID());
		to.setC_BPartner_ID(from.getC_BPartner_ID());
		to.setHR_Employee_ID(from.getHR_Employee_ID());
		to.setC_Charge_ID(from.getC_Charge_ID());
		//
		to.setPosted (false);
		to.setProcessed (false);
		to.setProcessing(false);
		to.saveEx(trxName);
		//	Lines
		if (to.copyLinesFrom(from) == 0)
			throw new IllegalStateException("Could not create Payroll Lines");

		return to;
	}
	
	
	
	/**
	 * Copy Line from Movement
	 * @param HRProcess Human Resource Process
	 * @return return copy lines
	 */
	public int copyLinesFrom (MHRProcess from)
	{
		if (isProcessed() || isPosted() || from == null)
			return 0;
		
		List<MHRMovement> fromLines = MHRMovement.getLinesForProcess(from);
		for (MHRMovement fromMovement: fromLines)
		{
			MHRMovement toMovement = new MHRMovement (getCtx(), 0, get_TrxName());
			PO.copyValues (fromMovement, toMovement, fromMovement.getAD_Client_ID(), fromMovement.getAD_Org_ID());
			toMovement.setIsManual(fromMovement.isManual());
			toMovement.setHR_Concept_Category_ID(fromMovement.getHR_Concept_Category_ID());
			toMovement.setHR_Process_ID(getHR_Process_ID());
			toMovement.setC_BPartner_ID(fromMovement.getC_BPartner_ID());
			toMovement.setHR_Concept_ID(fromMovement.getHR_Concept_ID());
			toMovement.setColumnType(fromMovement.getColumnType());
			toMovement.setDescription(fromMovement.getDescription());
			toMovement.setHR_Department_ID(fromMovement.getHR_Department_ID());
			toMovement.setHR_Job_ID(fromMovement.getHR_Job_ID());
			toMovement.setIsPrinted(fromMovement.isPrinted());
			toMovement.setQty(fromMovement.getQty().negate());
			toMovement.setServiceDate(fromMovement.getServiceDate());
			toMovement.setTextMsg(fromMovement.getTextMsg());
			toMovement.setValidFrom(fromMovement.getValidFrom());
			toMovement.setValidTo(fromMovement.getValidTo());
			toMovement.setAD_Rule_ID(fromMovement.getAD_Rule_ID());
			toMovement.setAmount(fromMovement.getAmount().negate());
			toMovement.setC_Activity_ID(fromMovement.getC_Activity_ID());
			toMovement.setC_Campaign_ID(fromMovement.getC_Campaign_ID());
			toMovement.setAD_OrgTrx_ID(fromMovement.getAD_OrgTrx_ID());
			toMovement.setC_ProjectPhase_ID(fromMovement.getC_ProjectPhase_ID());
			toMovement.setC_ProjectPhase_ID(fromMovement.getC_ProjectPhase_ID());
			toMovement.setC_Project_ID(fromMovement.getC_Project_ID());
			toMovement.setUser1_ID(fromMovement.getUser1_ID());
			toMovement.setUser2_ID(fromMovement.getUser2_ID());
			toMovement.setProcessed(false);
			toMovement.saveEx();		
		}		
		return fromLines.size();
	}	//	copyLinesFrom
	
	//	Add New Methods
	
	/**
	 * Set Concept from Rule
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 20/07/2014, 11:27:48
	 * @param conceptValue
	 * @param value
	 * @return void
	 */
	public void setConcept (String conceptValue, Object value) {
		setConcept(conceptValue, value, null);
	}
	
	/**
	 * Set Concept from Rule
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 31/05/2014, 12:25:06
	 * @param conceptValue
	 * @param p_Description
	 * @param value
	 * @return void
	 */
	public void setConcept (String conceptValue, Object value, String p_Description) {
		try {
			MHRConcept c = MHRConcept.forValue(getCtx(), conceptValue); 
			//	
			if (c == null) {
				return;
			}
			MHRMovement m = new MHRMovement(this, c);
			MHREmployee employee = MHREmployee.getActiveEmployee(getCtx(), m_C_BPartner_ID, getAD_Org_ID(), get_TrxName());
			m.setColumnValue(value);
			m.setAD_Org_ID(getAD_Org_ID());
			m.setC_BPartner_ID(m_C_BPartner_ID);
			//	Set Description
			if(p_Description == null
					|| p_Description.length() == 0)
				p_Description = Msg.translate(getCtx(), "Added") + " " 
						+ Msg.translate(getCtx(), "from") + " " 
						+ Msg.translate(getCtx(), "AD_Rule_ID"); 
			//	
			m.setDescription(p_Description);
			m.setValidFrom(m_dateTo);
			m.setValidTo(m_dateTo);
			
			m.setHR_Department_ID(employee.getHR_Department_ID());
			m.setHR_Job_ID(employee.getHR_Job_ID());
			m.setIsManual(c.isManual());
			m.setC_Activity_ID(employee.getC_Activity_ID() > 0 ?  employee.getC_Activity_ID() : employee.getHR_Department().getC_Activity_ID());		
			m.setProcessed(true);
			
			m.saveEx();
		} catch(Exception e) {
			s_log.warning(e.getMessage());
		}
	} // setConcept
	
	
	/**
	 * Set Concept with Valid From
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 17/09/2013, 14:23:42
	 * @param conceptValue
	 * @param value
	 * @param isManual
	 * @param validFrom
	 * @param validTo
	 * @return void
	 */
	public void setConcept (String conceptValue, Object value, boolean isManual, 
			Timestamp validFrom, Timestamp validTo)
	{
		try
		{
			MHRConcept c = MHRConcept.forValue(getCtx(), conceptValue); 
			if (c == null)
			{
				return; // TODO throw exception
			}
			MHRMovement m = new MHRMovement(this, c);
			MHREmployee employee = MHREmployee.getActiveEmployee(getCtx(), m_C_BPartner_ID, getAD_Org_ID(), get_TrxName());
			m.setAD_Org_ID(getAD_Org_ID());
			m.setColumnValue(value);
			m.setC_BPartner_ID(m_C_BPartner_ID);
			m.setDescription(Msg.translate(getCtx(), "Added") + " " 
					+ Msg.translate(getCtx(), "from") + " " 
					+ Msg.translate(getCtx(), "AD_Rule_ID"));
			m.setValidFrom(validFrom);
			m.setValidTo(validTo);
			m.setIsManual(isManual);
			//	Is Printed
			m.setIsPrinted(c.isPrinted());
			
			m.setHR_Department_ID(employee.getHR_Department_ID());
			m.setHR_Job_ID(employee.getHR_Job_ID());
			//	Yamel Senih 2013-09-25 16:07:20 Bad Line
			//m.setIsManual(c.isManual());
			//	End Yamel Senih
			m.setC_Activity_ID(employee.getC_Activity_ID() > 0 ? employee.getC_Activity_ID() : employee.getHR_Department().getC_Activity_ID());	
			m.setProcessed(true);
			
			m.saveEx();
		} 
		catch(Exception e)
		{
			s_log.warning(e.getMessage());
		}
	} // setConcept
	
	/**
	 * Set concept with ID
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 22:38:59
	 * @param m_HR_Concept_ID
	 * @param value
	 * @param isManual
	 * @param validFrom
	 * @param validTo
	 * @return void
	 */
	public void setConcept (int m_HR_Concept_ID, Object value, boolean isManual, 
			Timestamp validFrom, Timestamp validTo)
	{
		try
		{
			MHRConcept c = MHRConcept.get(getCtx(), m_HR_Concept_ID); 
			if (c == null)
			{
				return; // TODO throw exception
			}
			MHRMovement m = new MHRMovement(this, c);
			MHREmployee employee = MHREmployee.getActiveEmployee(getCtx(), m_C_BPartner_ID, getAD_Org_ID(), get_TrxName());
			m.setAD_Org_ID(getAD_Org_ID());
			m.setColumnValue(value);
			m.setC_BPartner_ID(m_C_BPartner_ID);
			m.setDescription(Msg.translate(getCtx(), "Added") + " " 
					+ Msg.translate(getCtx(), "from") + " " 
					+ Msg.translate(getCtx(), "AD_Rule_ID"));
			m.setValidFrom(validFrom);
			m.setValidTo(validTo);
			m.setIsManual(isManual);
			//	Is Printed
			m.setIsPrinted(c.isPrinted());
			
			m.setHR_Department_ID(employee.getHR_Department_ID());
			m.setHR_Job_ID(employee.getHR_Job_ID());
			//	Yamel Senih 2013-09-25 16:07:20 Bad Line
			//m.setIsManual(c.isManual());
			//	End Yamel Senih
			m.setC_Activity_ID(employee.getC_Activity_ID() > 0 ? employee.getC_Activity_ID() : employee.getHR_Department().getC_Activity_ID());	
			m.setProcessed(true);
			
			m.saveEx();
		} 
		catch(Exception e)
		{
			s_log.warning(e.getMessage());
		}
	} // setConcept
	
	/**
	 * Set Concept with Valid From
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 17/09/2013, 14:25:02
	 * @param conceptValue
	 * @param value
	 * @param isManual
	 * @param validFrom
	 * @return void
	 */
	public void setConcept(String conceptValue, Object value, boolean isManual, Timestamp validFrom){
		setConcept(conceptValue, value, isManual, validFrom, null);
	}
	
	/**
	 * Set Concept with value
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 22:41:32
	 * @param m_HR_Concept_ID
	 * @param value
	 * @param isManual
	 * @param validFrom
	 * @return void
	 */
	public void setConcept(int m_HR_Concept_ID, Object value, boolean isManual, Timestamp validFrom){
		setConcept(m_HR_Concept_ID, value, isManual, validFrom, null);
	}
	
	/**
	 * Get Days with non Business Days
	 * <li> Calendar.SUNDAY
	 * <li> Calendar.MONDAY
	 * <li> Calendar.TUESDAY
	 * <li> Calendar.WEDNESDAY
	 * <li> Calendar.THURSDAY
	 * <li> Calendar.FRIDAY
	 * <li> Calendar.SATURDAY
	 * <li>getDays(_From, _To, nonBusinessDayRef, new int [] {Calendar.SATURDAY, Calendar.SUNDAY})
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/09/2013, 08:56:03
	 * @param p_From
	 * @param p_To
	 * @param nonBusinessDayRef
	 * @param nonBusinessDay
	 * @param onlyNonBusinessDays
	 * @return
	 * @return int
	 */
	public int getDays(Timestamp p_From, Timestamp p_To, boolean nonBusinessDayRef, 
			int [] nonBusinessDay, boolean onlyNonBusinessDays){
		Calendar d_From = Calendar.getInstance();
		Calendar d_To = Calendar.getInstance();
		//	Valid From .. To
		if(p_From == null
				|| p_To == null)
			return 0;
		
		int businessDays = 0;
		int nonBusinessDays = 0;
		
		d_From.setTimeInMillis(p_From.getTime());
	    d_To.setTimeInMillis(p_To.getTime());
		
	    while (d_From.compareTo(d_To) <= 0) {
	    	if (!nonBusinessDay(d_From.get(Calendar.DAY_OF_WEEK), nonBusinessDay))
	    		businessDays++;
	    	else
	    		nonBusinessDays++;
	    	//	Add Days
	    	d_From.add(Calendar.DATE, 1);
	    }
	    //	get Non Business Days from Table
	    if(nonBusinessDayRef){
	    	int nBDTable = DB.getSQLValue(get_TrxName(), "SELECT COUNT(nbd.C_NonBusinessDay_ID) " +
	    			"FROM C_NonBusinessDay nbd " +
	    			"WHERE nbd.Date1 BETWEEN ? AND ? AND nbd.AD_Org_ID IN(0, ?) AND nbd.AD_Client_ID = ?", 
	    			p_From, p_To, getAD_Org_ID(), getAD_Client_ID());
	    	
	    	businessDays -= nBDTable;
	    	//	Add Non Business Days
	    	nonBusinessDays += nBDTable;
	    	
	    	if(businessDays < 0)
	    		businessDays = 0;
	    }
	    //	
	    if(onlyNonBusinessDays)
	    	return nonBusinessDays;
	    //	Return
	    return businessDays;
	}
	
	/**
	 * Get Days, only Business days
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 25/03/2014, 20:06:39
	 * @param p_From
	 * @param p_To
	 * @param nonBusinessDayRef
	 * @param nonBusinessDay
	 * @return
	 * @return int
	 */
	public int getDays(Timestamp p_From, Timestamp p_To, boolean nonBusinessDayRef, int [] nonBusinessDay){
		return getDays(p_From, p_To, nonBusinessDayRef, nonBusinessDay, false);
	}
	
	
	/**
	 * Get Date To from Days
	 * <li> Calendar.SUNDAY
	 * <li> Calendar.MONDAY
	 * <li> Calendar.TUESDAY
	 * <li> Calendar.WEDNESDAY
	 * <li> Calendar.THURSDAY
	 * <li> Calendar.FRIDAY
	 * <li> Calendar.SATURDAY
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 19/09/2013, 15:26:28
	 * @param p_From
	 * @param days
	 * @param nonBusinessDayRef
	 * @param nonBusinessDay
	 * @return
	 * @return Timestamp
	 */
	public Timestamp getDaysTo(Timestamp p_From, int days, boolean nonBusinessDayRef, int [] nonBusinessDay){
		Calendar d_From = Calendar.getInstance();
		Calendar d_To = Calendar.getInstance();
		//	Valid From .. To
		if(p_From == null)
			return p_From;
		
		int businessDays = 0;
		
		d_From.setTimeInMillis(p_From.getTime());
		d_To.setTimeInMillis(p_From.getTime());
		//	Get Business Days
	    while (businessDays < days
	    		|| (businessDays == days 
	    			&& nonBusinessDay(d_To.get(Calendar.DAY_OF_WEEK), nonBusinessDay))) {
	    	if (!nonBusinessDay(d_To.get(Calendar.DAY_OF_WEEK), nonBusinessDay))
	          businessDays++;
	    	//	Add Day
	    	d_To.add(Calendar.DATE, 1);
	    	//	Get Non Business Days from Table
	    	if(businessDays == days){
	    		if(nonBusinessDayRef){
	    			int nBDTable = DB.getSQLValue(get_TrxName(), "SELECT COUNT(nbd.C_NonBusinessDay_ID) " +
		    				"FROM C_NonBusinessDay nbd " +
		    				"WHERE nbd.Date1 BETWEEN ? AND ? AND nbd.AD_Org_ID IN(0, ?) AND nbd.AD_Client_ID = ?", 
		    				new Timestamp(d_From.getTimeInMillis()), 
		    				new Timestamp(d_To.getTimeInMillis()),
		    				getAD_Org_ID(),
		    				getAD_Client_ID());
		    		//	
		    		businessDays -= nBDTable;
		    		d_From = d_To;
	    		}
	    	}
	    }
	    return new Timestamp(d_To.getTimeInMillis());
	}
	
	/**
	 * Add Days from change concept
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 30/01/2014, 16:59:44
	 * @param p_AValue
	 * @param p_From
	 * @param p_To
	 * @param nonBusinessDayRef
	 * @param nonBusinessDays
	 * @param p_Pos
	 * @param p_Movement
	 * @return
	 * @return int
	 */
	public int getCrossDays(String p_AValue, Timestamp p_From, Timestamp p_To, boolean nonBusinessDayRef, int [] nonBusinessDays, int p_Pos, MHRMovement p_Movement){
		MHRAttribute [] attArray = getAttributes(p_AValue, p_From, p_To, true);
		Timestamp validFrom = null;
		Timestamp validTo = null;
		//  Loop over Array
		if(attArray != null){
			//  Loop over attribute change
			for (int i = 0, ii = 1; i< attArray.length; i++, ii++) {
				MHRAttribute m_Attribute = attArray[i];
				validFrom = m_Attribute.getValidFrom();
				//	Valid just >=
				if(validFrom.before(p_From))
					validFrom = p_From;
				//  Set Valid To
				if(ii < attArray.length)
					validTo = TimeUtil.addDays(attArray[ii].getValidFrom(), -1);
				else if(ii == attArray.length 
						&& ii > 1)
					validTo = p_To;
				//	Add Days
				if(i == p_Pos){
					//	Set Valid
					if(p_Movement != null) {
						p_Movement.setValidFrom(validFrom);
						p_Movement.setValidTo(validTo);
					}
					return getDays(validFrom, validTo, nonBusinessDayRef, nonBusinessDays);
				}
			}
		}
		return 0;
	}
	
	/**
	 * Add Days from change concept with reference to non Business Days
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 12/05/2014, 22:57:36
	 * @param p_AValue
	 * @param p_From
	 * @param p_To
	 * @param nonBusinessDays
	 * @param p_Pos
	 * @param p_Movement
	 * @return
	 * @return int
	 */
	public int getCrossDays(String p_AValue, Timestamp p_From, Timestamp p_To, int [] nonBusinessDays, int p_Pos, MHRMovement p_Movement){
		return getCrossDays(p_AValue, p_From, p_To, true, nonBusinessDays, p_Pos, p_Movement);
	}
	
	/**
	 * Add Days from change concept
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 31/01/2014, 14:04:10
	 * @param p_AValue
	 * @param p_From
	 * @param p_To
	 * @param p_Pos
	 * @return
	 * @return int
	 */
	public int getCrossDays(String p_AValue, Timestamp p_From, Timestamp p_To, int [] nonBusinessDays, int p_Pos){
		return getCrossDays(p_AValue, p_From, p_To, nonBusinessDays, p_Pos, null);
	}
	
	/**
	 * Add Year to Date
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 20/09/2013, 09:42:35
	 * @param p_From
	 * @param years
	 * @return
	 * @return Timestamp
	 */
	public Timestamp getYearTo(Timestamp p_From, int years){
		if(p_From == null)
			return p_From;
		
		Calendar d_From = Calendar.getInstance();
		d_From.setTime(p_From);
		//	Add Yeas
		d_From.add(Calendar.YEAR, years);
		
		return new Timestamp(d_From.getTimeInMillis());
	}
	
	/**
	 * Add Month to Date
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 20/09/2013, 09:42:35
	 * @param p_From
	 * @param months
	 * @return
	 * @return Timestamp
	 */
	public Timestamp getMonthTo(Timestamp p_From, int months){
		if(p_From == null)
			return p_From;
		
		Calendar d_From = Calendar.getInstance();
		d_From.setTime(p_From);
		//	Add Yeas
		d_From.add(Calendar.MONTH, months);
		
		return new Timestamp(d_From.getTimeInMillis());
	}
	
	/**
	 * Get Month First Date
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 13/12/2014, 16:54:06
	 * @param day
	 * @return
	 * @return Timestamp
	 */
	public Timestamp getMonthFirstDay(Timestamp day) {
		if (day == null)
			day = new Timestamp(System.currentTimeMillis());
		GregorianCalendar cal = new GregorianCalendar(Language.getLoginLanguage().getLocale());
		cal.setTimeInMillis(day.getTime());
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		//
		cal.set(Calendar.DAY_OF_MONTH, 1);	//	first
		return new Timestamp (cal.getTimeInMillis());
	}	//	getNextDay
	
	/**
	 * Valid Non Business Day
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/09/2013, 10:10:06
	 * @param day
	 * @param nonBusinessDays
	 * @return
	 * @return boolean
	 */
	private boolean nonBusinessDay(int day, int [] nonBusinessDays){
		if(nonBusinessDays == null)
			return false;
		for (int i = 0; i < nonBusinessDays.length; i++) {
			if(day == nonBusinessDays[i])
				return true;
		}
		return false;
	}
	
	/**
	 * Get Years from two date
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 19/09/2013, 16:05:50
	 * @param p_From
	 * @param p_To
	 * @return
	 * @return int
	 */
	public int getYearDiff(Timestamp p_From, Timestamp p_To){
		//	Set Date From
		Calendar dateFrom=Calendar.getInstance();
		dateFrom.setTime(p_From);
        //	Set Date To
		Calendar dateTo = Calendar.getInstance();
        dateTo.setTime(p_To);
        //	Calculate Difference
        int yearDiff = dateTo.get(Calendar.YEAR) - dateFrom.get(Calendar.YEAR);
        int diferMes = dateTo.get(Calendar.MONTH) - dateFrom.get(Calendar.MONTH);
        int diferDia = dateTo.get(Calendar.DAY_OF_MONTH) - dateFrom.get(Calendar.DAY_OF_MONTH);
        if (diferMes < 0 ||(diferMes == 0 && diferDia < 0)){
            yearDiff -= 1;
        }
        //	Value
        return yearDiff;
	}
	
	/**
	 * Verify if exists changes in concept
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/01/2014, 16:28:12
	 * @param p_ConceptValue
	 * @param p_From
	 * @param p_To
	 * @return
	 * @return boolean
	 */
	public boolean getExistsConceptChanges(String p_ConceptValue, Timestamp p_From, Timestamp p_To){
		MHRConcept concept = MHRConcept.forValue(getCtx(), p_ConceptValue);
		if (concept == null)
			return false;
		//	Parameters
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(p_ConceptValue);
		params.add(p_From);
		params.add(p_To);
		StringBuffer sql = new StringBuffer("SELECT COUNT(ca.HR_Attribute_ID) " +
				"FROM HR_Concept c " + 
				"INNER JOIN HR_Attribute ca ON(ca.HR_Concept_ID = c.HR_Concept_ID) " +
				"WHERE c.Value = ? " +
				"AND ca.ValidFrom > ? AND ca.ValidFrom <= ? ");
		if (!concept.getType().equals(MHRConcept.TYPE_Information)){
			sql.append("AND ca.C_BPartner_ID = ? ");
			params.add(m_C_BPartner_ID);
		}
		//	Get Result
		int result = DB.getSQLValue(get_TrxName(), sql.toString(), params);
		return (result > 0);
	}
	
	/**
	 * Get List with Attribute
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/09/2013, 21:30:34
	 * @param p_ConceptValue
	 * @param p_From
	 * @param p_To
	 * @param addBeforeProcess
	 * @return
	 * @return MHRAttribute[]
	 */
	public MHRAttribute [] getAttributes(String p_ConceptValue, Timestamp p_From, Timestamp p_To, boolean addBeforeProcess){
		MHRConcept concept = MHRConcept.forValue(getCtx(), p_ConceptValue);
		if (concept == null)
			return null;
		
		boolean isInformation = concept.getType()
									.equals(MHRConcept.TYPE_Information);
		//	
		ArrayList<MHRAttribute> attributeList = null;
		try {
			StringBuffer sql = new StringBuffer("SELECT ca.* " +
					"FROM HR_Concept c " +
					"INNER JOIN HR_Attribute ca ON(ca.HR_Concept_ID = c.HR_Concept_ID) " +
					"WHERE c.Value = ? " +
					"AND ca.ValidFrom BETWEEN ? AND ? ");
			
			if (!isInformation){
				sql.append("AND ca.C_BPartner_ID = ? ");
			}
			//	Order By
			sql.append("ORDER BY ca.ValidFrom");
			
			PreparedStatement pstmt = null;
			pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			
			//	Add Parameters
			pstmt.setString(1, p_ConceptValue);
			pstmt.setTimestamp(2, p_From);
			pstmt.setTimestamp(3, p_To);
			//	Valid
			if (!isInformation){
				pstmt.setInt(4, m_C_BPartner_ID);
			}
			ResultSet rs = pstmt.executeQuery();
			if(rs != null){
				attributeList = new ArrayList<MHRAttribute>();
				MHRAttribute att = null;
				if(addBeforeProcess){
					att = getAttributePO(p_ConceptValue);
					if(att != null)
						attributeList.add(att);
				}
				while(rs.next()){
					att = new MHRAttribute(getCtx(), rs, get_TrxName());
					attributeList.add(att);
				}
			}
			//	Close DB
			DB.close(rs, pstmt);	
		} catch(Exception e) {
			s_log.warning(e.getMessage());
		}
		
		return attributeList.toArray(new MHRAttribute[attributeList.size()]);
	}
	
	/**
	 * Get a Movement from Payroll (From .. To) with cache
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/09/2013, 11:39:31
	 * @param p_ConceptValue
	 * @param p_From
	 * @param p_To
	 * @return
	 * @return MHRMovement[]
	 */
	public MHRMovement[] getMovements(String p_ConceptValue, Timestamp p_From, Timestamp p_To, boolean isCache){
		MHRConcept concept = MHRConcept.forValue(getCtx(), p_ConceptValue);
		if (concept == null)
			return null;
		//	
		ArrayList<MHRMovement> movementList = null;
		//	Verify Cache
		if(isCache) {
			MHRMovement m = m_movement.get(concept.get_ID());
			if(TimeUtil.isValid(p_From, p_To, m.getValidFrom()))
				return new MHRMovement [] {m};
			else return null;
		}
		//	
		boolean isInformation = concept.getType()
									.equals(MHRConcept.TYPE_Information);
		try {
			StringBuffer sql = new StringBuffer("SELECT m.* " +
					"FROM HR_Concept c " +
					"INNER JOIN HR_Movement m ON(m.HR_Concept_ID = c.HR_Concept_ID) " +
					"WHERE m.HR_Process_ID = ? " +
					"AND c.Value = ? " +
					"AND m.ValidFrom BETWEEN ? AND ? ");
			//	Valid
			if (!isInformation){
				sql.append("AND m.C_BPartner_ID = ? ");
			}
			//	Order By
			sql.append("ORDER BY m.ValidFrom");
			
			PreparedStatement pstmt = null;
			pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			
			//	Add Parameters
			pstmt.setInt(1, getHR_Process_ID());
			pstmt.setString(2, p_ConceptValue);
			pstmt.setTimestamp(3, p_From);
			pstmt.setTimestamp(4, p_To);
			//	Valid
			if (!isInformation){
				pstmt.setInt(5, m_C_BPartner_ID);
			}
			
			ResultSet rs = pstmt.executeQuery();
			if(rs != null){
				movementList = new ArrayList<MHRMovement>();
				while(rs.next()){
					MHRMovement movement = new MHRMovement(getCtx(), rs, get_TrxName());
					movementList.add(movement);
				}
			}
			//	Close DB
			DB.close(rs, pstmt);	
		} catch(Exception e) {
			s_log.warning(e.getMessage());
		}
		return movementList.toArray(new MHRMovement[movementList.size()]);
	}
	
	/**
	 * Get a Movement from Payroll (From .. To)
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 31/01/2014, 16:29:05
	 * @param p_ConceptValue
	 * @param p_From
	 * @param p_To
	 * @return
	 * @return MHRMovement[]
	 */
	public MHRMovement[] getMovements(String p_ConceptValue, Timestamp p_From, Timestamp p_To){		
		return getMovements(p_ConceptValue, p_From, p_To, false);
	}
	
	/**
	 * Get Persistence Object Attribute before Process
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/09/2013, 17:08:52
	 * @param pConcept
	 * @return
	 * @return MHRAttribute
	 */
	public MHRAttribute getAttributePO (String pConcept)
	{
		MHRConcept concept = MHRConcept.forValue(getCtx(), pConcept);
		if (concept == null)
			return null;

		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		// check ValidFrom:
		whereClause.append(MHRAttribute.COLUMNNAME_ValidFrom + "<=?");
		params.add(m_dateFrom);
		//check client
		whereClause.append(" AND AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		
		if(m_HR_Payroll_ID > 0)
		{
			whereClause.append(" AND (HR_Payroll_ID=? OR HR_Payroll_ID IS NULL)");
			params.add(m_HR_Payroll_ID);
		}
		if(m_HR_Department_ID > 0)
		{
			whereClause.append(" AND (HR_Department_ID=? OR HR_Department_ID IS NULL)");
			params.add(m_HR_Department_ID);	
		}
		if(m_HR_Job_ID > 0)
		{
			whereClause.append(" AND (HR_Job_ID=? OR HR_Job_ID IS NULL)");
			params.add(m_HR_Job_ID);
		}

		//check concept
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Concept c WHERE c.HR_Concept_ID=HR_Attribute.HR_Concept_ID" 
				+ " AND c.Value = ?)");
		params.add(pConcept);
		//
		if (!concept.getType().equals(MHRConcept.TYPE_Information))
		{
			whereClause.append(" AND " + MHRAttribute.COLUMNNAME_C_BPartner_ID + " = ?");
			params.add(m_C_BPartner_ID);
		}

		MHRAttribute attribute = new Query(getCtx(), MHRAttribute.Table_Name, whereClause.toString(), get_TrxName())
		.setParameters(params)
		.setOrderBy(I_HR_Attribute.COLUMNNAME_HR_Payroll_ID + ", " + MHRAttribute.COLUMNNAME_ValidFrom + " DESC")
		.first();
		
		return attribute;
		
	} // getAttribute
	
	/**
	 * Get First Employee
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 20/09/2013, 08:50:24
	 * @param C_BPartner_ID
	 * @return
	 * @return MHREmployee
	 */
	public MHREmployee getFirstEmployee(int C_BPartner_ID){
		return new Query(getCtx(), I_HR_Employee.Table_Name, I_HR_Employee.COLUMNNAME_C_BPartner_ID+"=?", get_TrxName())
							.setParameters(new Object[]{C_BPartner_ID})
							.setOrderBy(I_HR_Employee.COLUMNNAME_StartDate+" ASC") // just in case...
							.first();
	}
	
	/**
	 * Get AVG From Concept with limit
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/09/2013, 17:59:35
	 * @param conceptValue
	 * @param payrollValue
	 * @param p_From
	 * @param p_To
	 * @param limit
	 * @return
	 * @return double
	 */
	public double getConceptAVG (String conceptValue, String payrollValue, Timestamp p_From, Timestamp p_To, int limit) {
		
		BigDecimal value = Env.ZERO;
		
		try {
			int payroll_id;
			if (payrollValue == null)
			{
				payroll_id = getHR_Payroll_ID();
			}
			else
			{
				MHRPayroll payroll = MHRPayroll.forValue(getCtx(), payrollValue);
				if(payroll == null)
					return 0.0;
				//	
				payroll_id = payroll.get_ID();
			}
			
			MHRConcept concept = MHRConcept.forValue(getCtx(), conceptValue);
			if (concept == null)
				return 0.0;
			//
			// Detect field name
			final String fieldName;
			if (MHRConcept.COLUMNTYPE_Quantity.equals(concept.getColumnType()))
			{
				fieldName = MHRMovement.COLUMNNAME_Qty;
			}
			else if (MHRConcept.COLUMNTYPE_Amount.equals(concept.getColumnType()))
			{
				fieldName = MHRMovement.COLUMNNAME_Amount;
			}
			else
			{
				return 0; // TODO: throw exception?
			}
			
			StringBuffer sql = new StringBuffer("SELECT m." + fieldName + " " + 
					"FROM HR_Payroll prl " +
					"INNER JOIN HR_Process pr ON(pr.HR_Payroll_ID = prl.HR_Payroll_ID) " +
					"INNER JOIN HR_Movement m ON(m.HR_Process_ID = pr.HR_Process_ID) ");
			//	Where
			sql.append("WHERE pr.DocStatus IN('CO', 'CL') " +
					"AND prl.AD_Client_ID = ? " +
					"AND prl.HR_Payroll_ID = ? " +
					"AND m.HR_Concept_ID = ? " +
					"AND m.C_BPartner_ID = ? " +
					"AND m.ValidTo BETWEEN ? AND ? ");
			//	Order By
			sql.append(" ORDER BY m.ValidFrom DESC");
			
			PreparedStatement pstmt = null;
			pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
				
			//	Add Parameters
			pstmt.setInt(1, getAD_Client_ID());
			pstmt.setInt(2, payroll_id);
			pstmt.setInt(3, concept.get_ID());
			pstmt.setInt(4, m_C_BPartner_ID);
			pstmt.setTimestamp(5, p_From);
			pstmt.setTimestamp(6, p_To);
				
			ResultSet rs = pstmt.executeQuery();
			
			if(rs != null){
				int qty = 0;
				while(rs.next()
						&& (qty < limit
								|| limit == 0)){
					value = value.add(rs.getBigDecimal(fieldName));
					qty += 1;
				}
				//	Average
				if(qty != 0)
					value = value.divide(new BigDecimal(qty), m_Precision, BigDecimal.ROUND_HALF_UP);
			}
				//	Close DB
			DB.close(rs, pstmt);	
		} catch(Exception e) {
			s_log.warning(e.getMessage());
		}
		//	
		return value.doubleValue();
		
	} // getConcept
	
	/**
	 * Get AVG From Concept
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/09/2013, 18:02:19
	 * @param conceptValue
	 * @param payrollValue
	 * @param p_From
	 * @param p_To
	 * @return
	 * @return double
	 */
	public double getConceptAVG (String conceptValue, String payrollValue, Timestamp p_From, Timestamp p_To) {
		return getConceptAVG(conceptValue, payrollValue, p_From, p_To, 0);
	}
	
	/**
	 * Get Cross Concept
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 12/10/2013, 15:52:46
	 * @param p_MValue
	 * @param p_AValue
	 * @param p_From
	 * @param p_To
	 * @param p_Pos
	 * @return
	 * @return FactorMovement
	 */
	public FactorMovement getCrossConcept(String p_MValue, String p_AValue, Timestamp p_From, Timestamp p_To, int p_Pos){
		return getCrossConcept(p_MValue, p_AValue, p_From, p_To, p_Pos, false);
	}
	
	/**
	 * Get Cross Concept
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 31/01/2014, 16:26:18
	 * @param p_MValue
	 * @param p_AValue
	 * @param p_From
	 * @param p_To
	 * @param p_Pos
	 * @param isCache
	 * @return
	 * @return FactorMovement
	 */
	public FactorMovement getCrossConcept(String p_MValue, String p_AValue, Timestamp p_From, Timestamp p_To, int p_Pos, boolean isCache){
		MHRAttribute [] attArray = getAttributes(p_AValue, p_From, p_To, true);
		MHRMovement [] movArray = getMovements(p_MValue, p_From, p_To, isCache);
		Timestamp validFrom = null;
		Timestamp validTo = null;
		int pos = 0;
		//  Loop over Array
		if(attArray != null && movArray != null){
			//  Loop over attribute change
			for (int i = 0, ii = 1; i< attArray.length; i++, ii++) {
				MHRAttribute m_Attribute = attArray[i];
				validFrom = m_Attribute.getValidFrom();
				//  Set Valid To
				if(ii < attArray.length)
					validTo = TimeUtil.addDays(attArray[ii].getValidFrom(), -1);
				else if(ii == attArray.length 
						&& ii > 1)
					validTo = p_To;
				//  Loop over Array
				for(int j = 0; j < movArray.length; j++) {
					MHRMovement m_Movement = movArray[j];
					Timestamp mov = m_Movement.getValidFrom();
					//  Verify if Action Notice is own range
					if(TimeUtil.isValid(validFrom, validTo, mov)){
						if(pos == p_Pos)
							return new FactorMovement(m_Movement, m_Attribute);
						pos ++;
					}
				}
			}
		}
		return null;
	}
	
	/**
	 * Get current loan amount with Date Break
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 26/03/2014, 22:42:07
	 * @param p_LoanValue
	 * @return
	 * @return double
	 */
	public double getCurrentLoanAmt(String p_LoanValue, Timestamp m_breakDate){
		//	Valid (Valid From)
		if(m_breakDate == null)
			m_breakDate = m_dateTo;
		//	
		MLVEHRLoanDefinition loanDefinition = MLVEHRLoanDefinition.forValue(getCtx(), p_LoanValue);
		if(loanDefinition == null)
			return 0.0;
		//	
		Timestamp validFrom = getValidFromConcept(loanDefinition.getLoan_I_Concept_ID(), m_breakDate);
		//  Var
		double i_p_loan = 0;
		double i_p_sp_loan = 0;
		double i_p_current_loan = 0;
		double a_p_loan = 0;
		double c_p_loan = 0;
		double c_p_loan_payroll = 0;
		double f_p_loan = 0;
		double t_p_loan_payroll = 0;
		double t_p_loan = 0;
		//	Interest
		double cin_p_loan = 0;
		//	Tax
		double ctax_p_loan = 0;
		//	
		String p_term_loan = null;
		//	Constant
		final String PT_START 	= "S";
		final String PT_END 	= "E";
		final String PT_ALWAYS 	= "A";
		//  
		i_p_current_loan = getConcept(loanDefinition.getLoan_I_Concept_ID());
		//			
		if(validFrom == null) {
			//	Validate Current Loan
			if(i_p_current_loan != 0) {
				setConcept(loanDefinition.getLoan_F_Concept_ID(), getDateAcct(), false, getDateAcct());
			}
			return 0.0;
		}
		//	
		i_p_loan = getConcept(loanDefinition.getLoan_I_Concept_ID(), validFrom, m_breakDate);
		c_p_loan = getConcept(loanDefinition.getLoan_C_Concept_ID(), validFrom, m_breakDate);
		i_p_sp_loan = getConcept(loanDefinition.getLoan_I_SP_Concept_ID(), validFrom, m_breakDate);
		p_term_loan = getConceptString(loanDefinition.getLoan_P_Concept_ID(), validFrom, m_breakDate);
		//	Add Special Payment
		c_p_loan += i_p_sp_loan;
		//	Valid Calculation
		if(getHR_Period_ID() != 0
				&& p_term_loan != null
				&& !p_term_loan.equals(PT_ALWAYS)) {
			//	
			if(p_term_loan.equals(PT_START)) {		//	Start
				Timestamp m_monthFirstDate = TimeUtil.getMonthLastDay(m_dateFrom);
				m_monthFirstDate = getMonthTo(m_monthFirstDate, -1);
				m_monthFirstDate = TimeUtil.getMonthLastDay(m_monthFirstDate);
				m_monthFirstDate = TimeUtil.addDays(m_monthFirstDate, 1);
				//	
				//	Valid Month First Date
				if(!TimeUtil.isSameDay(m_dateFrom, m_monthFirstDate)) {
					//	Is not a begining month
					return 0.0;
				}
			} else if(p_term_loan.equals(PT_END)) {	//	End
				Timestamp monthLastDay = TimeUtil.getMonthLastDay(m_dateTo);
				//	Valid Month Last Date
				if(!(
						(m_dateFrom.before(monthLastDay)
									|| TimeUtil.isSameDay(m_dateFrom, monthLastDay)
						) 
						&& m_dateTo.after(monthLastDay)
					)
						&& !TimeUtil.isSameDay(m_dateTo, monthLastDay)) {
					//	Is not a ending month
					return 0.0;
				}
			}
		}
		//	
		c_p_loan_payroll = getConcept(loanDefinition.getLoan_C_Concept_ID(), m_PayrollValue, validFrom, m_breakDate);
		//	Interest
		//	Yamel Senih
		//	2015-09-15 Change to Interest and tax from incidence
//		cin_p_loan = getConcept(loanDefinition.getInterest_C_Concept_ID(), validFrom, m_breakDate);
		cin_p_loan = getConcept(loanDefinition.getInterest_TI_Concept_ID(), validFrom, m_breakDate);
		//	Tax
//		ctax_p_loan = getConcept(loanDefinition.getTax_C_Concept_ID(), validFrom, m_breakDate);
		ctax_p_loan = getConcept(loanDefinition.getInterest_TT_Concept_ID(), validFrom, m_breakDate);
		//	
		f_p_loan = getAttribute(loanDefinition.getLoan_D_Concept_ID(), m_breakDate);
		t_p_loan_payroll = getAttribute(loanDefinition.getLoan_T_Concept_ID(), m_breakDate);
		t_p_loan = getAttribute(loanDefinition.getInterest_T_Concept_ID(), m_breakDate);
		//	Validate Current Loan
		if(i_p_current_loan != 0) {
			if((i_p_loan - c_p_loan) == 0) {
				setConcept(loanDefinition.getLoan_F_Concept_ID(), getDateAcct(), false, getDateAcct());
			}
			return 0.0;
		}
		//  Calculate Difference
		//	Add Interest
		a_p_loan = (i_p_loan + cin_p_loan + ctax_p_loan) - c_p_loan;
		//  Loan Is Paid
		if(a_p_loan <= 0)
			return 0.0;
		//  Excedeed
		if(a_p_loan - f_p_loan < 0)
			f_p_loan += (a_p_loan - f_p_loan);
		//	Payroll Top
		if(t_p_loan_payroll != 0
				&& (c_p_loan_payroll + f_p_loan) > t_p_loan_payroll)
			f_p_loan += (t_p_loan_payroll - (c_p_loan_payroll + f_p_loan));
		//	Global Top
		if(t_p_loan != 0
				&& (c_p_loan + f_p_loan) > t_p_loan)
			f_p_loan += (t_p_loan - (c_p_loan + f_p_loan));
		//  Result
		return f_p_loan;
	}
	
	/**
	 * Get Current Loan Interest
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 16:04:54
	 * @param p_Concept
	 * @return
	 * @return double
	 */
	public double getCurrentLoanInterestAmt(String p_Concept) {
		return getCurrentLoanInterestAmt(p_Concept, null, false);
	}
	
	/**
	 * Get Current Loan Interest Amount (optional enforce)
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/06/2014, 16:35:27
	 * @param p_LoanValue
	 * @param m_enforce
	 * @return
	 * @return double
	 */
	public double getCurrentLoanInterestAmt(String p_LoanValue, boolean m_enforce) {
		return getCurrentLoanInterestAmt(p_LoanValue, null, m_enforce);
	}
	
	/**
	 * Get Current Loan Interest Amount
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 10/06/2014, 23:16:54
	 * @param p_LoanValue
	 * @param m_breakDate
	 * @param m_enforce
	 * @return
	 * @return double
	 */
	public double getCurrentLoanInterestAmt(String p_LoanValue, Timestamp m_breakDate, boolean m_enforce) {
		//	Valid (Valid From)
		if(m_breakDate == null)
			m_breakDate = m_dateTo;
		//	
		MLVEHRLoanDefinition loanDefinition = MLVEHRLoanDefinition.forValue(getCtx(), p_LoanValue);
		if(loanDefinition == null)
			return 0.0;
		//	
		Timestamp validFrom = getValidFromConcept(loanDefinition.getLoan_F_Concept_ID(), m_breakDate);
		//  Var
		double i_p_loan = 0;
		double i_p_sp_loan = 0;
		double i_p_current_loan = 0;
		double a_p_loan = 0;
		double c_p_loan = 0;
		double c_p_current_loan = 0;
		//	Interest
		double fin_p_loan = 0;
		double fin_rate_p_loan = 0;
		double fin_days_p_loan = 0;
		double cin_p_loan = 0;
		boolean isSameMonth = false;
		//	
		if(getHR_Period_ID() != 0) {
			Timestamp monthLastDay = TimeUtil.getMonthLastDay(m_dateTo);
			//	Valid Month Last Date
			if(!(
					(m_dateFrom.before(monthLastDay)
								|| TimeUtil.isSameDay(m_dateFrom, monthLastDay)
					) 
						&& m_dateTo.after(monthLastDay)
				)
					&& !TimeUtil.isSameDay(m_dateTo, monthLastDay)) {
				return 0.0;
			}
		} else if(!m_enforce) {
			return 0.0;
		}
		//  
		i_p_current_loan = getConcept(loanDefinition.getLoan_I_Concept_ID());
		//	
		if(validFrom == null) {
			return 0.0;
		}
		//	Validate Current Loan
		if(i_p_current_loan != 0) {
			return 0.0;
		}
		//	Get Previous month
		Timestamp m_breakDateBalance = TimeUtil.getMonthLastDay(m_dateFrom);
		m_breakDateBalance = getMonthTo(m_breakDateBalance, -1);
		m_breakDateBalance = TimeUtil.getMonthLastDay(m_breakDateBalance);
		//	
		i_p_loan = getConcept(loanDefinition.getLoan_I_Concept_ID(), validFrom, m_breakDate);
		i_p_sp_loan = getConcept(loanDefinition.getLoan_I_SP_Concept_ID(), validFrom, m_breakDate);
		c_p_loan = getConcept(loanDefinition.getLoan_C_Concept_ID(), validFrom, m_breakDateBalance);
		//	Add Special Payment
		c_p_loan += i_p_sp_loan;
		//	Get Current Loan
		c_p_current_loan = getConcept(loanDefinition.getLoan_C_Concept_ID(), validFrom, m_breakDate);
		c_p_current_loan += getConcept(loanDefinition.getLoan_C_Concept_ID());
		//	Get Insterest
		fin_p_loan = getAttribute(loanDefinition.getInterest_D_Concept_ID(), m_breakDate);
		fin_rate_p_loan = getAttribute(loanDefinition.getInterest_R_Concept_ID(), m_breakDate);
		//	Get Days
		fin_days_p_loan = getAttribute(loanDefinition.getInterest_DM_Concept_ID(), m_breakDate);
		//  Calculate Difference
		a_p_loan = i_p_loan - c_p_loan;
		//  Loan Is Paid
		if(a_p_loan <= 0)
			return 0.0;
		//  Loan Is Paid in month
		if((i_p_loan - c_p_current_loan) <= 0) {
			Timestamp interestValidTo = getValidToConcept(loanDefinition.getLoan_C_Concept_ID(), m_dateTo);
			//	Valid
			if(interestValidTo == null)
				interestValidTo = m_dateTo;
			//	Begin Month
			m_breakDateBalance = TimeUtil.addDays(m_breakDateBalance, 1);
			//	if same month
			isSameMonth = isSameMonth(interestValidTo, m_dateTo);
			//	
			if(isSameMonth)
				fin_days_p_loan -= getDays(m_breakDateBalance, interestValidTo);
			else 
				return  0.0;

		} else {
			//	if same month
			isSameMonth = isSameMonth(validFrom, m_dateTo);
			//	
			if(isSameMonth) {
				int firstDays = TimeUtil.getDaysBetween(m_breakDateBalance, m_dateTo) + 1;
				if(fin_days_p_loan > firstDays) {
					fin_days_p_loan = firstDays;
				}
			}
		}
		//	
		if(fin_rate_p_loan == 0)
			fin_rate_p_loan = 1;		
		//	Interest
		cin_p_loan = (isSameMonth? i_p_loan: a_p_loan) * fin_p_loan;
		cin_p_loan = (cin_p_loan * fin_days_p_loan) / fin_rate_p_loan;
		//  Result
		return cin_p_loan;
	}
	
	/**
	 * Get Previous Balance for Loan Re-Calculation without Date Break
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 14/1/2015, 11:25:53
	 * @param p_LoanValue
	 * @return
	 * @return double
	 */
	public double getLoanPreviousBalanceAmt(String p_LoanValue) {
		return getLoanPreviousBalanceAmt(p_LoanValue, null);
	}
	public double getLoanDeductionBalanceAmt(String p_LoanValue) {
		return getLoanDeductionBalanceAmt(p_LoanValue, null);
	}
	/**
	 * Get Previous Balance for Loan Re-Calculation
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 14/1/2015, 11:19:16
	 * @param p_LoanValue
	 * @param m_breakDate
	 * @return
	 * @return double
	 */
	public double getLoanPreviousBalanceAmt(String p_LoanValue, Timestamp m_breakDate) {
		//	Valid (Valid From)
		if(m_breakDate == null)
			m_breakDate = m_dateTo;
		//	
		MLVEHRLoanDefinition loanDefinition = MLVEHRLoanDefinition.forValue(getCtx(), p_LoanValue);
		if(loanDefinition == null)
			return 0.0;
		//	
		Timestamp validFrom = getValidFromConcept(loanDefinition.getLoan_F_Concept_ID(), m_breakDate);
		//  Var
		double i_p_loan = 0;
		double i_p_sp_loan = 0;
		double a_p_loan = 0;
		double c_p_loan = 0;
		//	Interest
		double i_p_ti_loan = 0;
		double i_p_tt_loan = 0;
		//	
		if(validFrom == null) {
			return 0.0;
		}
		//	Get Previous month
		Timestamp m_breakDateBalance = TimeUtil.getMonthLastDay(m_dateFrom);
		
		m_breakDateBalance = getMonthTo(m_breakDateBalance, -1);
		m_breakDateBalance = TimeUtil.getMonthLastDay(m_breakDateBalance);
		//	
		i_p_loan = getConcept(loanDefinition.getLoan_I_Concept_ID(), validFrom, m_breakDate);
		i_p_sp_loan = getConcept(loanDefinition.getLoan_I_SP_Concept_ID(), validFrom, m_breakDate);
		c_p_loan = getConcept(loanDefinition.getLoan_C_Concept_ID(), validFrom, m_breakDateBalance);
		//	Add Special Payment
		c_p_loan += i_p_sp_loan;
		//	Get Current Loan
		//	Get Initial Insterest
		i_p_ti_loan = getConcept(loanDefinition.getInterest_TI_Concept_ID(), validFrom, m_breakDateBalance);
		i_p_tt_loan = getConcept(loanDefinition.getInterest_TT_Concept_ID(), validFrom, m_breakDateBalance);
		//  Calculate Difference
		a_p_loan = (i_p_loan + i_p_ti_loan + i_p_tt_loan) - c_p_loan;
		System.out.println(a_p_loan);
		//  Loan Is Paid
		if(a_p_loan <= 0)
			return 0.0;
		//  Result
		return a_p_loan;
	}
	public double getLoanDeductionBalanceAmt(String p_LoanValue, Timestamp m_breakDate) {
		//	Valid (Valid From)
		if(m_breakDate == null)
			m_breakDate = m_dateTo;
		//	
		MLVEHRLoanDefinition loanDefinition = MLVEHRLoanDefinition.forValue(getCtx(), p_LoanValue);
		if(loanDefinition == null)
			return 0.0;
		//	
		Timestamp validFrom = getValidFromConcept(loanDefinition.getLoan_F_Concept_ID(), m_breakDate);
		//  Var
		double i_p_loan = 0;
		double i_p_sp_loan = 0;
		double a_p_loan = 0;
		double c_p_loan = 0;
		//	Interest
		double i_p_ti_loan = 0;
		double i_p_tt_loan = 0;
		//	
		if(validFrom == null) {
			return 0.0;
		}
		//	Get Previous month
		Timestamp m_breakDateBalance = TimeUtil.getMonthLastDay(m_dateFrom);
		
		m_breakDateBalance = TimeUtil.getMonthLastDay(m_breakDateBalance);
				//getMonthTo(m_breakDateBalance, -1);
		//m_breakDateBalance = TimeUtil.getMonthLastDay(m_breakDateBalance);
		//	
		i_p_loan = getConcept(loanDefinition.getLoan_I_Concept_ID(), validFrom, m_breakDate);
		i_p_sp_loan = getConcept(loanDefinition.getLoan_I_SP_Concept_ID(), validFrom, m_breakDate);
		c_p_loan = getConcept(loanDefinition.getLoan_C_Concept_ID(), validFrom, m_breakDateBalance);
		//	Add Special Payment
		c_p_loan += i_p_sp_loan;
		//	Get Current Loan
		//	Get Initial Insterest
		i_p_ti_loan = getConcept(loanDefinition.getInterest_TI_Concept_ID(), validFrom, m_breakDateBalance);
		i_p_tt_loan = getConcept(loanDefinition.getInterest_TT_Concept_ID(), validFrom, m_breakDateBalance);
		//  Calculate Difference
		a_p_loan = (i_p_loan + i_p_ti_loan + i_p_tt_loan) - c_p_loan;
		System.out.println(a_p_loan);
		//  Loan Is Paid
		if(a_p_loan <= 0)
			return 0.0;
		//  Result
		return a_p_loan;
	}
	
	
	/**
	 * Get Tax for Interest
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 14/1/2015, 10:59:34
	 * @param p_LoanValue
	 * @param m_breakDate
	 * @return
	 * @return double
	 */
	public double getCurrentLoanInterestNDTAmt(String p_LoanValue, Timestamp m_breakDate) {
		//	
		MLVEHRLoanDefinition loanDefinition = MLVEHRLoanDefinition.forValue(getCtx(), p_LoanValue);
		if(loanDefinition == null)
			return 0.0;
		//	Interest
		double cin_p = 0;
		double ftax_p_loan = 0;
		double ctax_p_loan = 0;
		
		//	Get Sum Interest
		cin_p = getConcept(loanDefinition.getInterest_ND_Concept_ID());
		//	
		if(cin_p == 0)
			return 0.0;
		//	Get Tax
		ftax_p_loan = loanDefinition.getTaxAmt();
		//	Interest
		ctax_p_loan = (cin_p * ftax_p_loan) / 100;
		//  Result
		return ctax_p_loan;
	}
	
	/**
	 * Get Loan Tax without Break Date
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 14/1/2015, 11:00:39
	 * @param p_LoanValue
	 * @return
	 * @return double
	 */
	public double getCurrentLoanInterestNDTAmt(String p_LoanValue) {
		return getCurrentLoanInterestNDTAmt(p_LoanValue, null);
	}
	
	/**
	 * Get Current Interest not Due
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 22/12/2014, 16:14:44
	 * @param p_Concept
	 * @return
	 * @return double
	 */
	public double getCurrentLoanInterestNDAmt(String p_Concept) {
		return getCurrentLoanInterestNDAmt(p_Concept, null, false);
	}
	
	/**
	 * Get Current Interest not Due
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 22/12/2014, 16:14:41
	 * @param p_LoanValue
	 * @param m_enforce
	 * @return
	 * @return double
	 */
	public double getCurrentLoanInterestNDAmt(String p_LoanValue, boolean m_enforce) {
		return getCurrentLoanInterestNDAmt(p_LoanValue, null, m_enforce);
	}
	
	/**
	 * Get Current Interest not Due
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 22/12/2014, 16:14:16
	 * @param p_LoanValue
	 * @param m_breakDate
	 * @param m_enforce
	 * @return
	 * @return double
	 */
	public double getCurrentLoanInterestNDAmt(String p_LoanValue, Timestamp m_breakDate, boolean m_enforce) {
		//	Valid (Valid From)
		if(m_breakDate == null)
			m_breakDate = m_dateTo;
		//	
		MLVEHRLoanDefinition loanDefinition = MLVEHRLoanDefinition.forValue(getCtx(), p_LoanValue);
		if(loanDefinition == null)
			return 0.0;
		//	
		Timestamp validFrom = getValidFromConcept(loanDefinition.getLoan_F_Concept_ID(), m_breakDate);
		//  Var
		double i_p_current_loan = 0;
		//	Interest
		i_p_current_loan = getConcept(loanDefinition.getLoan_I_Concept_ID());
		//	
		if(validFrom == null) {
			return 0.0;
		}
		//	Validate Current Loan
		if(i_p_current_loan == 0) {
			return 0.0;
		}
		//	
		double i_in_concept = getConcept(loanDefinition.getInterest_TI_Concept_ID(), validFrom, m_breakDate);
		double in_a_concept = getConcept(loanDefinition.getInterest_A_Concept_ID());
		//  Result
		return i_in_concept - in_a_concept;
	}
	
	/**
	 * Get Current Interest Amount
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 10:34:01
	 * @param p_LoanValue
	 * @param m_breakDate
	 * @return
	 * @return double
	 */
	public double getCurrentLoanTaxAmt(String p_LoanValue, Timestamp m_breakDate) {
		//	
		MLVEHRLoanDefinition loanDefinition = MLVEHRLoanDefinition.forValue(getCtx(), p_LoanValue);
		if(loanDefinition == null)
			return 0.0;
		//	Interest
		double cin_p_loan = 0;
		double ftax_p_loan = 0;
		double ctax_p_loan = 0;
		
		//	Get Sum Interest
		cin_p_loan = getConcept(loanDefinition.getInterest_C_Concept_ID());
		//	
		if(cin_p_loan == 0)
			return 0.0;
		//	Get Tax
		ftax_p_loan = loanDefinition.getTaxAmt();
		//	Interest
		ctax_p_loan = (cin_p_loan * ftax_p_loan) / 100;
		//  Result
		return ctax_p_loan;
	}
	
	/**
	 * Get Current Tax Calculation
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 23:40:55
	 * @param p_LoanValue
	 * @return
	 * @return double
	 */
	public double getCurrentLoanTaxAmt(String p_LoanValue) {
		return getCurrentLoanTaxAmt(p_LoanValue, null);
	}
	
	/**
	 * Get Current Loan Amt
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/05/2014, 22:14:36
	 * @param p_Concept
	 * @return
	 * @return double
	 */
	public double getCurrentLoanAmt(String p_Concept){
		return getCurrentLoanAmt(p_Concept, null);
	}
	
	/**
	 * Get Current Loan Balance with Break Date
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 26/03/2014, 23:42:48
	 * @param p_LoanValue
	 * @param m_breakDate
	 * @return
	 * @return double
	 */
	public double getCurrentLoanBalanceAmt(String p_LoanValue, Timestamp m_breakDate){
		//	Valid (Valid From)
		if(m_breakDate == null)
			m_breakDate = m_dateTo;
		//	
		MLVEHRLoanDefinition loanDefinition = MLVEHRLoanDefinition.forValue(getCtx(), p_LoanValue);
		if(loanDefinition == null)
			return 0.0;
		//	
		Timestamp validFrom = getValidFromConcept(loanDefinition.getLoan_F_Concept_ID(), m_breakDate);
		//  Var
		double i_p_loan = 0;
		double i_p_sp_loan = 0;
		double a_p_loan = 0;
		double c_p_loan = 0;
		//  
		if(validFrom != null) {
			i_p_loan = getConcept(loanDefinition.getLoan_I_Concept_ID(), validFrom, m_breakDate);
			i_p_sp_loan = getConcept(loanDefinition.getLoan_I_SP_Concept_ID(), validFrom, m_breakDate);
			c_p_loan = getConcept(loanDefinition.getLoan_C_Concept_ID(), validFrom, m_breakDate);
			c_p_loan += getConcept(loanDefinition.getLoan_C_Concept_ID());
			//	Add Special Payment
			c_p_loan += i_p_sp_loan;
		}
		//  Calculate Difference
		a_p_loan = i_p_loan - c_p_loan;
		//  Loan Is Paid
		if(a_p_loan <= 0)
			return 0.0;
		//	Return
		return a_p_loan;
	}
	
	/**
	 * Get Current Interest Balance
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 16:49:46
	 * @param p_Concept
	 * @return
	 * @return double
	 */
	public double getCurrentLoanBalanceInterestAmt(String p_Concept) {
		return getCurrentLoanBalanceInterestAmt(p_Concept, null);
	}
	
	/**
	 * Get Current Interest Balance
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 10:37:10
	 * @param p_LoanValue
	 * @param m_breakDate
	 * @return
	 * @return double
	 */
	public double getCurrentLoanBalanceInterestAmt(String p_LoanValue, Timestamp m_breakDate) {
		//	Valid (Valid From)
		if(m_breakDate == null)
			m_breakDate = m_dateTo;
		//	
		MLVEHRLoanDefinition loanDefinition = MLVEHRLoanDefinition.forValue(getCtx(), p_LoanValue);
		if(loanDefinition == null)
			return 0.0;
		//	
		Timestamp validFrom = getValidFromConcept(loanDefinition.getLoan_F_Concept_ID(), m_breakDate);
		//  Var
		double cin_p_loan = 0;
		//  
		if(validFrom != null) {
			cin_p_loan = getConcept(loanDefinition.getInterest_C_Concept_ID(), validFrom, m_breakDate);
			cin_p_loan += getConcept(loanDefinition.getInterest_C_Concept_ID());
		}
		//	Return
		return cin_p_loan;
	}
	
	/**
	 * Get Current Loan Balance
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 05/05/2014, 22:23:50
	 * @param p_Concept
	 * @return
	 * @return double
	 */
	public double getCurrentLoanBalanceAmt(String p_Concept){
		return getCurrentLoanBalanceAmt(p_Concept, null);
	}
	
	/**
	 * Get Valid From in all payroll
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 30/05/2014, 17:15:21
	 * @param conceptValue
	 * @param m_breakDate
	 * @return
	 * @return Timestamp
	 */
	public Timestamp getValidFromConcept(String conceptValue, Timestamp m_breakDate) {
		return getValidFromConcept(conceptValue, null, m_breakDate, false);
	}
	
	/**
	 * Get Valid From Concept
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 26/03/2014, 21:28:54
	 * @param conceptValue
	 * @param payrollValue
	 * @param m_breakDate
	 * @param mandatoryPayroll
	 * @return
	 * @return Timestamp
	 */
	public Timestamp getValidFromConcept(String conceptValue, String payrollValue, Timestamp m_breakDate, boolean mandatoryPayroll){

		int payroll_id;
		if (payrollValue == null)
		{
			payroll_id = getHR_Payroll_ID();
		}
		else
		{
			MHRPayroll payroll = MHRPayroll.forValue(getCtx(), payrollValue);
			if(payroll == null)
				return null;
			//	
			payroll_id = payroll.get_ID();
		}
		
		MHRConcept concept = MHRConcept.forValue(getCtx(), conceptValue);
		if (concept == null)
			return null;
		//
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//check client
		whereClause.append("AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_HR_Concept_ID + "=?");
		params.add(concept.get_ID());
		//check partner
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_C_BPartner_ID  + "=?");
		params.add(m_C_BPartner_ID);
		//	check valid from
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_ValidFrom  + "<=?");
		//	
		params.add(m_breakDate);

		//check process and payroll
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Process p"
							+ " WHERE HR_Movement.HR_Process_ID = p.HR_Process_ID" 
							+ " AND p.DocStatus IN('CO', 'CL')");
		//	
		if(mandatoryPayroll) {
			whereClause.append(" AND p.HR_Payroll_ID=?)");
			params.add(payroll_id);
		} else 
			whereClause.append(")");
		//	
		MHRMovement movement = new Query(getCtx(), MHRMovement.Table_Name, whereClause.toString(), get_TrxName())
				.setParameters(params)
				.setOrderBy(MHRMovement.COLUMNNAME_ValidFrom + " DESC")
				.first();
		if (movement == null)
			return null;
		//	Result
		return movement.getValidFrom();

	} // getValidFromConcept
	
	/**
	 * Get Valid from in process
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 02/09/2014, 16:01:15
	 * @param pconcept
	 * @return
	 * @return Timestamp
	 */
	public Timestamp getValidFromConcept (String pconcept) {
		MHRConcept concept = MHRConcept.forValue(getCtx(), pconcept.trim());
		if (concept == null) {
			return null; // TODO throw exception ?
		}

		MHRMovement m = m_movement.get(concept.get_ID());
		if (m == null) {
			createMovementFromConcept(concept, concept.isPrinted());
			m = m_movement.get(concept.get_ID());
		}
		//	Not null
		if(m != null)
			return m.getValidFrom();
		//	Return null
		return null;
	} // getConceptDate
	
	
	/**
	 * Get Vaid from with ID
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 22:24:49
	 * @param m_HR_Concept_ID
	 * @param m_breakDate
	 * @return
	 * @return Timestamp
	 */
	public Timestamp getValidFromConcept(int m_HR_Concept_ID, Timestamp m_breakDate) {
		
		if (m_HR_Concept_ID == 0)
			return null;
		//
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//check client
		whereClause.append("AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_HR_Concept_ID + "=?");
		params.add(m_HR_Concept_ID);
		//check partner
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_C_BPartner_ID  + "=?");
		params.add(m_C_BPartner_ID);
		//	check valid from
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_ValidFrom  + "<=?");
		//	
		params.add(m_breakDate);

		//check process and payroll
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Process p"
							+ " WHERE HR_Movement.HR_Process_ID = p.HR_Process_ID" 
							+ " AND p.DocStatus IN('CO', 'CL'))");
		//	
		MHRMovement movement = new Query(getCtx(), MHRMovement.Table_Name, whereClause.toString(), get_TrxName())
				.setParameters(params)
				.setOrderBy(MHRMovement.COLUMNNAME_ValidFrom + " DESC")
				.first();
		if (movement == null)
			return null;
		//	Result
		return movement.getValidFrom();

	} // getValidFromConcept
	
	/**
	 * Get Valid To Concept with ID
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 30/06/2014, 23:06:40
	 * @param m_HR_Concept_ID
	 * @param m_breakDate
	 * @return
	 * @return Timestamp
	 */
	public Timestamp getValidToConcept(int m_HR_Concept_ID, Timestamp m_breakDate) {
		
		if (m_HR_Concept_ID == 0)
			return null;
		//
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//check client
		whereClause.append("AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_HR_Concept_ID + "=?");
		params.add(m_HR_Concept_ID);
		//check partner
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_C_BPartner_ID  + "=?");
		params.add(m_C_BPartner_ID);
		//	check valid from
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_ValidFrom  + "<=?");
		//	
		params.add(m_breakDate);

		//check process and payroll
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Process p"
							+ " WHERE HR_Movement.HR_Process_ID = p.HR_Process_ID" 
							+ " AND p.DocStatus IN('CO', 'CL'))");
		//	
		MHRMovement movement = new Query(getCtx(), MHRMovement.Table_Name, whereClause.toString(), get_TrxName())
				.setParameters(params)
				.setOrderBy(MHRMovement.COLUMNNAME_ValidTo + " DESC")
				.first();
		if (movement == null)
			return null;
		//	Result
		return movement.getValidTo();

	} // getValidFromConcept
	
	/**
	 * Get sum Concept from any payrrol
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/03/2014, 09:10:13
	 * @param conceptValue
	 * @param from
	 * @param to
	 * @return
	 * @return double
	 */
	public double getConcept (String conceptValue, Timestamp from,Timestamp to){
		MHRConcept concept = MHRConcept.forValue(getCtx(), conceptValue);
		if (concept == null)
			return 0.0;
		//
		// Detect field name
		final String fieldName;
		if (MHRConcept.COLUMNTYPE_Quantity.equals(concept.getColumnType())) {
			fieldName = MHRMovement.COLUMNNAME_Qty;
		} else if (MHRConcept.COLUMNTYPE_Amount.equals(concept.getColumnType())) {
			fieldName = MHRMovement.COLUMNNAME_Amount;
		} else {
			return 0; // TODO: throw exception?
		}
		//
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//check client
		whereClause.append("AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_HR_Concept_ID + "=?");
		params.add(concept.get_ID());
		//check partner
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_C_BPartner_ID  + "=?");
		params.add(m_C_BPartner_ID);
		//Adding dates 
		whereClause.append(" AND validTo BETWEEN ? AND ?");
		//	Completed
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Process p"
				+ " WHERE HR_Movement.HR_Process_ID = p.HR_Process_ID" 
				+ " AND p.DocStatus IN('CO', 'CL'))");
		//	
		params.add(from);
		params.add(to);
		//
		StringBuffer sql = new StringBuffer("SELECT COALESCE(SUM(").append(fieldName).append("),0) FROM ").append(MHRMovement.Table_Name)
								.append(" WHERE ").append(whereClause);
		BigDecimal value = DB.getSQLValueBDEx(get_TrxName(), sql.toString(), params);
		return value.doubleValue();
		
	} // getConcept
	
	/**
	 * Get Date Concept from any payrrol
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 27/03/2014, 09:10:13
	 * @param conceptValue
	 * @param from
	 * @param to
	 * @return
	 * @return Timestamp
	 */
	public Timestamp getConceptDate(String conceptValue, Timestamp from, Timestamp to){
		return getConceptDate(conceptValue, null, from, to);
	} // getConcept
	
	/**
	 * Get Concept Date with payroll
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 15/08/2014, 11:35:59
	 * @param conceptValue
	 * @param payrollValue
	 * @param from
	 * @param to
	 * @return
	 * @return Timestamp
	 */
	public Timestamp getConceptDate(String conceptValue, String payrollValue, Timestamp from, Timestamp to) {
		MHRConcept concept = MHRConcept.forValue(getCtx(), conceptValue);
		if (concept == null)
			return null;
		//	
		int payroll_id;
		if (payrollValue == null) {
			payroll_id = getHR_Payroll_ID();
		} else {
			MHRPayroll payroll = MHRPayroll.forValue(getCtx(), payrollValue);
			if(payroll == null)
				return null;
			//	
			payroll_id = payroll.get_ID();
		}
		//
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//check client
		whereClause.append("AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_HR_Concept_ID + "=?");
		params.add(concept.get_ID());
		//check partner
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_C_BPartner_ID  + "=?");
		params.add(m_C_BPartner_ID);
		//Adding dates 
		whereClause.append(" AND validTo BETWEEN ? AND ?");
		//	
		params.add(from);
		params.add(to);
		//	Completed
		whereClause.append(" AND EXISTS (");
		//	Add Where
		whereClause.append("SELECT 1 FROM HR_Process p"
				+ " WHERE HR_Movement.HR_Process_ID = p.HR_Process_ID" 
				+ " AND p.DocStatus IN('CO', 'CL')");
		//	Add Payroll
		if(payroll_id != 0) {
			whereClause.append(" AND p.HR_Payroll_ID = ?");
			params.add(payroll_id);
		}
		//	Add ")"
		whereClause.append(")");
		//
		StringBuffer sql = new StringBuffer("SELECT MAX(ServiceDate) ServiceDate FROM ").append(MHRMovement.Table_Name)
								.append(" WHERE ").append(whereClause);	
		Timestamp serviceDate = DB.getSQLValueTSEx(get_TrxName(), sql.toString(), params);
		return serviceDate;
		
	} // getConcept
	
	/**
	 * Get Concept Date with ID
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 30/06/2014, 22:29:51
	 * @param m_HR_Concept_ID
	 * @param from
	 * @param to
	 * @return
	 * @return Timestamp
	 */
	public Timestamp getConceptDate(int m_HR_Concept_ID, Timestamp from,Timestamp to){
		MHRConcept concept = MHRConcept.get(getCtx(), m_HR_Concept_ID);
		if (concept == null)
			return null;
		//
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//check client
		whereClause.append("AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_HR_Concept_ID + "=?");
		params.add(concept.get_ID());
		//check partner
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_C_BPartner_ID  + "=?");
		params.add(m_C_BPartner_ID);
		//Adding dates 
		whereClause.append(" AND validTo BETWEEN ? AND ?");
		//	Completed
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Process p"
				+ " WHERE HR_Movement.HR_Process_ID = p.HR_Process_ID" 
				+ " AND p.DocStatus IN('CO', 'CL'))");
		//	
		params.add(from);
		params.add(to);
		//
		StringBuffer sql = new StringBuffer("SELECT MAX(ServiceDate) ServiceDate FROM ").append(MHRMovement.Table_Name)
								.append(" WHERE ").append(whereClause);	
		Timestamp serviceDate = DB.getSQLValueTSEx(get_TrxName(), sql.toString(), params);
		return serviceDate;
		
	} // getConcept

	/**
	 * Get Concept with ID
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 22:43:49
	 * @param m_HR_Concept_ID
	 * @param from
	 * @param to
	 * @return
	 * @return double
	 */
	public double getConcept (int m_HR_Concept_ID, Timestamp from,Timestamp to){
		MHRConcept concept = MHRConcept.get(getCtx(), m_HR_Concept_ID);
		if (concept == null)
			return 0.0;
		//
		// Detect field name
		final String fieldName;
		if (MHRConcept.COLUMNTYPE_Quantity.equals(concept.getColumnType())) {
			fieldName = MHRMovement.COLUMNNAME_Qty;
		} else if (MHRConcept.COLUMNTYPE_Amount.equals(concept.getColumnType())) {
			fieldName = MHRMovement.COLUMNNAME_Amount;
		} else {
			return 0; // TODO: throw exception?
		}
		//
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//check client
		whereClause.append("AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_HR_Concept_ID + "=?");
		params.add(concept.get_ID());
		//check partner
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_C_BPartner_ID  + "=?");
		params.add(m_C_BPartner_ID);
		//Adding dates 
		whereClause.append(" AND validTo BETWEEN ? AND ?");
		//	Completed
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Process p"
				+ " WHERE HR_Movement.HR_Process_ID = p.HR_Process_ID" 
				+ " AND p.DocStatus IN('CO', 'CL'))");
		//	
		params.add(from);
		params.add(to);
		//
		StringBuffer sql = new StringBuffer("SELECT COALESCE(SUM(").append(fieldName).append("),0) FROM ").append(MHRMovement.Table_Name)
								.append(" WHERE ").append(whereClause);
		BigDecimal value = DB.getSQLValueBDEx(get_TrxName(), sql.toString(), params);
		return value.doubleValue();
		
	} // getConcept
	
	/**
	 * Get Concept String with ID
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 22:43:49
	 * @param m_HR_Concept_ID
	 * @param from
	 * @param to
	 * @return
	 * @return double
	 */
	public String getConceptString (int m_HR_Concept_ID, Timestamp from,Timestamp to){
		MHRConcept concept = MHRConcept.get(getCtx(), m_HR_Concept_ID);
		if (concept == null)
			return null;
		//
		// Detect field name
		if (!MHRConcept.COLUMNTYPE_Text.equals(concept.getColumnType()))
			return null;
		//
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//check client
		whereClause.append("AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_HR_Concept_ID + "=?");
		params.add(concept.get_ID());
		//check partner
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_C_BPartner_ID  + "=?");
		params.add(m_C_BPartner_ID);
		//Adding dates 
		whereClause.append(" AND validTo BETWEEN ? AND ?");
		//	Completed
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Process p"
				+ " WHERE HR_Movement.HR_Process_ID = p.HR_Process_ID" 
				+ " AND p.DocStatus IN('CO', 'CL'))");
		//	Order By
		String orderBy = " ORDER BY " + MHRMovement.COLUMNNAME_ValidFrom + " DESC";
		//	
		params.add(from);
		params.add(to);
		//
		StringBuffer sql = new StringBuffer("SELECT ").append(I_HR_Movement.COLUMNNAME_TextMsg).append(" FROM ").append(MHRMovement.Table_Name)
								.append(" WHERE ").append(whereClause).append(orderBy);
		String value = DB.getSQLValueStringEx(get_TrxName(), sql.toString(), params);
		return value;
		
	} // getConcept
	
	/**
	 * Helper Method : Get Attribute [get Attribute to search key concept ]
	 * @param pConcept - Value to Concept
	 * @return	Amount of concept, applying to employee
	 */ 
	public double getAttribute (String pConcept){
		return getAttribute(pConcept, m_dateFrom);
	}
	
	/**
	 * Get Attribute with valid from
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 22/04/2014, 10:29:05
	 * @param pConcept
	 * @param m_validFrom
	 * @return
	 * @return double
	 */
	public double getAttribute (String pConcept, Timestamp m_validFrom)
	{
		MHRConcept concept = MHRConcept.forValue(getCtx(), pConcept);
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
		
		if(m_HR_Payroll_ID > 0)
		{
			whereClause.append(" AND (HR_Payroll_ID=? OR HR_Payroll_ID IS NULL)");
			params.add(m_HR_Payroll_ID);
		}
		if(m_HR_Department_ID > 0)
		{
			whereClause.append(" AND (HR_Department_ID=? OR HR_Department_ID IS NULL)");
			params.add(m_HR_Department_ID);	
		}
		if(m_HR_Job_ID > 0)
		{
			whereClause.append(" AND (HR_Job_ID=? OR HR_Job_ID IS NULL)");
			params.add(m_HR_Job_ID);
		}

		//check concept
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Concept c WHERE c.HR_Concept_ID=HR_Attribute.HR_Concept_ID" 
				+ " AND c.Value = ?)");
		params.add(pConcept);
		//
		if (!concept.getType().equals(MHRConcept.TYPE_Information))
		{
			whereClause.append(" AND " + MHRAttribute.COLUMNNAME_C_BPartner_ID + " = ?");
			params.add(m_C_BPartner_ID);
		}

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
	
	/**
	 * Get Attribute from concept ID
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 22:48:14
	 * @param m_HR_Concept_ID
	 * @param m_validFrom
	 * @return
	 * @return double
	 */
	public double getAttribute (int m_HR_Concept_ID, Timestamp m_validFrom)
	{
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
		
		if(m_HR_Payroll_ID > 0)
		{
			whereClause.append(" AND (HR_Payroll_ID=? OR HR_Payroll_ID IS NULL)");
			params.add(m_HR_Payroll_ID);
		}
		if(m_HR_Department_ID > 0)
		{
			whereClause.append(" AND (HR_Department_ID=? OR HR_Department_ID IS NULL)");
			params.add(m_HR_Department_ID);	
		}
		if(m_HR_Job_ID > 0)
		{
			whereClause.append(" AND (HR_Job_ID=? OR HR_Job_ID IS NULL)");
			params.add(m_HR_Job_ID);
		}

		//check concept
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Concept c WHERE c.HR_Concept_ID=HR_Attribute.HR_Concept_ID" 
				+ " AND c.Value = ?)");
		params.add(concept.getValue());
		//
		if (!concept.getType().equals(MHRConcept.TYPE_Information))
		{
			whereClause.append(" AND " + MHRAttribute.COLUMNNAME_C_BPartner_ID + " = ?");
			params.add(m_C_BPartner_ID);
		}
		whereClause.append(" AND IsActive=?");
		params.add(true);
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
	
	/**
	 * Get Last Concept with Valid From
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/05/2014, 21:28:43
	 * @param conceptValue
	 * @param payrollValue
	 * @return
	 * @return double
	 */
	public double getLastConcept (String conceptValue, String payrollValue){
		return getLastConcept (conceptValue, payrollValue, m_dateFrom);
	}
	
	public Timestamp getLastConceptDate (String conceptValue, String payrollValue){
		return getLastConceptDate (conceptValue, payrollValue, m_dateFrom);
	}
	/**
	 * Get Last Concept
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/05/2014, 21:27:41
	 * @param conceptValue
	 * @param payrollValue
	 * @param breakDate
	 * @return
	 * @return double
	 */
	public double getLastConcept (String conceptValue, String payrollValue, Timestamp breakDate){
		int payroll_id;
		if (payrollValue == null)
		{
			payroll_id = getHR_Payroll_ID();
		}
		else
		{
			MHRPayroll payroll = MHRPayroll.forValue(getCtx(), payrollValue);
			if(payroll == null)
				return 0.0;
			//	
			payroll_id = payroll.get_ID();
		}
		
		MHRConcept concept = MHRConcept.forValue(getCtx(), conceptValue);
		if (concept == null)
			return 0.0;
		//
		// Detect field name
		final String fieldName;
		if (MHRConcept.COLUMNTYPE_Quantity.equals(concept.getColumnType()))
		{
			fieldName = MHRMovement.COLUMNNAME_Qty;
		}
		else if (MHRConcept.COLUMNTYPE_Amount.equals(concept.getColumnType()))
		{
			fieldName = MHRMovement.COLUMNNAME_Amount;
		}
		else
		{
			return 0; // TODO: throw exception?
		}
		//
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//check client
		whereClause.append("AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_HR_Concept_ID + "=?");
		params.add(concept.get_ID());
		//check partner
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_C_BPartner_ID  + "=?");
		params.add(m_C_BPartner_ID);
		//Adding dates 
		whereClause.append(" AND validTo <= ?");
		params.add(breakDate);
		//
		//check process and payroll
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Process p"
							+" WHERE HR_Movement.HR_Process_ID = p.HR_Process_ID" 
							+" AND p.HR_Payroll_ID=?");

		params.add(payroll_id);
		
		whereClause.append(")");
		//
		StringBuffer sql = new StringBuffer("SELECT COALESCE(").append(fieldName).append(", 0) FROM ").append(MHRMovement.Table_Name)
								.append(" WHERE ").append(whereClause).append(" ORDER BY " + I_HR_Movement.COLUMNNAME_ValidFrom + " DESC");
		BigDecimal value = DB.getSQLValueBDEx(get_TrxName(), sql.toString(), params);
		if(value != null)
			return value.doubleValue();
		//	Default
		return 0.0;
		
	} // getConcept
		
	
	public Timestamp getLastConceptDate (String conceptValue, String payrollValue, Timestamp breakDate){
		int payroll_id;
		if (payrollValue == null)
		{
			payroll_id = getHR_Payroll_ID();
		}
		else
		{
			MHRPayroll payroll = MHRPayroll.forValue(getCtx(), payrollValue);
			if(payroll == null)
				return null;
			//	
			payroll_id = payroll.get_ID();
		}
		
		MHRConcept concept = MHRConcept.forValue(getCtx(), conceptValue);
		if (concept == null)
			return null;
		//
		// Detect field name
		final String fieldName;
		if (MHRConcept.COLUMNTYPE_Date.equals(concept.getColumnType()))
		{
			fieldName = MHRMovement.COLUMNTYPE_Date;
		}
		else
		{
			return null; // TODO: throw exception?
		}
		//
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//check client
		whereClause.append("AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//check concept
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_HR_Concept_ID + "=?");
		params.add(concept.get_ID());
		//check partner
		whereClause.append(" AND " + MHRMovement.COLUMNNAME_C_BPartner_ID  + "=?");
		params.add(m_C_BPartner_ID);
		//Adding dates 
		whereClause.append(" AND validTo <= ?");
		params.add(breakDate);
		//
		//check process and payroll
		whereClause.append(" AND EXISTS (SELECT 1 FROM HR_Process p"
							+" WHERE HR_Movement.HR_Process_ID = p.HR_Process_ID" 
							+" AND p.HR_Payroll_ID=?");

		params.add(payroll_id);
		
		whereClause.append(")");
		//
		StringBuffer sql = new StringBuffer("SELECT MAX(ServiceDate) ServiceDate FROM ").append(MHRMovement.Table_Name)
				.append(" WHERE ").append(whereClause);	
		
		Timestamp serviceDate = DB.getSQLValueTSEx(get_TrxName(), sql.toString(), params);
		
		if(serviceDate != null)
		return serviceDate;
		
		return null;
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
	 * Get Employee Valid From
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/07/2014, 18:13:02
	 * @return
	 * @return Timestamp
	 */
	public Timestamp getEmployeeValidFrom() {
		return m_E_VFrom;
	}
	
	/**
	 * Get Employee Valid To
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/07/2014, 18:13:11
	 * @return
	 * @return Timestamp
	 */
	public Timestamp getEmployeeValidTo() {
		return m_E_VTo;
	}
	
	/**
	 * Set Employe Valid From
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/07/2014, 18:14:09
	 * @param m_E_VFrom
	 * @return void
	 */
	public void setEmployeeValidFrom(Timestamp m_E_VFrom) {
		this.m_E_VFrom = m_E_VFrom;
	}
	
	/**
	 * Set Employee Valid To
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/07/2014, 18:14:23
	 * @param m_E_VTo
	 * @return void
	 */
	public void setEmployeeValidTo(Timestamp m_E_VTo) {
		this.m_E_VFrom = m_E_VTo;
	}
	
	/**********************************************************************************
	 * Helper Method for Family from Employee                                         *
	 **********************************************************************************/
	
	/**
	 * Get Employee Kinsmen
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 02/07/2014, 22:05:42
	 * @param p_Relationship
	 * @param p_Degree
	 * @param p_Turn
	 * @param p_OnlyDepending
	 * @param p_OnlyScholarship
	 * @param p_OnlyActiveStudent
	 * @return
	 * @return MUser[]
	 */
	public MUser[] getEmployeeKinsmen(String p_Relationship, String p_Degree, String p_Turn, 
			boolean p_OnlyDepending, boolean p_OnlyScholarship, boolean p_OnlyActiveStudent) {
		
		StringBuffer whereClause = new StringBuffer();
		//	Parameters
		ArrayList<Object> params = new ArrayList<Object>();
		//	Add Business Partner
		whereClause.append(I_AD_User.COLUMNNAME_C_BPartner_ID).append("= ?");
		params.add(m_C_BPartner_ID);
		//	Add Relationship
		if(p_Relationship != null
				&& p_Relationship.length() > 0) {
			whereClause.append(" AND ").append(I_AD_User.COLUMNNAME_Relationship).append("= ?");
			params.add(p_Relationship);
		} else {
			whereClause.append(" AND ").append(I_AD_User.COLUMNNAME_Relationship).append(" IS NOT NULL");
		}
		//	Add Degree
		if(p_Degree != null
				&& p_Degree.length() > 0) {
			whereClause.append(" AND ").append(I_AD_User.COLUMNNAME_Degree).append("= ?");
			params.add(p_Degree);
		}
		//	Add Turn
		if(p_Turn != null
				&& p_Turn.length() > 0) {
			whereClause.append(" AND ").append(I_AD_User.COLUMNNAME_Turn).append("= ?");
			params.add(p_Turn);
		}
		//	Add Only Depending
		if(p_OnlyDepending) {
			whereClause.append(" AND ").append(I_AD_User.COLUMNNAME_IsDepending).append("= ?");
			params.add(true);
		}
		//	Add Only Scholarship
		if(p_OnlyScholarship) {
			whereClause.append(" AND ").append(I_AD_User.COLUMNNAME_IsScholarship).append("= ?");
			params.add(true);
		}
		//	Add Only Active Student
		if(p_OnlyActiveStudent) {
			whereClause.append(" AND ").append(I_AD_User.COLUMNNAME_IsActiveStudent).append("= ?");
			params.add(true);
		}
		//	Get Family
		List<MUser> list = new Query(getCtx(), I_AD_User.Table_Name, whereClause.toString(), get_TrxName())
				.setParameters(params)
				.setOnlyActiveRecords(true)
				.<MUser>list();
		//	Convert to Array
		MUser [] users = new MUser[list.size()];
		list.toArray(users);
		//	
		return users;
	}
	
	/**
	 * Get Employee Kinsman
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 01/07/2014, 21:32:01
	 * @param p_Relationship
	 * @param p_Degree
	 * @param p_Turn
	 * @param p_OnlyDepending
	 * @param p_OnlyScholarship
	 * @param p_OnlyActiveStudent
	 * @return
	 * @return MUser
	 */
	public MUser getEmployeeKinsman(String p_Relationship, String p_Degree, String p_Turn, 
			boolean p_OnlyDepending, boolean p_OnlyScholarship, boolean p_OnlyActiveStudent) {
		
		StringBuffer whereClause = new StringBuffer();
		//	Parameters
		ArrayList<Object> params = new ArrayList<Object>();
		//	Add Business Partner
		whereClause.append(I_AD_User.COLUMNNAME_C_BPartner_ID).append("= ?");
		params.add(m_C_BPartner_ID);
		//	Add Relationship
		if(p_Relationship != null
				&& p_Relationship.length() > 0) {
			whereClause.append(" AND ").append(I_AD_User.COLUMNNAME_Relationship).append("= ?");
			params.add(p_Relationship);
		} else {
			whereClause.append(" AND ").append(I_AD_User.COLUMNNAME_Relationship).append(" IS NOT NULL");
		}
		//	Add Degree
		if(p_Degree != null
				&& p_Degree.length() > 0) {
			whereClause.append(" AND ").append(I_AD_User.COLUMNNAME_Degree).append("= ?");
			params.add(p_Degree);
		}
		//	Add Turn
		if(p_Turn != null
				&& p_Turn.length() > 0) {
			whereClause.append(" AND ").append(I_AD_User.COLUMNNAME_Turn).append("= ?");
			params.add(p_Turn);
		}
		//	Add Only Depending
		if(p_OnlyDepending) {
			whereClause.append(" AND ").append(I_AD_User.COLUMNNAME_IsDepending).append("= ?");
			params.add(true);
		}
		//	Add Only Scholarship
		if(p_OnlyScholarship) {
			whereClause.append(" AND ").append(I_AD_User.COLUMNNAME_IsScholarship).append("= ?");
			params.add(true);
		}
		//	Add Only Active Student
		if(p_OnlyActiveStudent) {
			whereClause.append(" AND ").append(I_AD_User.COLUMNNAME_IsActiveStudent).append("= ?");
			params.add(true);
		}
		//	Get Family
		MUser kinsman = new Query(getCtx(), I_AD_User.Table_Name, whereClause.toString(), get_TrxName())
				.setParameters(params)
				.setOnlyActiveRecords(true)
				.first();
		//	
		return kinsman;
	}
	
	/**
	 * Get Kinsman Relationship
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 01/07/2014, 21:52:24
	 * @param p_Kinsman
	 * @return
	 * @return String
	 */
	public String getKinRelationship(MUser p_Kinsman) {
		if(p_Kinsman == null)
			return "";
		//	Get
		return MRefList.getListName(getCtx(), 
				X_AD_User.RELATIONSHIP_AD_Reference_ID, p_Kinsman.getRelationship());
	}
	
	/**
	 * Get Kinsman Degree
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 01/07/2014, 21:53:25
	 * @param p_Kinsman
	 * @return
	 * @return String
	 */
	public String getKinDegree(MUser p_Kinsman) {
		if(p_Kinsman == null)
			return "";
		//	Get
		return MRefList.getListName(getCtx(), 
				X_AD_User.DEGREE_AD_Reference_ID, p_Kinsman.getDegree());
	}
	
	/**
	 * Get Kinsman Turn
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 01/07/2014, 21:53:48
	 * @param p_Kinsman
	 * @return
	 * @return String
	 */
	public String getKinTurn(MUser p_Kinsman) {
		if(p_Kinsman == null)
			return "";
		//	Get
		return MRefList.getListName(getCtx(), 
				X_AD_User.TURN_AD_Reference_ID, p_Kinsman.getTurn());
	}
	
	/**
	 * Get Kinsman Gender
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 01/07/2014, 23:02:42
	 * @param p_Kinsman
	 * @return
	 * @return String
	 */
	public String getKinGender(MUser p_Kinsman) {
		if(p_Kinsman == null)
			return "";
		//	Get
		return MRefList.getListName(getCtx(), 
				X_AD_User.GENDER_AD_Reference_ID, p_Kinsman.getGender());
	}
	
	/**
	 * Get Kinsman Age
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 01/07/2014, 22:33:28
	 * @param p_Kinsman
	 * @return
	 * @return int
	 */
	public int getKinAge(MUser p_Kinsman) {
		return getKinAge(p_Kinsman, getDateAcct());
	}
	
	/**
	 * Get Kinsman Age with Document Date
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/08/2014, 15:55:58
	 * @param p_Kinsman
	 * @param p_DateDoc
	 * @return
	 * @return int
	 */
	public int getKinAge(MUser p_Kinsman, Timestamp p_DateDoc) {
		if(p_Kinsman == null
				|| p_Kinsman.getBirthday() == null)
			return 0;
		//	Get
		return getYearDiff(p_Kinsman.getBirthday(), p_DateDoc);
	}
	
	/**
	 * Get Kinsman Age Month from current year
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 21/07/2014, 18:09:11
	 * @param p_Kinsman
	 * @return
	 * @return int
	 */
	public int getKinAgeMonth(MUser p_Kinsman) {
		return getKinAgeMonth(p_Kinsman, getDateAcct());
	}
	
	/**
	 * Get Kinsman Age Month from current year with Document Date
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/08/2014, 15:57:37
	 * @param p_Kinsman
	 * @param p_DateDoc
	 * @return
	 * @return int
	 */
	public int getKinAgeMonth(MUser p_Kinsman, Timestamp p_DateDoc) {
		if(p_Kinsman == null
				|| p_Kinsman.getBirthday() == null)
			return 0;
		//	Get Year
		int years = getKinAge(p_Kinsman);
		//	Get Current Birthday Year
		Timestamp currentYearBirthday = getYearTo(p_Kinsman.getBirthday(), years);
		//	Get Month
		int months = getMonths(currentYearBirthday, p_DateDoc);
		//	Return
		return months;
	}
	
	/**********************************************************************************
	 * Helper Method for Provision from Department, Job and Employee                  *
	 **********************************************************************************/
	
	/**
	 * Get Combination from Department
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 08/07/2014, 00:27:20
	 * @param p_HR_Department_ID
	 * @return
	 * @return MLVEHRPCombination[]
	 */
	public MLVEHRPCombination [] getDepartment_P_Combination(int p_HR_Department_ID) {
		if(isDepartment_IsUniqueForProvision() 
				|| (!isJob_IsUniqueForProvision() && !isBPartner_IsUniqueForProvision()))
			return MLVEHRPCombination.getOfDepartment(getCtx(), 
					p_HR_Department_ID, m_HR_Payroll_ID, get_TrxName());
		//	Return
		return null;
	}
	
	/**
	 * Get Combination from Job
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 08/07/2014, 00:27:53
	 * @param p_HR_Job_ID
	 * @return
	 * @return MLVEHRPCombination[]
	 */
	public MLVEHRPCombination [] getJob_P_Combination(int p_HR_Job_ID) {
		if(isJob_IsUniqueForProvision() 
				|| (!isDepartment_IsUniqueForProvision() && !isBPartner_IsUniqueForProvision()))
			return MLVEHRPCombination.getOfJob(getCtx(), 
					p_HR_Job_ID, m_HR_Payroll_ID, get_TrxName());
		//	Return
		return null;
	}
	
	/**
	 * Get Combination from Business Partner
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 08/07/2014, 00:28:50
	 * @param p_C_BPartner_ID
	 * @return
	 * @return MLVEHRPCombination[]
	 */
	public MLVEHRPCombination [] getBPartner_P_Combination(int p_C_BPartner_ID) {
		if(isBPartner_IsUniqueForProvision() 
				|| (!isDepartment_IsUniqueForProvision() && !isJob_IsUniqueForProvision()))
			return MLVEHRPCombination.getOfBPartner(getCtx(), 
					p_C_BPartner_ID, m_HR_Payroll_ID, get_TrxName());
		//	Return
		return null;
	}
	
	/**
	 * Get Provision array from Provision Type
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 10/07/2014, 00:26:54
	 * @param p_LVE_HR_ProvisionType_ID
	 * @return
	 * @return MLVEHRProvision[]
	 */
	public MLVEHRProvision [] getProvisionFromType(int p_LVE_HR_ProvisionType_ID) {
		return MLVEHRProvisionType.getProvisionLineWrapper(getCtx(), p_LVE_HR_ProvisionType_ID);
	}
	
	/**
	 * Get All Provision from All Combination
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 15/07/2014, 22:53:54
	 * @param combinations
	 * @return
	 * @return MLVEHRProvision[]
	 */
	public MLVEHRProvision [] getAllProvision(MLVEHRPCombination [] combinations) {
		//	Valid null
		if(combinations == null)
			return null;
		//	Instance Provisions
		ArrayList<MLVEHRProvision> list = new ArrayList<MLVEHRProvision>();
		//	Iterate
		for (MLVEHRPCombination combination : combinations) {
			//	Get from Provision
			if(combination.getLVE_HR_Provision_ID() != 0) {
				//	Get Provision
				MLVEHRProvision provision = MLVEHRProvision.getProvisionWrapper(getCtx(), 
						combination.getLVE_HR_Provision_ID());
				//	Set Description
				provision.setDescription(combination.getDescription());
				//	Set Quantity
				provision.setQty(combination.getQty());
				//	Set Combination
				provision.setLVE_HR_P_Combination_ID(combination.getLVE_HR_P_Combination_ID());
				//	Add Provision
				list.add(provision);
			} else if(combination.getLVE_HR_ProvisionType_ID() != 0) {
				//	Get Provisions from Type
				MLVEHRProvision [] provisionFromType = MLVEHRProvisionType
						.getProvisionLineWrapper(getCtx(), combination.getLVE_HR_ProvisionType_ID());
				//	Add Provisions
				for (MLVEHRProvision provision : provisionFromType) {
					//	Set Description
					provision.setDescription(combination.getDescription());
					//	Set Quantity
					provision.setQty(combination.getQty());
					//	Set Combination
					provision.setLVE_HR_P_Combination_ID(combination.getLVE_HR_P_Combination_ID());
					//	Add Provision
					list.add(provision);
				}
			}
		}
		//	To Array
		MLVEHRProvision [] provisions = new MLVEHRProvision[list.size()];
		list.toArray(provisions);
		//	Return
		return provisions;
	}
	
	/**
	 * Get Measure Name from Provision
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 17/07/2014, 23:48:39
	 * @param provision
	 * @return
	 * @return String
	 */
	public String getMeasure(MLVEHRProvision provision) {
		//	Valid Provision
		if(provision == null)
			return "";
		//	
		MLVEHRBPMeasures bpMeasure = MLVEHRBPMeasures.get(getCtx(), m_C_BPartner_ID, provision.getType());
		//	No Measure
		if(bpMeasure == null)
			return "";
		MUOM uom = MUOM.get(getCtx(), bpMeasure.getC_UOM_ID());
		//	Return Name
		return uom.getName();
	}
	
	/**
	 * Get Product Code from Provision
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 10/07/2014, 00:00:43
	 * @param provision
	 * @return
	 * @return String
	 */
	public String getProductCode(MLVEHRProvision provision) {
		if(provision == null)
			return "";
		//	Valid Product
		if(provision.getM_Product_ID() == 0)
			return "";
		//	Get Product
		MProduct product = MProduct.get(getCtx(), provision.getM_Product_ID());
		//	Return
		return product.getValue();
	}
	
	/**
	 * Get Unique for Provision from Business Partner
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/07/2014, 11:11:08
	 * @return
	 * @return boolean
	 */
	public boolean isBPartner_IsUniqueForProvision() {
		MBPartner m_BPartner = MBPartner.get(getCtx(), m_C_BPartner_ID);
		if(m_BPartner == null)
			return false;
		//	Vet value
		return m_BPartner.get_ValueAsBoolean("IsUniqueForProvision");
	}
	
	/**
	 * Get Unique for Provision from Job
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/07/2014, 11:15:19
	 * @return
	 * @return boolean
	 */
	public boolean isJob_IsUniqueForProvision() {
		X_HR_Job m_Job = (X_HR_Job) m_employee.getHR_Job();
		if(m_Job == null)
			return false;
		//	Vet value
		return m_Job.get_ValueAsBoolean("IsUniqueForProvision");
	}
	
	/**
	 * Get Unique for Provision from Department
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/07/2014, 11:16:05
	 * @return
	 * @return boolean
	 */
	public boolean isDepartment_IsUniqueForProvision() {
		X_HR_Department m_Department = (X_HR_Department) m_employee.getHR_Department();
		if(m_Department == null)
			return false;
		//	Vet value
		return m_Department.get_ValueAsBoolean("IsUniqueForProvision");
	}
	
	/**********************************************************************************
	 * Helper Method for Get Amount from commission                                   *
	 **********************************************************************************/
	
	/**
	 * Get Commission of Employee from Commission Run
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Dec 1, 2015, 8:22:20 AM
	 * @param p_From
	 * @param p_To
	 * @return
	 * @return double
	 */
	public double getCommissionAmt(Timestamp p_From, Timestamp p_To) {
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//check client
		whereClause.append("crh.AD_Client_ID = ?");
		params.add(getAD_Client_ID());
		//Adding dates 
		whereClause.append(" AND crh.StartDate BETWEEN ? AND ?");
		//	Completed
		whereClause.append(" AND (EXISTS (SELECT 1 FROM C_Commission c WHERE C_BPartner_ID = ? "
				+ "AND c.C_Commission_ID = crh.C_Commission_ID) "
				+ "OR EXISTS(SELECT 1 "
				+ "				FROM C_Commission c "
				+ "				INNER JOIN C_CommissionLine cl ON(cl.C_Commission_ID = c.C_Commission_ID) "
				+ "				WHERE c.C_BPartner_ID = ?"
				+ "				AND cl.C_CommissionLine_ID = cah.C_CommissionLine_ID))");
		whereClause.append(" AND crh.DocStatus IN ('CO','CL') ");
		//	Add From and To
		params.add(p_From);
		params.add(p_To);
		//	Add BPartner
		params.add(m_C_BPartner_ID);
		params.add(m_C_BPartner_ID);
		//
		StringBuffer sql = new StringBuffer("SELECT COALESCE(SUM(cah.CommissionAmt), 0) "
				+ "FROM C_CommissionRun crh "
				+ "INNER JOIN C_CommissionAmt cah ON(cah.C_CommissionRun_ID = crh.C_CommissionRun_ID) "
				+ "WHERE ")
				.append(whereClause);
		BigDecimal value = DB.getSQLValueBDEx(get_TrxName(), sql.toString(), params);
		//	Valid Value
		if(value == null)
			return 0.0;
		//	Default
		return value.doubleValue();
	}

	/**
	 * Get Commission for this payroll
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Dec 1, 2015, 8:55:24 AM
	 * @return
	 * @return double
	 */
	public double getCommissionAmt() {
		return getCommissionAmt(m_dateFrom, m_dateTo);
	}
}	//	MHRProcess
