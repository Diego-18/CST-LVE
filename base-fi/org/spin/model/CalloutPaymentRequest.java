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

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.X_C_Invoice;
import org.compiere.model.X_C_Order;
import org.compiere.model.X_GL_JournalLine;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class CalloutPaymentRequest extends CalloutEngine {

	/**
	 * Set Request Type depending document type
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 08/07/2014, 11:22:37
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String requestType (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value) {
		
		//	Valid status of Callout
		if(isCalloutActive() 
				|| value == null)
			return "";
		//	Id Document Type 		
		int p_C_DocType_ID = (Integer) value;
		//	Prepare sql to get the value of payment request
		String sql = "SELECT C_DocType.RequestType FROM C_DocType WHERE C_DocType_ID = ?";
		//	Return value payment request
		String p_PaymentRequest = DB.getSQLValueString(null, sql, p_C_DocType_ID);
		//	if return null exit callout
		if(p_PaymentRequest == null)
			return "";
		//	Set Value to request type
		mTab.setValue("RequestType", p_PaymentRequest);
		
		return "";
	}	//	Request Type

	/**
	 * Set Pay Amount
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 08/07/2014, 11:22:37
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String payAmt (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value) {
		
		//	Valid status of Callout
		if(isCalloutActive() 
				|| value == null)
			return "";
		String sql = "";
		Integer p_Record_ID = 0;
		String column = mField.getColumnName();
		String p_RequestType = "";
		
		//	Initialize parameters
		if(column.equals(X_C_Invoice.COLUMNNAME_C_Invoice_ID)){	//	If Invoice is selected 
			p_RequestType = X_LVE_PaymentRequest.REQUESTTYPE_APInvoice;
			p_Record_ID = (Integer) mTab.getValue("C_Invoice_ID");
		}else if(column.equals(X_C_Order.COLUMNNAME_C_Order_ID)){	//	If Order is selected
			p_RequestType = X_LVE_PaymentRequest.REQUESTTYPE_PurchaseOrder;
			p_Record_ID = (Integer) mTab.getValue("C_Order_ID");
		}else if(column.equals(X_GL_JournalLine.COLUMNNAME_GL_JournalLine_ID)){	//	If Journal Line is selected
			p_Record_ID = (Integer) mTab.getValue("GL_JournalLine_ID");
			p_RequestType = X_LVE_PaymentRequest.REQUESTTYPE_GLJournal;
		}
		//
		sql = "SELECT OpenAmt,  DueDate, C_BPartner_ID FROM LVE_RV_OpenPayment WHERE Record_ID=? AND RequestType = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setInt (1, p_Record_ID.intValue());
			pstmt.setString(2, p_RequestType);
			
			rs = pstmt.executeQuery ();
			if (rs.next ()) {
				mTab.setValue ("PayAmt", rs.getBigDecimal ("OpenAmt") == null ? Env.ZERO : rs.getBigDecimal(1));
				mTab.setValue ("DueDate", rs.getTimestamp("DueDate"));
				mTab.setValue ("C_BPartner_ID", rs.getInt("C_BPartner_ID"));
			}
		}
		catch (SQLException e) {
			log.log (Level.SEVERE, sql, e);
			return e.getLocalizedMessage ();
		}
		finally {
			DB.close (rs, pstmt);
			rs = null;
			pstmt = null;
		}
		
		return "";

	}	//	Pay Amount
	
}	//	Callout Payment Request
