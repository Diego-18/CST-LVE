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
package org.spin.model;

import java.io.File;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MCurrency;
import org.compiere.model.MPeriod;
import org.compiere.model.MPeriodControl;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.CCache;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class MLVEPaymentRequest extends X_LVE_PaymentRequest implements DocAction, DocOptions{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	//2015-08-16 Carlos Parada Doc Base Type
	public static final String DOCBASETYPE_PaymentRequest = "PRQ";
	// End Carlos Parada
	/**
	 * *** Constructor ***
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 09/07/2014, 08:56:42
	 * @param ctx
	 * @param LVE_PaymentRequest_ID
	 * @param trxName
	 */
	public MLVEPaymentRequest(Properties ctx, int LVE_PaymentRequest_ID,
			String trxName) {
		super(ctx, LVE_PaymentRequest_ID, trxName);
		if (LVE_PaymentRequest_ID == 0) {
			setDocAction (DOCACTION_Complete);	// CO
			setDocStatus (DOCSTATUS_Drafted);	// DR
			setIsApproved (false);
			setProcessed (false);
		}
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 09/07/2014, 08:56:42
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEPaymentRequest(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	
	/**	Cache						*/
	private static CCache<Integer,MLVEPaymentRequest>	s_cache	= new CCache<Integer,MLVEPaymentRequest>("MLVEPaymentRequest", 20, 2);	//	2 minutes
	/**
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 10/9/2014, 5:47:49
	 * @param ctx
	 * @param p_LVE_PaymentRequest_ID
	 * @return
	 * @return MLVEPaymentRequest
	 */
	public static MLVEPaymentRequest get(Properties ctx, int p_LVE_PaymentRequest_ID) {
		Integer key = new Integer (p_LVE_PaymentRequest_ID);
		MLVEPaymentRequest retValue = (MLVEPaymentRequest) s_cache.get (key);
		if (retValue != null)
			return retValue;
		retValue = new MLVEPaymentRequest (ctx, p_LVE_PaymentRequest_ID, null);
		if (retValue.get_ID () != 0)
			s_cache.put (key, retValue);
		return retValue;
	}
	/**	Process Message 			*/
	private String		m_processMsg = null;
	
	/**	Just Prepared Flag			*/
	private boolean		m_justPrepared = false;
	
	/**	Lines						*/
	private MLVEPaymentRequestLine[]	m_lines = null;

	@Override
	public boolean processIt(String processAction) throws Exception {
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (processAction, getDocAction());
	}

	@Override
	public boolean unlockIt() {
		log.info(toString());
		return true;
	}

	@Override
	public boolean invalidateIt() {
		log.info(toString());
		setDocAction(DOCACTION_Prepare);
		return true;
	}

	@Override
	public String prepareIt() {
		log.info(toString());
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		//	Std Period open?
		MPeriod.testPeriodOpen(getCtx(), getDateDoc(), DOCBASETYPE_PaymentRequest, getAD_Org_ID());
		getLines(false);
		if (m_lines.length == 0) {
			m_processMsg = "@NoLines@";
			return DocAction.STATUS_Invalid;
		}
		
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		m_justPrepared = true;
		if (!DOCACTION_Complete.equals(getDocAction()))
			setDocAction(DOCACTION_Complete);
		
		return DocAction.STATUS_InProgress;
	}

	@Override
	public boolean approveIt() {
		log.info(toString());
		setIsApproved(true);
		return true;
	}

	@Override
	public boolean rejectIt() {
		log.info(toString());
		setIsApproved(false);
		return true;
	}

	@Override
	public String completeIt() {
		//	Re-Check
		if (!m_justPrepared) {
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
		
		//	Valid Amount
		if(getPayAmt() == null
				|| getPayAmt().doubleValue() <= 0) {
			m_processMsg = "@PayAmt@ <= @0@";
			return DocAction.STATUS_Invalid;
		}
		
		
		//2015-05-19 Carlos Parada Unification Validation Process
		m_processMsg = validateDocumentLines();
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		//	Link
		/*
		getLines(false);
		//	Valid Lines
		if(m_lines.length == 0){
			m_processMsg = "@NoLines@";
			return DocAction.STATUS_Invalid;
		}
		*/
		/*
		String msg = "";
		if(!getRequestType().equals(REQUESTTYPE_PaymentRequestManual)){
			//	Verify Documents not duplicated
			msg = validDocNotDuplicated();
			//	Verify Error
			if(msg != null){
				m_processMsg = msg;
				return DocAction.STATUS_Invalid;
			}
			
			msg = validOpenAmt();
			//	Verify Error
			if(msg != null){
				m_processMsg = msg;
				return DocAction.STATUS_Invalid;
			}
			
			msg = validDocStatus();
			//	Verify Error
			if(msg != null){
				m_processMsg = msg;
				return DocAction.STATUS_Invalid;
			}
		}
		
		for (MLVEPaymentRequestLine line : m_lines) {
			line.setProcessed(true);
			line.saveEx();
		}
		*/
		//End Carlos Parada
		//	User Validation
		String valid = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (valid != null){
			m_processMsg = valid;
			return DocAction.STATUS_Invalid;
		}

		setProcessed(true);
		setDocAction(DOCACTION_Close);
		return DocAction.STATUS_Completed;
	}
	
	/**
	 * Valid Open Amount for Documents
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/07/2014, 09:54:25
	 * @return
	 * @return String
	 */
	//2015-05-19 Carlos Parada Unify Method 
	/*
	private String validOpenAmt() {
		StringBuffer msgLong = new StringBuffer();
		PreparedStatement ps = null;
		ResultSet rs = null;
		int line = 0;
		String documentNo = null;
		BigDecimal openAmt = null;
		BigDecimal payAmt = null;
		BigDecimal diff = null;
		//	Precision
		int precision = MCurrency.getStdPrecision(getCtx(), Env.getContextAsInt(getCtx(), "$C_Currency_ID"));
		//	Prepare SQL
		String sql = null;
		//	
		
		if(getRequestType().equals(REQUESTTYPE_APInvoice)) {
			sql = "SELECT  Line, DocumentNO,SUM(OpenAmt) OpenAmt, MAX(PayAmt) PayAmt,DueAmt,IsExceededAmt "
					+ " FROM( "
					+ " 	SELECT "
					+ "			MAX(prl.Line) Line, i.DocumentNo, "
					+ " 		PaymentRequestOpen(MAX(pr.RequestType),prl.C_Invoice_ID,i.C_InvoicePaySchedule_ID) OpenAmt,"
					+ " 	SUM(prl.PayAmt)PayAmt,"
					+ "		(SELECT PaymentRequestOpen('API',rvop.C_Invoice_ID,NULL) OpenAmt FROM RV_C_Invoice rvop WHERE rvop.C_Invoice_ID = prl.C_Invoice_ID) DueAmt,"
					+ "		COALESCE(prl.IsExceededAmt,'N')IsExceededAmt    "
					+ " 	FROM LVE_PaymentRequestLine prl"
					+ " 	INNER JOIN LVE_PaymentRequest pr ON (pr.LVE_PaymentRequest_ID = prl.LVE_PaymentRequest_ID )"
					+ " 	INNER JOIN LVE_RV_OpenItem i ON(i.C_Invoice_ID = prl.C_Invoice_ID)"
					+ " 	WHERE"
					+ "			prl.LVE_PaymentRequest_ID = ?"
					+ "		GROUP BY i.DocumentNo, prl.C_Invoice_ID,i.C_InvoicePaySchedule_ID,RequestType,prl.IsExceededAmt"
					+ "	) t"
					+ "	GROUP BY Line, DocumentNo,DueAmt,IsExceededAmt"
					+ " HAVING(SUM(OpenAmt) -MAX(PayAmt) ) < 0";
		} else if(getRequestType().equals(REQUESTTYPE_PurchaseOrder)) {
			sql = " SELECT Line, DocumentNO,SUM(OpenAmt) OpenAmt, MAX(PayAmt) PayAmt,IsExceededAmt"
					+ " FROM("
					+ "     SELECT "
					+ "			MAX(prl.Line) Line, oo.DocumentNo,"
					+ "			PaymentRequestOpen(MAX(pr.RequestType),prl.C_Order_ID,oo.LVE_OrderPrepaySchedule_ID) OpenAmt,"
					+ "         SUM(prl.PayAmt)PayAmt,"
					+ "			COALESCE(prl.IsExceededAmt,'N')IsExceededAmt    "
					+ "     FROM LVE_PaymentRequestLine prl"
					+ "     INNER JOIN LVE_PaymentRequest pr ON (pr.LVE_PaymentRequest_ID = prl.LVE_PaymentRequest_ID )"
					+ "     INNER JOIN LVE_RV_OrderOpen oo ON(oo.C_Order_ID = prl.C_Order_ID)"
					+ "     WHERE"
					+ "			prl.LVE_PaymentRequest_ID = ?"
					+ "		GROUP BY oo.DocumentNo, prl.C_Order_ID,oo.LVE_OrderPrepaySchedule_ID,prl.IsExceededAmt"
					+ " ) t"
					+ " GROUP BY Line, DocumentNo,IsExceededAmt"
					+ " HAVING(SUM(OpenAmt) - MAX(PayAmt)) < 0;";
		} else if(getRequestType().equals(REQUESTTYPE_GLJournal)) {
			sql = "   SELECT Line, DocumentNO,SUM(OpenAmt) OpenAmt, MAX(PayAmt) PayAmt,IsExceededAmt"
					+ " FROM("
					+ "		SELECT MAX(prl.Line) Line,op.DocumentNo, op.OpenAmt, SUM(prl.PayAmt)PayAmt,"
					+ "		COALESCE(prl.IsExceededAmt,'N')IsExceededAmt "
					+ "		FROM LVE_PaymentRequestLine prl"
					+ "		INNER JOIN LVE_RV_OpenPayment op ON (prl.GL_JournalLine_ID = op.Record_ID)"
					+ "		WHERE"
					+ "			prl.LVE_PaymentRequest_ID = ?"
					+ "			AND op.RequestType = 'GLJ'"
					+ "		GROUP BY op.DocumentNo,op.OpenAmt,prl.IsExceededAmt"
					+ " ) t"
					+ " GROUP BY Line, DocumentNo,IsExceededAmt"
					+ " HAVING(SUM(OpenAmt) - MAX(PayAmt)) < 0;";
		}
		String isExceededAmt ;
		
		//	Get Result Set
		try {
			ps = DB.prepareStatement(sql,get_TrxName());
			ps.setInt(1, getLVE_PaymentRequest_ID());
			rs = ps.executeQuery();
			//	Iterate
			while (rs.next()) {
				isExceededAmt = rs.getString("IsExceededAmt");
				if(isExceededAmt != null
						&& isExceededAmt.equals("Y"))
					continue;
				line = rs.getInt("Line");
				documentNo = rs.getString("DocumentNo");
				openAmt = rs.getBigDecimal("OpenAmt");
				payAmt = rs.getBigDecimal("PayAmt");
				//	Valid Open Amount
				if(openAmt == null)
					openAmt = Env.ZERO;
				//	Valid Payment Amount
				if(payAmt == null)
					payAmt = Env.ZERO;
				//	Set Precision
				if(openAmt.precision() > precision)
					openAmt = openAmt.setScale(precision, BigDecimal.ROUND_HALF_UP);
				//	Set Precision
				if(payAmt.precision() > precision)
					payAmt = payAmt.setScale(precision, BigDecimal.ROUND_HALF_UP);

				//	Set Difference
				diff = openAmt.subtract(payAmt).setScale(precision, BigDecimal.ROUND_HALF_UP);
				//	Evaluate Error
				String msg = " @Line@ " + line +
						" @DocumentNo@ " + documentNo + 
						" @OpenAmt@=" + openAmt.doubleValue() + 
						"> @PayAmt@=" + payAmt.doubleValue() + 
						" @Difference@=" + diff.abs().doubleValue();
				//	
				if(msgLong.length() != 0)
					msgLong
						.append("\n")
						.append("*")
						.append(msg)
						.append("*");
				else
					msgLong
						.append("\n")
						.append("*")
						.append(msg)
						.append("*");
			}
		} catch (SQLException e) {
			throw new AdempiereException(e.getMessage());
		}finally{
    		DB.close(rs, ps);
    		rs = null; ps= null;
    	}
		//	Return
		if(msgLong.toString().length() > 0)
			return msgLong.toString();
		else 
			return null;
	}
	*/
	//End Carlos Parada
	/**
	 * Valid Documents Not Dupliccated
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 12/2/2015, 18:18:14
	 * @return
	 * @return String
	 */
	//2015-05-19 Carlos Parada Unify Method 
	/*
	private String validDocNotDuplicated() {
		StringBuffer msgLong = new StringBuffer();
		PreparedStatement ps = null;
		ResultSet rs = null;
		String documentNo = null;
		//	Prepare SQL
		StringBuffer sql = new StringBuffer();
		if(getRequestType().equals(REQUESTTYPE_APInvoice)) {
			sql.append("SELECT i.DocumentNo, COUNT(prl.LVE_PaymentRequestLine_ID) "
					+ "FROM LVE_PaymentRequestLine prl "
					+ "INNER JOIN C_Invoice i ON (prl.C_Invoice_ID = i.C_Invoice_ID) "
					+ "WHERE prl.LVE_PaymentRequest_ID = ? "
					+ "GROUP BY  i.C_Invoice_ID, i.DocumentNo "
					+ "HAVING COUNT( prl.LVE_PaymentRequestLine_ID) > 1");
		} else if(getRequestType().equals(REQUESTTYPE_PurchaseOrder)) {
			sql.append("SELECT o.DocumentNo, COUNT(prl.LVE_PaymentRequestLine_ID) "
					+ "FROM LVE_PaymentRequestLine prl "
					+ "INNER JOIN C_Order o ON (prl.C_Order_ID = o.C_Order_ID) "
					+ "WHERE prl.LVE_PaymentRequest_ID = ? "
					+ "GROUP BY  o.C_Order_ID, o.DocumentNo "
					+ "HAVING COUNT( prl.LVE_PaymentRequestLine_ID) > 1");
		} else if(getRequestType().equals(REQUESTTYPE_GLJournal)) {
			sql.append("SELECT jb.DocumentNo, COUNT(prl.LVE_PaymentRequestLine_ID) "
					+ "FROM LVE_PaymentRequestLine prl "
					+ "INNER JOIN GL_JournalLine jl ON (prl.GL_JournalLine_ID = jl.GL_JournalLine_ID) "
					+ "INNER JOIN GL_Journal j ON (jl.GL_Journal_ID = j.GL_Journal_ID)"
					+ "INNER JOIN GL_JournalBatch jb ON (jb.GL_JournalBatch_ID = j.GL_JournalBatch_ID) "
					+ "WHERE prl.LVE_PaymentRequest_ID = ? "
					+ "GROUP BY  jl.GL_JournalLine_ID, jb.DocumentNo "
					+ "HAVING COUNT( prl.LVE_PaymentRequestLine_ID) > 1");
		}
		//	Get Result Set
		try {
			ps = DB.prepareStatement(sql.toString(),get_TrxName());
			ps.setInt(1, getLVE_PaymentRequest_ID());
			rs = ps.executeQuery();
			//	Iterate
			while (rs.next()) {
				documentNo = rs.getString("DocumentNo");
				//	Evaluate Error
				String msg = " @LVE_PaymentRequest_ID@ " + getDocumentNo() + " \n "; 
				//
				if(getRequestType().equals(REQUESTTYPE_APInvoice)) {
					msg += " @C_Invoice_ID@ ";
				} else if(getRequestType().equals(REQUESTTYPE_PurchaseOrder)) {
					msg += " @C_Order_ID@ ";
				} else if(getRequestType().equals(REQUESTTYPE_GLJournal)) {
					msg += " @GL_JournalLine_ID@ ";
				}
				msg += " " + documentNo;
				//	
				if(msgLong.length() != 0)
					msgLong
						.append("\n")
						.append("*")
						.append(msg)
						.append("*");
				else
					msgLong
						.append("\n")
						.append("*")
						.append(msg)
						.append("*");
			}
		} catch (SQLException e) {
			throw new AdempiereException(e.getMessage());
		}finally{
    		DB.close(rs, ps);
    		rs = null; ps= null;
    	}
		//	Return
		if(msgLong.toString().length() > 0)
			return msgLong.toString();
		else 
			return null;
	}
	*/
	//End Carlos Parada
	/**
	 * Valid status for Documents
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 23/07/2014, 09:54:25
	 * @return
	 * @return String
	 */
	//2015-05-19 Carlos Parada Unify Method 
	/*
	private String validDocStatus() {
		StringBuffer msgLong = new StringBuffer();
		PreparedStatement ps = null;
		ResultSet rs = null;
		int line = 0;
		String documentNo = null;
		//	Prepare SQL
		String sql = null;
		//	
		if(getRequestType().equals(REQUESTTYPE_APInvoice)) {
			sql = "SELECT i.DocumentNO, prl.Line FROM"
					+ " LVE_PaymentRequestLIne prl "
					+ " INNER JOIN C_Invoice i ON (i.C_Invoice_ID = prl.C_Invoice_ID)"
					+ " WHERE i.DocStatus NOT IN ('CO','CL') AND prl.LVE_PaymentRequest_ID = ? ";
		} else if(getRequestType().equals(REQUESTTYPE_PurchaseOrder)) {
			sql = "SELECT o.DocumentNO, prl.Line FROM LVE_PaymentRequestLIne prl "
					+ " INNER JOIN C_Order o ON (prl.C_Order_ID  = o.C_Order_ID )"
					+ " WHERE o.DocStatus NOT IN ('CO','CL') AND prl.LVE_PaymentRequest_ID = ? ";
		} else if(getRequestType().equals(REQUESTTYPE_GLJournal)) {
			sql = "SELECT gljb.DocumentNO, prl.Line FROM LVE_PaymentRequestLIne prl "
					+ " INNER JOIN GL_JournalLine gljl ON (prl.GL_JournalLine_ID = gljl.GL_JournalLine_ID)"
					+ " INNER JOIN GL_Journal glj ON (glj.GL_Journal_ID = gljl.GL_Journal_ID) "
					+ " INNER JOIN GL_JournalBatch gljb ON (gljb.GL_JournalBatch_ID = glj.GL_JournalBatch_ID)"
					+ " WHERE gljb.DocStatus NOT IN ('CO','CL') AND prl.LVE_PaymentRequest_ID = ? ";
		}
		//	Get Result Set
		try {
			ps = DB.prepareStatement(sql,get_TrxName());
			ps.setInt(1, getLVE_PaymentRequest_ID());
			rs = ps.executeQuery();
			//	Iterate
			while (rs.next()) {
				line = rs.getInt("Line");
				documentNo = rs.getString("DocumentNo");

				//	Evaluate Error
				String msg = " @Line@ " + line +
						", @DocumentNo@= " + documentNo + ", @DocStatus@ <> @completed@";
				//	
				if(msgLong.length() != 0)
					msgLong
						.append("\n")
						.append("*")
						.append(msg)
						.append("*");
				else
					msgLong
						.append("\n")
						.append("*")
						.append(msg)
						.append("*");
			}
		} catch (SQLException e) {
			throw new AdempiereException(e.getMessage());
		}finally{
    		DB.close(rs, ps);
    		rs = null; ps= null;
    	}
		//	Return
		if(msgLong.toString().length() > 0)
			return msgLong.toString();
		else 
			return null;
	}
	*/
	//End Carlos Parada
	
	@Override
	public boolean voidIt() {
		log.info(toString());
		// Before Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_VOID);
		if (m_processMsg != null)
			return false;
		//	Reverse Document
		boolean retValue = reverseIt();
		//	Validate request line with payment completed
		m_processMsg = validReferencePayment();
		if(m_processMsg != null)
			return false;
		// After Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_VOID);
		if (m_processMsg != null)
			return false;
		//	Set Doc Action
		setDocAction(DOCACTION_None);
		//
		return retValue;
	}

	/**
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 11/07/2014, 15:26:42
	 * @return
	 * @return String
	 */
	private String validReferencePayment() {
		String sql ="SELECT 	COALESCE(p.DocumentNo,ps.Name)  DocumentNoReferenced, prl.Line, psc.PayAmt, "
				+ "COALESCE(o.DocumentNO, i.DocumentNO, j.DocumentNO) DocumentNo, pr.RequestType, bp.Name "
				+ "FROM LVE_PaymentRequestLine prl "
				+ "INNER JOIN LVE_PaymentRequest pr ON (pr.LVE_PaymentRequest_ID = prl.LVE_PaymentRequest_ID) "
				+ "INNER JOIN C_PaySelectionLine psl  ON (prl.LVE_PaymentRequestLine_id = psl.LVE_PaymentRequestLine_ID) "
				+ "INNER JOIN C_PaySelectionCheck psc ON (psc.C_PaySelectionCheck_ID = psl.C_PaySelectionCheck_ID ) "
				+ "INNER JOIN C_PaySelection ps ON (psl.C_PaySelection_ID = ps.C_PaySelection_ID) "
				+ "LEFT JOIN C_Payment p ON (psc.C_Payment_ID = p.C_Payment_ID ) "
				+ "LEFT JOIN C_Order o ON (o.C_Order_ID = prl.C_Order_ID) "
				+ "LEFT JOIN GL_JournalLine jl ON (jl.GL_JournalLine_ID = prl.GL_JournalLine_ID) "
				+ "LEFT JOIN GL_Journal j ON (jl.GL_Journal_ID = j.GL_Journal_ID) "
				+ "LEFT JOIN C_Invoice i ON (i.C_Invoice_ID = prl.C_Invoice_ID ) "
				+ "LEFT JOIN C_BPartner bp ON (bp.C_BPartner_ID = prl.C_BPartner_ID) "
				+ "WHERE	(p.DocStatus IN ('CO','CL') OR p.C_Payment_ID IS NULL) AND prl.LVE_PaymentRequest_ID = ?";
		//	Precision
		int precision = MCurrency.getStdPrecision(getCtx(), Env.getContextAsInt(getCtx(), "$C_Currency_ID"));
		StringBuffer msgLong = new StringBuffer();
		PreparedStatement ps = null;
		ResultSet rs = null;
		int line = 0;
		String documentNoReferenced = null;
		String documentNo = null;
		String p_RequestType = null;
		String p_BPName = null;
		String msg = null;
		//BigDecimal openAmt = null;
		BigDecimal payAmt = null;
		try {
			ps = DB.prepareStatement(sql,get_TrxName());
			ps.setInt(1, getLVE_PaymentRequest_ID());
			rs = ps.executeQuery();
			//	Iterate
			while (rs.next()) {
				line = rs.getInt("Line");
				documentNoReferenced = rs.getString("DocumentNoReferenced");
				payAmt = rs.getBigDecimal("PayAmt");
				documentNo = rs.getString("DocumentNo");
				p_RequestType = rs.getString("RequestType");
				p_BPName = rs.getString("Name");
				//	Valid Payment Amount
				if(payAmt == null)
					payAmt = Env.ZERO;
				//	Set Precision
				if(payAmt != null
						&& payAmt.precision() > precision)
					payAmt = payAmt.setScale(precision, BigDecimal.ROUND_HALF_UP);
				msg = " @Line@ " + line ;
				if (p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_PurchaseOrder))
					msg += " @C_Order_ID@ ";
				else if (p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_APInvoice))
					msg += " @C_Invoice_ID@ ";
				else if (p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_GLJournal))
					msg += " @GL_Journal_ID@ ";
				else if (p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_PaymentRequestManual))
					msg += " @C_BPartner_ID@ ";
				
				//	Evaluate Error
				
				msg += documentNo == null ? "" : documentNo ; 
				msg += p_BPName == null ? "" : p_BPName ;  
				msg += " @SQLErrorReferenced@ " +  
						" @C_Payment_ID@/@C_PaySelection_ID@ " + documentNoReferenced
						;
				//	
				if(msgLong.length() != 0)
					msgLong
						.append("\n")
						.append("*")
						.append(msg)
						.append("*");
				else
					msgLong
						.append("*")
						.append(msg)
						.append("*");
			}
		} catch (SQLException e) {
			throw new AdempiereException(e.getMessage());
		}finally{
    		DB.close(rs, ps);
    		rs = null; ps= null;
    	}
		//
		if(msgLong.toString().length() > 0 )
			return msgLong.toString();
		else 
			return null;
	}
	
	@Override
	public boolean closeIt() {
		log.info(toString());
		// Before Close
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_CLOSE);
		if (m_processMsg != null)
			return false;

		setDocAction(DOCACTION_None);

		// After Close
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_CLOSE);
		if (m_processMsg != null)
			return false;

		return true;
	}

	@Override
	public boolean reverseCorrectIt() {
		log.info(toString());
		// Before reverseCorrect
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REVERSECORRECT);
		if (m_processMsg != null)
			return false;
		
		boolean retValue = reverseIt();

		// After reverseCorrect
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REVERSECORRECT);
		if (m_processMsg != null)
			return false;
		
		setDocAction(DOCACTION_None);
		return retValue;
	}

	@Override
	public boolean reverseAccrualIt() {
		log.info(toString());
		// Before reverseAccrual
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REVERSEACCRUAL);
		if (m_processMsg != null)
			return false;
		
		boolean retValue = reverseIt();

		// After reverseAccrual
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REVERSEACCRUAL);
		if (m_processMsg != null)
			return false;
		
		setDocAction(DOCACTION_None);
		return retValue;
	}

	@Override
	public boolean reActivateIt() {
		log.info(toString());
		// Before reverseAccrual
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REACTIVATE);
		if (m_processMsg != null)
			return false;
		//2015-05-20 Carlos Parada Unificate With  Processed Document
		/*
		String whereClause = "IsPrepared = 'N'";
		getLines(true, whereClause);
		for (int i = 0; i < m_lines.length; i++) {
			MLVEPaymentRequestLine line = m_lines[i];
			line.setProcessed(false);
			line.saveEx();
		}
		*/
		//End Carlos Parada
		setProcessed(false);
		setIsApproved(false);
		setDocAction(DOCACTION_Complete);
		// After reverseAccrual
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REACTIVATE);
		if (m_processMsg != null)
			return false;
		
		return true;
	}

	@Override
	public String getSummary() {
		StringBuffer sb = new StringBuffer();
		sb.append(getDocumentNo());
		//	: Total Lines = 123.00 (#1)
		sb.append(": ")
			//.append(Msg.translate(getCtx(),"ApprovalAmt")).append("=").append(getApprovalAmt())
			.append(" (#").append(getLines(false).length).append(")");
		//	 - Description
		if (getDescription() != null && getDescription().length() > 0)
			sb.append(" - ").append(getDescription());
		return sb.toString();
	}

	@Override
	public String getDocumentInfo() {
		return Msg.getElement(getCtx(), "LVE_PaymentRequest_ID") + " " + getDocumentNo();
	}

	@Override
	public File createPDF() {
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
	}

	@Override
	public String getProcessMsg() {
		return m_processMsg;
	}

	@Override
	public int getDoc_User_ID() {
		return getCreatedBy();
	}

	@Override
	public BigDecimal getApprovalAmt() {
		return null;
	}
	
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
	 * 	Reverse Allocation.
	 * 	Period needs to be open
	 *	@return true if reversed
	 */
	private boolean reverseIt() 
	{
		if (!isActive())
			throw new IllegalStateException("Document already reversed (not active)");

		//	Can we delete posting
		MPeriod.testPeriodOpen(getCtx(), getDateDoc(), MPeriodControl.DOCBASETYPE_PaymentAllocation, getAD_Org_ID());

		//	Set Inactive
		setIsActive (false);
		setDocumentNo(getDocumentNo()+"^");
		setDocStatus(DOCSTATUS_Reversed);	//	for direct calls
		if (!save() || isActive())
			throw new IllegalStateException("Cannot de-activate payment request");
			
		//	Unlink request line
		getLines(true);
		for (int i = 0; i < m_lines.length; i++) {
			MLVEPaymentRequestLine line = m_lines[i];
			line.setIsActive(false);
			line.save();
		}
		return true;
	}	//	reverse

	/**
	 * 	Get Lines
	 *	@param requery if true requery
	 *	@return lines
	 */
	public MLVEPaymentRequestLine[] getLines (boolean requery) {
		if (m_lines != null 
				&& m_lines.length 
					!= 0 && !requery) {
			set_TrxName(m_lines, get_TrxName());
			return m_lines;
		}
		//	Get from DB
		List<MLVEPaymentRequestLine> list = new Query(getCtx(), I_LVE_PaymentRequestLine.Table_Name, 
						COLUMNNAME_LVE_PaymentRequest_ID + "=?", get_TrxName())
				.setParameters(getLVE_PaymentRequest_ID())
				.<MLVEPaymentRequestLine>list();
		//	Convert to array
		m_lines = new MLVEPaymentRequestLine[list.size()];
		list.toArray (m_lines);
		//	Return
		return m_lines;
	}	//	getLines

	/**
	 * 	Get Lines Where Clause
	 *	@param requery if true requery
	 *	@return lines
	 */
	public MLVEPaymentRequestLine[] getLines (boolean requery, String whereClause) {
		if (m_lines != null 
				&& m_lines.length 
					!= 0 && !requery) {
			set_TrxName(m_lines, get_TrxName());
			return m_lines;
		}

		whereClause = 
				whereClause != null 
					? COLUMNNAME_LVE_PaymentRequest_ID + "=? AND " + whereClause 
							: COLUMNNAME_LVE_PaymentRequest_ID + "=?"; 
		
		//	Get from DB
		List<MLVEPaymentRequestLine> list = new Query(getCtx(), I_LVE_PaymentRequestLine.Table_Name, 
				whereClause, get_TrxName())
				.setParameters(getLVE_PaymentRequest_ID())
				.<MLVEPaymentRequestLine>list();
		//	Convert to array
		m_lines = new MLVEPaymentRequestLine[list.size()];
		list.toArray (m_lines);
		//	Return
		return m_lines;
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
					//options[index++] = DocumentEngine.ACTION_Prepare;
				}
				//	Complete                    ..  CO
				else if (docStatus.equals(DocumentEngine.STATUS_Completed))
				{
					options[index++] = DocumentEngine.ACTION_Void;
					options[index++] = DocumentEngine.ACTION_Close;
					options[index++] = DocumentEngine.ACTION_ReActivate;
				}
		}
		
		return index;
	}
	
	/**
	 * Override setProcessed to Process Payment Request Lines 
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 19/05/2015, 21:11:25
	 * @return
	 * @return String
	 */
	@Override
	public void setProcessed(boolean Processed) {
		super.setProcessed(Processed);
		if (get_ID() == 0)
			return;
		String sql = "UPDATE LVE_PaymentRequestLine SET Processed='"
			+ (Processed ? "Y" : "N")
			+ "' WHERE LVE_PaymentRequest_ID=" + getLVE_PaymentRequest_ID() + " AND IsPrepared = 'N' ";
		int noLine = DB.executeUpdate(sql, get_TrxName());
		m_lines = null;
		log.fine(Processed + " - Lines=" + noLine);
	}
	
	/**
	 * 
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 19/5/2015, 21:55:30
	 * @return
	 * @return String
	 */
	private String validateDocumentLines(){
		StringBuffer sql = new StringBuffer();
		PreparedStatement ps = null;
		int numRecords = 0;
		String msg = null;
		ResultSet rs = null;
		boolean prManual = getRequestType().equals(X_LVE_PaymentRequest.REQUESTTYPE_PaymentRequestManual);
		int scale = MCurrency.getStdPrecision(getCtx(), Env.getContextAsInt(getCtx(), "$C_Currency_ID"));
		
		if (getRequestType().equals(X_LVE_PaymentRequest.REQUESTTYPE_APInvoice))
			sql.append("SELECT  " + 
						"COALESCE(prl.Line,0) Line, " + // 1 
						"COALESCE(i.DocumentNo,'') DocumentNo, " + // 2
						"COALESCE(PaymentRequestOpen(pr.RequestType,prl.C_Invoice_ID,null),0) OpenAmt, " + //3
						"COALESCE(prl.PayAmt,0) PayAmt , " + //4
						"COALESCE(prl.IsExceededAmt,'N') IsExceededAmt, " + //5
						"COALESCE(i.DocStatus,'') DocStatus, " + //6
						"COALESCE(prlg.QtyRecords,1) QtyRecords, " + //7
						"COALESCE(prl.IsPrepared,'N') IsPrepared " + //8
						"FROM  " +
						"LVE_PaymentRequestLine prl " +
						"INNER JOIN LVE_PaymentRequest pr ON (pr.LVE_PaymentRequest_ID=prl.LVE_PaymentRequest_ID) " +
						"INNER JOIN C_Invoice i ON (i.C_Invoice_ID=prl.C_Invoice_ID) " +
						"INNER JOIN (SELECT prl.C_Invoice_ID,prl.LVE_PaymentRequest_ID,COUNT(prl.C_Invoice_ID) QtyRecords " +
						"FROM LVE_PaymentRequestLine prl " + 
						"GROUP BY prl.C_Invoice_ID,prl.LVE_PaymentRequest_ID) " + 
						"prlg ON (prl.C_Invoice_ID =prlg.C_Invoice_ID AND prl.LVE_PaymentRequest_ID = prlg.LVE_PaymentRequest_ID) " +
						"WHERE pr.LVE_PaymentRequest_ID=? ");
		
		if (getRequestType().equals(X_LVE_PaymentRequest.REQUESTTYPE_PurchaseOrder))
			sql.append("SELECT  " + 
						"COALESCE(prl.Line,0) Line, " + // 1 
						"COALESCE(o.DocumentNo,'') DocumentNo, " + // 2
						"COALESCE(PaymentRequestOpen(pr.RequestType,prl.C_Order_ID,null),0) OpenAmt, " + //3
						"COALESCE(prl.PayAmt,0) PayAmt , " + //4
						"COALESCE(prl.IsExceededAmt,'N') IsExceededAmt, " + //5
						"COALESCE(o.DocStatus,'') DocStatus, " + //6
						"COALESCE(prlg.QtyRecords,1) QtyRecords, " + //7
						"COALESCE(prl.IsPrepared,'N') IsPrepared " + //8
						"FROM  " +
						"LVE_PaymentRequestLine prl " +
						"INNER JOIN LVE_PaymentRequest pr ON (pr.LVE_PaymentRequest_ID=prl.LVE_PaymentRequest_ID) " +
						"INNER JOIN C_Order o ON (o.C_Order_ID=prl.C_Order_ID) " + 
						"INNER JOIN (SELECT prl.C_Order_ID,prl.LVE_PaymentRequest_ID,COUNT(prl.C_Order_ID) QtyRecords " +
						"FROM LVE_PaymentRequestLine prl " + 
						"GROUP BY prl.C_Order_ID,prl.LVE_PaymentRequest_ID) " + 
						"prlg ON (prl.C_Order_ID =prlg.C_Order_ID AND prl.LVE_PaymentRequest_ID = prlg.LVE_PaymentRequest_ID) " +
						"WHERE pr.LVE_PaymentRequest_ID=? ");
		
		
		if (getRequestType().equals(X_LVE_PaymentRequest.REQUESTTYPE_GLJournal))
			sql.append("SELECT " + 
						"COALESCE(prl.Line,0) Line, " + // 1 
						"COALESCE(op.DocumentNo,'') DocumentNo, " + // 2
						"COALESCE(op.OpenAmt,0) OpenAmt, " + //3
						"COALESCE(prl.PayAmt,0) PayAmt , " + //4
						"COALESCE(prl.IsExceededAmt,'N') IsExceededAmt, " + //5
						"COALESCE(op.DocStatus,'') DocStatus, " + //6
						"COALESCE(prlg.QtyRecords,1) QtyRecords, " + //7
						"COALESCE(prl.IsPrepared,'N') IsPrepared " + //8
						"FROM  " +
						"LVE_PaymentRequestLine prl " +
						"INNER JOIN LVE_PaymentRequest pr ON (pr.LVE_PaymentRequest_ID=prl.LVE_PaymentRequest_ID) " +
						"INNER JOIN LVE_RV_OpenPayment op ON (op.Record_ID=prl.GL_JournalLine_ID AND op.RequestType = 'GLJ') " + 
						"INNER JOIN (SELECT prl.GL_JournalLine_ID,prl.LVE_PaymentRequest_ID,COUNT(prl.GL_JournalLine_ID) QtyRecords " +
						"FROM LVE_PaymentRequestLine prl " + 
						"GROUP BY prl.GL_JournalLine_ID,prl.LVE_PaymentRequest_ID) " + 
						"prlg ON (prl.GL_JournalLine_ID =prlg.GL_JournalLine_ID AND prl.LVE_PaymentRequest_ID = prlg.LVE_PaymentRequest_ID) " +
						"WHERE pr.LVE_PaymentRequest_ID=? ");
		if (getRequestType().equals(X_LVE_PaymentRequest.REQUESTTYPE_PaymentRequestManual)) //Only Check Lines 
			sql.append("SELECT 1 " + 
						"FROM  " +
						"LVE_PaymentRequestLine prl " +
						"WHERE prl.LVE_PaymentRequest_ID=? ");
		
		try{
			ps = DB.prepareStatement(sql.toString(), get_TrxName());
			ps.setInt(1, getLVE_PaymentRequest_ID());
			rs = ps.executeQuery();
			while (rs.next()){
				numRecords++;
				if (prManual)
					break;
				
				//Duplicate Documents in Payment Request
				if (rs.getInt(7) > 1)
					msg = (msg==null ? "" : msg) + 
							"\n"  + 
							"*"  + 
							" @Duplicate@ @Line@ " + rs.getInt(1) + " @DocumentNo@ " + rs.getString(2) + " " +
							"*";
				
				//Valid Payment Amount
				if (rs.getBigDecimal(4).setScale(scale).compareTo(rs.getBigDecimal(3).setScale(scale)) == 1
						//Not Exceeded Amt Lines 
						&& rs.getString(5).equals("N")
							//Not Prepared Lines
							&& rs.getString(8).equals("N")
						)
					msg = (msg==null ? "" : msg) + 
							"\n"  + 
							"*"  + 
							" @Line@ " + rs.getInt(1) + " @DocumentNo@ " + rs.getString(2) + " @PayAmt@= " + rs.getBigDecimal(4).setScale(scale).doubleValue() + 
							" > " + " @OpenAmt@= " + rs.getBigDecimal(3).setScale(scale).doubleValue() + 
							" @Difference@=" + rs.getBigDecimal(4).setScale(scale).subtract(rs.getBigDecimal(3).setScale(scale)) +  
							"*";
				
				//Valid Document Status
				if (rs.getString(8).equals("N")){
					if ((getRequestType().equals(X_LVE_PaymentRequest.REQUESTTYPE_PurchaseOrder)
							&&
							rs.getString(6).equals(X_LVE_PaymentRequest.DOCSTATUS_Completed))
						||
						(!getRequestType().equals(X_LVE_PaymentRequest.REQUESTTYPE_PurchaseOrder)
								&&
								(rs.getString(6).equals(X_LVE_PaymentRequest.DOCSTATUS_Completed)
										|| rs.getString(6).equals(X_LVE_PaymentRequest.DOCSTATUS_Closed))
						)
					)
						;
					else
						msg = (msg==null ? "" : msg) + 
								"\n"  + 
								"*"  + 
								" @Invalid@ @DocStatus@ @Line@ " + rs.getInt(1) + " @DocumentNo@ " + rs.getString(2) +  
								"*";
				}
			}
		}catch(Exception e){
			throw new AdempiereException(e.getMessage());
		}
		finally{
			DB.close(rs, ps);
			rs = null; ps = null;
		}
		if (numRecords==0)
			msg = "@NoLines@";
		return msg;
	}

}
