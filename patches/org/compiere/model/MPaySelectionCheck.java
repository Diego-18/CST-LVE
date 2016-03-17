/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
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
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.process.DocAction;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.spin.model.MLVEPaymentRequest;
import org.spin.model.MLVEPaymentRequestLine;

/**
 *  Payment Print/Export model.
 *
 * 	@author 	Jorg Janke
 * 	@version 	$Id: MPaySelectionCheck.java,v 1.3 2006/07/30 00:51:02 jjanke Exp $
 */
public final class MPaySelectionCheck extends X_C_PaySelectionCheck
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5890511999934551763L;

	/**
	 * 	Get Check for Payment
	 *	@param ctx context
	 *	@param C_Payment_ID id
	 *	@param trxName transaction
	 *	@return pay selection check for payment or null
	 */
	public static MPaySelectionCheck getOfPayment (Properties ctx, int C_Payment_ID, String trxName)
	{
		MPaySelectionCheck retValue = null;
		String sql = "SELECT * FROM C_PaySelectionCheck WHERE C_Payment_ID=?";
		int count = 0;
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trxName);
			pstmt.setInt (1, C_Payment_ID);
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				MPaySelectionCheck psc = new MPaySelectionCheck (ctx, rs, trxName);
				if (retValue == null)
					retValue = psc;
				else if (!retValue.isProcessed() && psc.isProcessed())
					retValue = psc;
				count++;
			}
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			s_log.log(Level.SEVERE, sql, e); 
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}
		if (count > 1)
			s_log.warning ("More then one for C_Payment_ID=" + C_Payment_ID);
		return retValue;
	}	//	getOfPayment

	/**
	 * 	Create Check for Payment
	 *	@param ctx context
	 *	@param C_Payment_ID id
	 *	@param trxName transaction
	 *	@return pay selection check for payment or null
	 */
	public static MPaySelectionCheck createForPayment (Properties ctx, int C_Payment_ID, String trxName)
	{
		if (C_Payment_ID == 0)
			return null;
		MPayment payment = new MPayment (ctx, C_Payment_ID, null);
		//	Map Payment Rule <- Tender Type
		String PaymentRule = PAYMENTRULE_Check;
		if (payment.getTenderType().equals(X_C_Payment.TENDERTYPE_CreditCard))
			PaymentRule = PAYMENTRULE_CreditCard;
		else if (payment.getTenderType().equals(X_C_Payment.TENDERTYPE_DirectDebit))
			PaymentRule = PAYMENTRULE_DirectDebit;
		else if (payment.getTenderType().equals(X_C_Payment.TENDERTYPE_DirectDeposit))
			PaymentRule = PAYMENTRULE_DirectDeposit;
	//	else if (payment.getTenderType().equals(MPayment.TENDERTYPE_Check))
	//		PaymentRule = MPaySelectionCheck.PAYMENTRULE_Check;
		
		//	Create new PaySelection
		MPaySelection ps = new MPaySelection(ctx, 0, trxName);
		ps.setAD_Org_ID(payment.getAD_Org_ID());
		ps.setC_BankAccount_ID (payment.getC_BankAccount_ID());
		ps.setName (Msg.translate(ctx, "C_Payment_ID") + ": " + payment.getDocumentNo());
		ps.setDescription(payment.getDescription());
		ps.setPayDate (payment.getDateTrx());
		ps.setTotalAmt (payment.getPayAmt());
		ps.setIsApproved (true);
		ps.saveEx();
		
		//	Create new PaySelection Check
		MPaySelectionCheck psc = new MPaySelectionCheck(ps, PaymentRule);
		psc.setC_BPartner_ID (payment.getC_BPartner_ID());
		psc.setC_Payment_ID(payment.getC_Payment_ID());
		psc.setIsReceipt(payment.isReceipt());
		psc.setPayAmt (payment.getPayAmt());
		psc.setDiscountAmt(payment.getDiscountAmt());
		psc.setQty (1);
		psc.setDocumentNo(payment.getDocumentNo());
		psc.setProcessed(true);
		// afalcone - [ 1871567 ] Wrong value in Payment document
		psc.setIsGeneratedDraft( ! payment.isProcessed() );
		//
		psc.saveEx();
		
		//	Create new PaySelection Line
		MPaySelectionLine psl = null;
		if (payment.getC_Invoice_ID() != 0)
		{
			psl = new MPaySelectionLine (ps, 10, PaymentRule);
			psl.setC_Invoice_ID(payment.getC_Invoice_ID());
			psl.setIsSOTrx (payment.isReceipt());
			psl.setOpenAmt(payment.getPayAmt().add(payment.getDiscountAmt()));
			psl.setPayAmt (payment.getPayAmt());
			psl.setDiscountAmt(payment.getDiscountAmt());
			psl.setDifferenceAmt (Env.ZERO);
			psl.setC_PaySelectionCheck_ID(psc.getC_PaySelectionCheck_ID());
			psl.setProcessed(true);
			psl.saveEx();
		} else {
			// globalqss - CarlosRuiz - fix bug [ 1803054 ] Empty Remittance lines on payments
			// look for existance of C_PaymentAllocate records
			//	Allocate to multiple Payments based on entry
			MPaymentAllocate[] pAllocs = MPaymentAllocate.get(payment);
			if (pAllocs.length != 0) {
				int numInv = 0;
				for (int i = 0; i < pAllocs.length; i++) {
					MPaymentAllocate pAlloc = pAllocs[i];
					if (pAlloc.getC_Invoice_ID() != 0)
					{
						MPaySelectionLine psla = null;
						psla = new MPaySelectionLine (ps, 10 * (i+1), PaymentRule);
						psla.setC_Invoice_ID(pAlloc.getC_Invoice_ID());
						psla.setIsSOTrx (payment.isReceipt());
						psla.setOpenAmt(pAlloc.getAmount().add(pAlloc.getDiscountAmt()));
						psla.setPayAmt (pAlloc.getAmount());
						psla.setDiscountAmt(pAlloc.getDiscountAmt());
						psla.setDifferenceAmt (Env.ZERO);
						psla.setC_PaySelectionCheck_ID(psc.getC_PaySelectionCheck_ID());
						psla.setProcessed(true);
						psla.saveEx();
						numInv++;
					}
				}
				if (numInv > 0) {
					psc.setQty (numInv);
					psc.saveEx();
				}
			}
		}
		
		//	Indicate Done
		ps.setProcessed(true);
		ps.saveEx();
		return psc;
	}	//	createForPayment

	
	/**************************************************************************
	 *  Get Checks of Payment Selection
	 *
	 *  @param C_PaySelection_ID Payment Selection
	 *  @param PaymentRule Payment Rule
	 *  @param startDocumentNo start document no
	 *	@param trxName transaction
	 *  @return array of checks
	 */
	static public MPaySelectionCheck[] get (int C_PaySelection_ID,
		String PaymentRule, int startDocumentNo, String trxName)
	{
		s_log.fine("C_PaySelection_ID=" + C_PaySelection_ID
			+ ", PaymentRule=" +  PaymentRule + ", startDocumentNo=" + startDocumentNo);
		ArrayList<MPaySelectionCheck> list = new ArrayList<MPaySelectionCheck>();

		int docNo = startDocumentNo;
		String sql = "SELECT * FROM C_PaySelectionCheck "
			+ "WHERE C_PaySelection_ID=? AND PaymentRule=? AND C_Payment_ID IS NULL  ";//Dixon
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, trxName);
			pstmt.setInt(1, C_PaySelection_ID);
			pstmt.setString(2, PaymentRule);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				MPaySelectionCheck check = new MPaySelectionCheck (Env.getCtx(), rs, trxName);
				//	Set new Check Document No
				check.setDocumentNo(String.valueOf(docNo++));
				check.saveEx(); 
				list.add(check);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			s_log.log(Level.SEVERE, sql, e);
		}

		//  convert to Array
		MPaySelectionCheck[] retValue = new MPaySelectionCheck[list.size()];
		list.toArray(retValue);
		return retValue;
	}   //  get

	
	/**************************************************************************
	 * 	Confirm Print.
	 * 	Create Payments the first time 
	 * 	@param checks checks
	 * 	@param batch batch
	 * 	@return last Document number or 0 if nothing printed
	 */
	public static int confirmPrint (MPaySelectionCheck[] checks, MPaymentBatch batch)
	{
		int lastDocumentNo = 0;
		for (int i = 0; i < checks.length; i++)
		{
			MPaySelectionCheck check = checks[i];
			MPayment payment = new MPayment(check.getCtx(), check.getC_Payment_ID(), check.get_TrxName());
			//	Existing Payment
			if (check.getC_Payment_ID() != 0)
			{
				//	Update check number
				if (check.getPaymentRule().equals(PAYMENTRULE_Check))
				{
					payment.setCheckNo(check.getDocumentNo());
					if (!payment.save())
						s_log.log(Level.SEVERE, "Payment not saved: " + payment);
				}
			}
			else	//	New Payment
			{
				payment = new MPayment(check.getCtx(), 0, check.get_TrxName());
				payment.setAD_Org_ID(check.getAD_Org_ID());
				//
				if (check.getPaymentRule().equals(PAYMENTRULE_Check))
					payment.setBankCheck (check.getParent().getC_BankAccount_ID(), false, check.getDocumentNo());
				else if (check.getPaymentRule().equals(PAYMENTRULE_CreditCard))
					payment.setTenderType(X_C_Payment.TENDERTYPE_CreditCard);
				else if (check.getPaymentRule().equals(PAYMENTRULE_DirectDeposit)
					|| check.getPaymentRule().equals(PAYMENTRULE_DirectDebit))
					payment.setBankACH(check);
				else
				{
					s_log.log(Level.SEVERE, "Unsupported Payment Rule=" + check.getPaymentRule());
					continue;
				}
				payment.setTrxType(X_C_Payment.TRXTYPE_CreditPayment);
				payment.setAmount(check.getParent().getC_Currency_ID(), check.getPayAmt());
				payment.setDiscountAmt(check.getDiscountAmt());
				payment.setDateTrx(check.getParent().getPayDate());
				payment.setDateAcct(payment.getDateTrx()); // globalqss [ 2030685 ]
				payment.setC_BPartner_ID(check.getC_BPartner_ID());
				//	Link to Batch
				if (batch != null)
				{
					if (batch.getC_PaymentBatch_ID() == 0)
						batch.saveEx();	//	new
					payment.setC_PaymentBatch_ID(batch.getC_PaymentBatch_ID());
				}
				//	Link to Invoice
				MPaySelectionLine psl = null;//	Dixon 
				MPaySelectionLine[] psls = check.getPaySelectionLines(false);
				s_log.fine("confirmPrint - " + check + " (#SelectionLines=" + psls.length + ")");
				if (check.getQty()>0){
					psl = psls[0];
					s_log.fine("Map to Invoice " + psl);
					//
				}
				
				if (check.getQty() == 1 && psls != null && psls.length == 1)
				{
//					MPaySelectionLine psl = psls[0];
//					s_log.fine("Map to Invoice " + psl);
					//
					payment.setC_Invoice_ID (psl.getC_Invoice_ID());
					payment.setDiscountAmt (psl.getDiscountAmt());
					payment.setWriteOffAmt(psl.getDifferenceAmt());
					BigDecimal overUnder = psl.getOpenAmt().subtract(psl.getPayAmt())
						.subtract(psl.getDiscountAmt()).subtract(psl.getDifferenceAmt());
					payment.setOverUnderAmt(overUnder);
				}
				else
					payment.setDiscountAmt(Env.ZERO);
				if (psl !=null){
					int p_LVE_PaymentRequest_ID =  psl.get_ValueAsInt("LVE_PaymentRequest_ID");
					
					MLVEPaymentRequest pr = 
							new MLVEPaymentRequest(check.getCtx(), p_LVE_PaymentRequest_ID , check.get_TrxName());
					payment.setC_Currency_ID(pr.getC_Currency_ID());
					payment.saveEx();
					
					// 2014-07-22 Carlos Parada 
					// Set Pre-payment When Order And Charge When Journal

					//When Order
					//if (psl.get_ValueAsInt("C_Order_ID")!=0){
					if (pr.getRequestType().equals(MLVEPaymentRequest.REQUESTTYPE_PurchaseOrder)){
						payment.setC_Order_ID(psl.get_ValueAsInt("C_Order_ID"));
						payment.setIsPrepayment(true);
					}
					
					//When Journal
					//if (psl.get_ValueAsInt("GL_JournalLine_ID")!=0){
					if (pr.getRequestType().equals(MLVEPaymentRequest.REQUESTTYPE_GLJournal)){
						payment.setC_Charge_ID(pr.getC_Charge_ID());
					}
					
					//if (psl.get_ValueAsInt("C_BPartner_ID")!=0){
					if (pr.getRequestType().equals(MLVEPaymentRequest.REQUESTTYPE_PaymentRequestManual)){
						payment.setC_Charge_ID(pr.getC_Charge_ID() > 0 ? pr.getC_Charge_ID() : 0);
						payment.setC_BPartner_ID(psl.get_ValueAsInt("C_BPartner_ID"));
					}
					//End Carlos Parada
					
					//Dixon Martinez 2015-24-02 
					//Add document type of document type payment
					MDocType dt = MDocType.get(pr.getCtx(), pr.getC_DocType_ID());
					int p_C_DocType_ID = dt.get_ValueAsInt("C_DocTypePayment_ID");
					if(p_C_DocType_ID > 0)
						payment.setC_DocType_ID(p_C_DocType_ID);
					//End Dixon Martinez
				}
				payment.setWriteOffAmt(Env.ZERO);
				if (!payment.save())
					s_log.log(Level.SEVERE, "Payment not saved: " + payment);
				//
				int C_Payment_ID = payment.get_ID();
				if (C_Payment_ID < 1)
					s_log.log(Level.SEVERE, "Payment not created=" + check);
				else
				{
					check.setC_Payment_ID (C_Payment_ID);
					check.saveEx();	//	Payment process needs it
					//	Should start WF
					payment.processIt(DocAction.ACTION_Complete);
					if (!payment.save())
						s_log.log(Level.SEVERE, "Payment not saved: " + payment);
				}
			}	//	new Payment

			//	Get Check Document No
			try
			{
				int no = Integer.parseInt(check.getDocumentNo());
				if (lastDocumentNo < no)
					lastDocumentNo = no;
			}
			catch (NumberFormatException ex)
			{
				s_log.log(Level.SEVERE, "DocumentNo=" + check.getDocumentNo(), ex);
			}
			check.setIsPrinted(true);
			check.setProcessed(true);
			if (!check.save ())
				s_log.log(Level.SEVERE, "Check not saved: " + check);
		}	//	all checks

		s_log.fine("Last Document No = " + lastDocumentNo);
		return lastDocumentNo;
	}	//	confirmPrint

	/** Logger								*/
	static private CLogger	s_log = CLogger.getCLogger (MPaySelectionCheck.class);

	/**************************************************************************
	 *	Constructor
	 *  @param ctx context
	 *  @param C_PaySelectionCheck_ID C_PaySelectionCheck_ID
	 *	@param trxName transaction
	 */
	public MPaySelectionCheck (Properties ctx, int C_PaySelectionCheck_ID, String trxName)
	{
		super(ctx, C_PaySelectionCheck_ID, trxName);
		if (C_PaySelectionCheck_ID == 0)
		{
		//	setC_PaySelection_ID (0);
		//	setC_BPartner_ID (0);
		//	setPaymentRule (null);
			setPayAmt (Env.ZERO);
			setDiscountAmt(Env.ZERO);
			setIsPrinted (false);
			setIsReceipt (false);
			setQty (0);
		}
	}   //  MPaySelectionCheck

	/**
	 *	Load Constructor
	 *  @param ctx context
	 *  @param rs result set
	 *	@param trxName transaction
	 */
	public MPaySelectionCheck(Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}   //  MPaySelectionCheck

	/**
	 * 	Create from Line
	 *	@param line payment selection
	 *	@param PaymentRule payment rule
	 */
	public MPaySelectionCheck (MPaySelectionLine line, String PaymentRule)
	{
		this (line.getCtx(), 0, line.get_TrxName());
		setClientOrg(line);
		setC_PaySelection_ID (line.getC_PaySelection_ID());
		//2014-07-22 Carlos Parada Support for Bussiness Partner from Payment Request  
		//int C_BPartner_ID = line.getInvoice().getC_BPartner_ID();
		int C_BPartner_ID = 0;
		MLVEPaymentRequestLine prl = new MLVEPaymentRequestLine(getCtx(), line.get_ValueAsInt("LVE_PaymentRequestLine_ID"),line.get_TrxName());
		if (prl.getC_BPartner_ID()!=0)
			C_BPartner_ID = prl.getC_BPartner_ID();
		//End Carlos Parada
		
		setC_BPartner_ID (C_BPartner_ID);
		//2015-02-27 Carlos Parada Comment Set Bank Account
		/*if (X_C_Order.PAYMENTRULE_DirectDebit.equals(PaymentRule))
		{
			MBPBankAccount[] bas = MBPBankAccount.getOfBPartner (line.getCtx(), C_BPartner_ID); 
			for (int i = 0; i < bas.length; i++) 
			{
				MBPBankAccount account = bas[i];
				if (account.isDirectDebit())
				{
					setC_BP_BankAccount_ID(account.getC_BP_BankAccount_ID());
					break;
				}
			}
		}
		else if (X_C_Order.PAYMENTRULE_DirectDeposit.equals(PaymentRule))
		{
			MBPBankAccount[] bas = MBPBankAccount.getOfBPartner (line.getCtx(), C_BPartner_ID); 
			for (int i = 0; i < bas.length; i++) 
			{
				MBPBankAccount account = bas[i];
				if (account.isDirectDeposit())
				{
					setC_BP_BankAccount_ID(account.getC_BP_BankAccount_ID());
					break;
				}
			}
		}
		**/
		/** 2015-04-15 Overwrite Business Partner Bank Account */
		if (prl.getLVE_PaymentRequestLine_ID() != 0){
			if (prl.getC_BP_BankAccount_ID() != 0)
				setC_BP_BankAccount_ID(prl.getC_BP_BankAccount_ID());
			else{
				MBPBankAccount[] bpas = MBPBankAccount.getOfBPartner (Env.getCtx(), getC_BPartner_ID());
				
				for (int i =0;i<bpas.length;i++)
					if (PaymentRule.equals(bpas[i].get_ValueAsString("PaymentRule")) 
								&&	bpas[i].get_ValueAsBoolean("IsDefault"))
						setC_BP_BankAccount_ID(bpas[i].getC_BP_BankAccount_ID());
			}
		}
		/** End Carlos Parada*/
		setPaymentRule (PaymentRule);
		//
		setIsReceipt(line.isSOTrx());
		setPayAmt (line.getPayAmt());
		setDiscountAmt(line.getDiscountAmt());
		setQty (1);
	}	//	MPaySelectionCheck

	/**
	 * 	Create from Pay Selection
	 *	@param ps payment selection
	 *	@param PaymentRule payment rule
	 */
	public MPaySelectionCheck (MPaySelection ps, String PaymentRule)
	{
		this (ps.getCtx(), 0, ps.get_TrxName());
		setClientOrg(ps);
		setC_PaySelection_ID (ps.getC_PaySelection_ID());
		setPaymentRule (PaymentRule);
	}	//	MPaySelectionCheck
	
	
	/**	Parent					*/
	private MPaySelection			m_parent = null;
	/**	Payment Selection lines of this check	*/
	private MPaySelectionLine[]		m_lines = null;

	
	/**
	 * 	Add Payment Selection Line
	 *	@param line line
	 */
	public void addLine (MPaySelectionLine line)
	{
		int C_BPartner_ID = 0;
		MLVEPaymentRequest pr = new MLVEPaymentRequest(getCtx(), line.get_ValueAsInt("LVE_PaymentRequest_ID"), get_TrxName());
		MLVEPaymentRequestLine prl = new MLVEPaymentRequestLine(getCtx(), line.get_ValueAsInt("LVE_PaymentRequestLine_ID"), get_TrxName());
		
		//2015-05-20 Carlos Parada Set Business Partner From Payment Request 
		C_BPartner_ID = prl.getC_BPartner_ID();
		/*
		if (pr.getRequestType().equals(X_LVE_PaymentRequest.REQUESTTYPE_APInvoice)){
			MInvoice inv = new MInvoice(getCtx(), prl.getC_Invoice_ID(), get_TrxName());
			C_BPartner_ID = inv.getC_BPartner_ID();
		}else if (pr.getRequestType().equals(X_LVE_PaymentRequest.REQUESTTYPE_PurchaseOrder)){
			MOrder order = new MOrder(getCtx(), prl.getC_Order_ID(), get_TrxName());
			C_BPartner_ID = order.getC_BPartner_ID();
		}else if (pr.getRequestType().equals(X_LVE_PaymentRequest.REQUESTTYPE_GLJournal)){
			MJournalLine jl = new MJournalLine(getCtx(), prl.getGL_JournalLine_ID(), get_TrxName());
			C_BPartner_ID = jl.get_ValueAsInt("C_BPartner_ID");
		}else{
			C_BPartner_ID = prl.getC_BPartner_ID();
		}
		*/
		//End Carlos Parada
		if (getC_BPartner_ID() != C_BPartner_ID)
			//"Line for different BPartner"
			throw new IllegalArgumentException(Msg.parseTranslation(getCtx(), "@Difference@ @C_BPartner_ID@ @LVE_PaymentRequest_ID@ " + pr.getDocumentNo() + " @Line@ " + prl.getLine()));
		//
		if (isReceipt() == line.isSOTrx())
		{
			setPayAmt (getPayAmt().add(line.getPayAmt()));
			setDiscountAmt(getDiscountAmt().add(line.getDiscountAmt()));
		}
		else
		{
			setPayAmt (getPayAmt().subtract(line.getPayAmt()));
			setDiscountAmt(getDiscountAmt().subtract(line.getDiscountAmt()));
		}
		setQty (getQty()+1);
	}	//	addLine
	
	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public MPaySelection getParent()
	{
		if (m_parent == null)
			m_parent = new MPaySelection (getCtx(), getC_PaySelection_ID(), get_TrxName());
		return m_parent;
	}	//	getParent

	/**
	 * 	Is this a valid Prepared Payment
	 *	@return true if valid
	 */
	public boolean isValid()
	{
		if (getC_BP_BankAccount_ID() != 0)
			return true;
		return !isDirect();
	}	//	isValid
	
	/**
	 * 	Is this a direct Debit or Deposit
	 *	@return true if direct
	 */
	public boolean isDirect()
	{
		return (X_C_Order.PAYMENTRULE_DirectDeposit.equals(getPaymentRule())
			|| X_C_Order.PAYMENTRULE_DirectDebit.equals(getPaymentRule()));
	}	//	isDirect
	
	/**
	 * 	String Representation
	 * 	@return info
	 */
	public String toString()
	{
		StringBuffer sb = new StringBuffer("MPaymentCheck[");
		sb.append(get_ID()).append("-").append(getDocumentNo())
			.append("-").append(getPayAmt())
			.append(",PaymetRule=").append(getPaymentRule())
			.append(",Qty=").append(getQty())
			.append("]");
		return sb.toString();
	}	//	toString
	
	/**
	 * 	Get Payment Selection Lines of this check
	 *	@param requery requery
	 * 	@return array of peyment selection lines
	 */
	public MPaySelectionLine[] getPaySelectionLines (boolean requery)
	{
		if (m_lines != null && !requery) {
			set_TrxName(m_lines, get_TrxName());
			return m_lines;
		}
		ArrayList<MPaySelectionLine> list = new ArrayList<MPaySelectionLine>();
		String sql = "SELECT * FROM C_PaySelectionLine WHERE C_PaySelectionCheck_ID=? ORDER BY Line";
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt (1, getC_PaySelectionCheck_ID());
			ResultSet rs = pstmt.executeQuery ();
			while (rs.next ())
				list.add (new MPaySelectionLine(getCtx(), rs, get_TrxName()));
			rs.close ();
			pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		try
		{
			if (pstmt != null)
				pstmt.close ();
			pstmt = null;
		}
		catch (Exception e)
		{
			pstmt = null;
		}
		//
		m_lines = new MPaySelectionLine[list.size ()];
		list.toArray (m_lines);
		return m_lines;
	}	//	getPaySelectionLines

	
	/**
	 *	Delete Payment Selection when generated as Draft (Print Preview) 
	 *	@param ctx context
	 *	@param C_Payment_ID id
	 *	@param trxName transaction
	 * @return
	 */
	public static boolean deleteGeneratedDraft(Properties ctx, int C_Payment_ID, String trxName)
	{
		
		MPaySelectionCheck mpsc = MPaySelectionCheck.getOfPayment (ctx, C_Payment_ID, trxName);
		
		if (mpsc != null && mpsc.isGeneratedDraft())  
		{
			MPaySelection mps = new MPaySelection(ctx, mpsc.getC_PaySelection_ID(),trxName);
			MPaySelectionLine[] mpsl = mps.getLines(true);
			
			// Delete Pay Selection lines 
			for (int i = 0; i < mpsl.length; i++) 
			{
				if (!mpsl[i].delete(true, trxName))
					return false;
			}
			// Delete Pay Selection Check
			if (!mpsc.delete(true, trxName))
				return false;
			
			// Delete Pay Selection
			if (!mps.delete(true, trxName))
				return false;
		}
	return true;	
	}
	
	/**
	 * 	Get Check for Payment Selection
	 *	@param ctx context
	 *	@param C_Payment_ID id
	 *	@param trxName transaction
	 *	@return pay selection check for payment selection or null
	 */
	public static MPaySelectionCheck[] getOfPaySelection(Properties ctx, int C_PaySelection_ID, String trxName)
	{
	     
	     List<PO> list = new Query(ctx, "C_PaySelectionCheck", "C_PaySelection_ID=?", trxName)
	       .setParameters(new Object[] { 
	       Integer.valueOf(C_PaySelection_ID) })
	       .list();
	 
	     MPaySelectionCheck[] retValue = new MPaySelectionCheck[list.size()];
	     list.toArray(retValue);
	     return retValue;
	}	//	getOfPaySelection
	
}   //  MPaySelectionCheck
