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
 * Contributor(s): Teo Sarca
 *****************************************************************************/
package org.compiere.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.DBException;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.MLVEPaymentRequest;
import org.spin.model.X_LVE_PaymentRequest;


/**
 *	Payment Selection Callouts
 *	
 *  @author Jorg Janke
 *  @version $Id: CalloutPaySelection.java,v 1.3 2006/07/30 00:51:02 jjanke Exp $
 *  
 *  globalqss - integrate Teo Sarca bug fix 
 *    [ 1623598 ] Payment Selection Line problem when selecting invoice
 */
public class CalloutPaySelection extends CalloutEngine
{
	/**
	 *	Payment Selection Line - Payment Amount.
	 *		- called from C_PaySelectionLine.PayAmt
	 *		- update DifferenceAmt
	 *  @param ctx context
	 *  @param WindowNo current Window No
	 *  @param mTab Grid Tab
	 *  @param mField Grid Field
	 *  @param value New Value
	 *  @return null or error message
	 */
	public String payAmt (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		if (isCalloutActive() || value == null)
			return "";
//		2015-07-11 Dixon Martinez
//		Commented to add change of Payment Request
		//	get invoice info
//		Integer ii = (Integer)mTab.getValue("C_Invoice_ID");
//		if (ii == null)
//			return "";
//		int C_Invoice_ID = ii.intValue();
//		if (C_Invoice_ID == 0)
//			return "";
		Integer p_LVE_PaymentRequest_ID = 0;
		if(mTab.getValue("LVE_PaymentRequest_ID") != null)
			p_LVE_PaymentRequest_ID = (Integer)mTab.getValue("LVE_PaymentRequest_ID");
		else 
			return "";
		
		MLVEPaymentRequest m_LVE_PaymentRequest = new MLVEPaymentRequest(ctx, p_LVE_PaymentRequest_ID, null);
		String p_RequestType = m_LVE_PaymentRequest.getRequestType();
		Integer ii = 0;
		if(p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_APInvoice)){
			//	get invoice info
			if(mTab.getValue("C_Invoice_ID") != null)
				ii = (Integer)mTab.getValue("C_Invoice_ID");
			else 
				return "";
			
			if (ii == null)
				return "";
			int C_Invoice_ID = ii.intValue();
			if (C_Invoice_ID == 0)
				return "";
		}else if(p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_PurchaseOrder)){
			//	get order info
			if(mTab.getValue("C_Order_ID") != null)
				ii = (Integer)mTab.getValue("C_Order_ID");
			else 
				return "";
			if (ii == null)
				return "";
			int C_Order_ID = ii.intValue();
			if (C_Order_ID == 0)
				return "";
		}else if(p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_GLJournal)){
			//	get journal info
			if(mTab.getValue("GL_JournalLine_ID") != null)
				ii = (Integer)mTab.getValue("GL_JournalLine_ID");
			else 
				return "";
			if (ii == null)
				return "";
			int GL_JournalLine_ID = ii.intValue();
			if (GL_JournalLine_ID == 0)
				return "";
		} 
//		End Dixon Martinez
		//
		BigDecimal OpenAmt = (BigDecimal)mTab.getValue("OpenAmt");
		BigDecimal PayAmt = (BigDecimal)mTab.getValue("PayAmt");
		BigDecimal DiscountAmt = (BigDecimal)mTab.getValue("DiscountAmt");
		BigDecimal DifferenceAmt = OpenAmt.subtract(PayAmt).subtract(DiscountAmt);
		log.fine(" - OpenAmt=" + OpenAmt + " - PayAmt=" + PayAmt
			+ ", Discount=" + DiscountAmt + ", Difference=" + DifferenceAmt);
		
		mTab.setValue("DifferenceAmt", DifferenceAmt);

		return "";
	}	//	PaySel_PayAmt

	/**
	 *	Payment Selection Line - Invoice.
	 *		- called from C_PaySelectionLine.C_Invoice_ID
	 *		- update PayAmt & DifferenceAmt
	 *  @param ctx context
	 *  @param WindowNo current Window No
	 *  @param mTab Grid Tab
	 *  @param mField Grid Field
	 *  @param value New Value
	 *  @return null or error message
	 */
	public String invoice (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		if (isCalloutActive() || value == null)
			return "";
		//	get value
		int C_Invoice_ID = ((Integer)value).intValue();
		if (C_Invoice_ID == 0)
			return "";
		int C_BankAccount_ID = Env.getContextAsInt(ctx, WindowNo, "C_BankAccount_ID");
		Timestamp PayDate = Env.getContextAsDate(ctx, WindowNo, "PayDate");
		/* ARHIPAC: TEO: BEGIN: END ------------------------------------------------------------------------------------------ */
		if (PayDate == null)
			PayDate = new Timestamp(System.currentTimeMillis());

		BigDecimal OpenAmt = Env.ZERO;
		BigDecimal DiscountAmt = Env.ZERO;
		Boolean IsSOTrx = Boolean.FALSE;
		String sql = "SELECT currencyConvert(invoiceOpen(i.C_Invoice_ID, 0), i.C_Currency_ID,"
				+ "ba.C_Currency_ID, i.DateInvoiced, i.C_ConversionType_ID, i.AD_Client_ID, i.AD_Org_ID),"
			+ " paymentTermDiscount(i.GrandTotal,i.C_Currency_ID,i.C_PaymentTerm_ID,i.DateInvoiced, ?), i.IsSOTrx "
			+ "FROM C_Invoice_v i, C_BankAccount ba "
			+ "WHERE i.C_Invoice_ID=? AND ba.C_BankAccount_ID=?";	//	#1..2
//		2015-07-11 Dixon Martinez
//		Add change of Payment Request
		Integer p_LVE_PaymentRequest_ID = 0;
		if(mTab.getValue("LVE_PaymentRequest_ID") != null)
			p_LVE_PaymentRequest_ID = (Integer) mTab.getValue("LVE_PaymentRequest_ID");
		else 
			return "";
		//
		BigDecimal payAmt = null;
		if(p_LVE_PaymentRequest_ID > 0){
			sql = null;
			sql = "SELECT invoiceOpen(prl.C_Invoice_ID, 0) OpenAmt,PayAmt " +
					"FROM LVE_PaymentRequestLine prl " +
					"WHERE LVE_PaymentRequest_ID = ?  AND C_Invoice_ID = ?";
			ResultSet rs = null;
			PreparedStatement pstmt = null;
			try
			{
				pstmt = DB.prepareStatement(sql, null);
				pstmt.setInt(1, p_LVE_PaymentRequest_ID);
				pstmt.setInt(2, C_Invoice_ID);
				rs = pstmt.executeQuery();
				if (rs.next())
				{
					OpenAmt = rs.getBigDecimal(1);
					payAmt = rs.getBigDecimal(2);
				}
			}
			catch (SQLException e)
			{
				log.log(Level.SEVERE, sql, e);
			}
			finally
			{
				DB.close(rs, pstmt);
				rs = null; pstmt = null;
			}
			//
			if(payAmt == null)
				payAmt = Env.ZERO;
			mTab.setValue("OpenAmt", OpenAmt);
			mTab.setValue("PayAmt", payAmt);
			return "";
		}
			
//		End Dixon Martinez	
			
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(2, C_Invoice_ID);
			pstmt.setInt(3, C_BankAccount_ID);
			pstmt.setTimestamp(1, PayDate);
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				OpenAmt = rs.getBigDecimal(1);
				DiscountAmt = rs.getBigDecimal(2);
				IsSOTrx = new Boolean ("Y".equals(rs.getString(3)));
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		log.fine(" - OpenAmt=" + OpenAmt + " (Invoice=" + C_Invoice_ID + ",BankAcct=" + C_BankAccount_ID + ")");
		mTab.setValue("OpenAmt", OpenAmt);
		mTab.setValue("PayAmt", OpenAmt.subtract(DiscountAmt));
		mTab.setValue("DiscountAmt", DiscountAmt);
		mTab.setValue("DifferenceAmt", Env.ZERO);
		mTab.setValue("IsSOTrx", IsSOTrx);
		return "";
	}	//	PaySel_Invoice

	/**
	 * Set Request Type 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 14/10/2014, 17:38:51
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String setRequestType(Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value) {
		if (isCalloutActive() 
				|| value == null) {
			mTab.setValue("RequestType", null);
			return "";
		}
		int p_LVE_PaymentRequest_ID = (Integer) value;
		
		String sql = "SELECT RequestType FROM LVE_PaymentRequest WHERE LVE_PaymentRequest_ID = ?";
		
		String p_RequestType = DB.getSQLValueString(null, sql, p_LVE_PaymentRequest_ID);
		
		if(p_RequestType != null)
			mTab.setValue("RequestType", p_RequestType);
		
		return "";
	}
	
	/**
	 * Set Document - Purchase Order, Journal  Line, Invoice or Business Partner
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 14/10/2014, 17:38:51
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String setDocument(Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value) {
		if (isCalloutActive() 
				|| value == null) 
			return "";
		int p_LVE_PaymentRequestLine_ID = (mTab.getValue("LVE_PaymentRequestLine_ID") != null ? 
											(Integer) mTab.getValue("LVE_PaymentRequestLine_ID") : 0);
		String p_RequestType = (mTab.get_ValueAsString("RequestType") != null ? 
								mTab.get_ValueAsString("RequestType") : "");
		//
		StringBuffer sql = new StringBuffer();
		//
		String nameColumn = "";
		//
		int p_Record_ID = 0; //DB.getSQLValue(null, sql.toString(), p_LVE_PaymentRequestLine_ID);
		//
		BigDecimal p_PayAmt = null;
		BigDecimal p_OpenAmount = null;
		
		if(p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_APInvoice)) {
			sql = new StringBuffer();
			//2015-05-20 Carlos Parada Optimize Query
			sql.append("SELECT invoiceOpen(prl.C_Invoice_ID ,null) OpenAmt, prl.C_Invoice_ID, prl.PayAmt " +
						"FROM LVE_PaymentRequestLine prl " +
						"INNER JOIN LVE_PaymentRequest pr ON (pr.LVE_PaymentRequest_ID = prl.LVE_PaymentRequest_ID ) " +
						"WHERE prl.LVE_PaymentRequestLine_ID = ? ");
			
			/*
			sql.append("SELECT invoiceOpen(prl.C_Invoice_ID,i.C_InvoicePaySchedule_ID) OpenAmt, prl.C_Invoice_ID, prl.PayAmt ");
			sql.append(" FROM LVE_PaymentRequestLine prl");
			sql.append(" INNER JOIN LVE_PaymentRequest pr ON (pr.LVE_PaymentRequest_ID = prl.LVE_PaymentRequest_ID )");
			sql.append(" INNER JOIN LVE_RV_OpenItem i ON(i.C_Invoice_ID = prl.C_Invoice_ID)");
			sql.append(" WHERE LVE_PaymentRequestLine_ID = ? ") ;
			sql.append(" GROUP BY prl.C_Invoice_ID,i.C_InvoicePaySchedule_ID,prl.PayAmt");
			*/
			//End Carlos Parada
			nameColumn = "C_Invoice_ID";
		} else if(p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_GLJournal)) {
			sql = new StringBuffer();
			sql.append("SELECT op.OpenAmt, prl.PayAmt,prl.GL_JournalLine_ID ");
			sql.append(" FROM LVE_PaymentRequestLine prl");
			sql.append(" INNER JOIN LVE_RV_OpenPayment op ON (prl.GL_JournalLine_ID = op.Record_ID)");
			sql.append(" INNER JOIN GL_JournalLine jl ON(jl.GL_JournalLine_ID = op.Record_ID)");
			sql.append(" INNER JOIN GL_Journal j ON (j.GL_Journal_ID = jl.GL_Journal_ID )");
			sql.append(" INNER JOIN GL_JournalBatch jb ON (j.GL_JournalBatch_ID = jb.GL_JournalBatch_ID)");
			sql.append(" WHERE LVE_PaymentRequestLine_ID = ? ") ;
			sql.append(" GROUP BY prl.GL_JournalLine_ID ,op.OpenAmt,prl.PayAmt");
			nameColumn = "GL_JournalLine_ID";
		} else if(p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_PaymentRequestManual)) {
			sql = new StringBuffer();
			sql.append("SELECT C_BPartner_ID, PayAmt, PayAmt OpenAmt FROM LVE_PaymentRequestLine ");
			sql.append(" WHERE LVE_PaymentRequestLine_ID = ? ") ;
			nameColumn = "C_BPartner_ID";
		} else if(p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_PurchaseOrder)){
			sql = new StringBuffer();
			sql.append("SELECT orderOpen(prl.C_Order_ID,oo.LVE_OrderPrepaySchedule_ID) OpenAmt,prl.PayAmt, prl.C_Order_ID  ");
			sql.append(" FROM LVE_PaymentRequestLine prl");
			sql.append(" INNER JOIN LVE_PaymentRequest pr ON (pr.LVE_PaymentRequest_ID = prl.LVE_PaymentRequest_ID )");
			sql.append(" INNER JOIN LVE_RV_OrderOpen oo ON(oo.C_Order_ID = prl.C_Order_ID)");
			sql.append(" WHERE LVE_PaymentRequestLine_ID = ? ") ;
			sql.append(" GROUP BY prl.C_Order_ID,oo.LVE_OrderPrepaySchedule_ID,prl.PayAmt");
			nameColumn = "C_Order_ID";
		}

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = DB.prepareStatement(sql.toString(), null);
			DB.setParameters(pstmt, new Object[]{p_LVE_PaymentRequestLine_ID});
			rs = pstmt.executeQuery();
			while(rs.next()) {
				p_Record_ID = rs.getInt(nameColumn);
				p_PayAmt = rs.getBigDecimal("PayAmt");
				p_OpenAmount = rs.getBigDecimal("OpenAmt");
			}
		} catch (SQLException e) {
			throw new DBException(e, sql.toString());
		} finally {
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}

		if(p_Record_ID > 0)
			mTab.setValue(nameColumn, p_Record_ID);
		
		setPayAmt(ctx, WindowNo, mTab, mField, value, p_PayAmt,p_RequestType, p_OpenAmount);
		
		return "";
	}
	
	
	public String setPayAmt(Properties ctx, int WindowNo, GridTab mTab, GridField mField, 
			Object value, BigDecimal p_PayAmt, String p_RequestType,
			BigDecimal p_OpenAmount) {
		
		if (isCalloutActive() 
				|| value == null) 
			return "";
		if(p_PayAmt == null
				|| p_PayAmt.doubleValue() > 0)
			mTab.setValue("PayAmt", p_PayAmt);
			
		if(p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_APInvoice)) {
			if(p_OpenAmount == null
					|| p_OpenAmount.doubleValue() > 0)
				mTab.setValue("OpenAmt", p_OpenAmount);
		} else if(p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_GLJournal)) {
			if(p_OpenAmount == null
					|| p_OpenAmount.doubleValue() > 0)
				mTab.setValue("OpenAmt", p_OpenAmount);
		} else if(p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_PaymentRequestManual)) {
			mTab.setValue("OpenAmt", p_PayAmt);
		} else if(p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_PurchaseOrder)){
			if(p_OpenAmount == null
					|| p_OpenAmount.doubleValue() > 0)
				mTab.setValue("OpenAmt", p_OpenAmount);
		}
			
		//
		BigDecimal OpenAmt = (BigDecimal)mTab.getValue("OpenAmt");
		if(OpenAmt == null)
			OpenAmt = Env.ZERO;
		BigDecimal PayAmt = (BigDecimal)mTab.getValue("PayAmt");
		if(PayAmt == null)
			PayAmt = Env.ZERO;
		BigDecimal DiscountAmt = (BigDecimal)mTab.getValue("DiscountAmt");
		if(DiscountAmt == null)
			DiscountAmt = Env.ZERO;
		BigDecimal DifferenceAmt = OpenAmt.subtract(PayAmt).subtract(DiscountAmt);
		log.fine(" - OpenAmt=" + OpenAmt + " - PayAmt=" + PayAmt
			+ ", Discount=" + DiscountAmt + ", Difference=" + DifferenceAmt);
		
		mTab.setValue("DifferenceAmt", DifferenceAmt);

		return "";
	}
	
}	//	CalloutPaySelection
