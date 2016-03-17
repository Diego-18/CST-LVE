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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.spin.model.MLVEPaymentRequest;
import org.spin.model.MLVEPaymentRequestLine;
import org.spin.model.X_LVE_PaymentRequest;

/**
 * @author href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class PaymentRequestCreateFrom extends SvrProcess {

	/**	Sql 											*/
	private StringBuffer 		sql						= null;
	/**	Request Type									*/
	private String 				p_RequestType 			= null;
	/**	Record ID										*/
	private int 				p_Record_ID				= 0;
	/**	Open Amount 									*/
	private BigDecimal 			p_OpenAmt 				= null;
	/**	Due Amount 									*/
	private BigDecimal 			p_DueAmt 				= null;
	/**	Open Amount 									*/
	private BigDecimal 			p_PrepaidAmt			= null;
	/** Records Updated	 								*/
	private int 				m_Updated				= 0;
	/**	Payment Request									*/
	private int					p_MLVPaymentRequest_ID	= 0;
	private Timestamp 			p_DueDate				=	null;

	//
	@Override
	protected void prepare() {
		sql = new StringBuffer();
		sql.append("SELECT ts.AD_PInstance_ID, ts.T_Selection_ID AS Record_ID,tsb.OpenAmt, tsb.RequestType,tsb.DueDate,tsb.PrepaidAmt,"
				+ " (SELECT PaymentRequestOpen('API',rvop.C_Invoice_ID,NULL) OpenAmt FROM RV_C_Invoice rvop WHERE rvop.C_Invoice_ID = ts.T_Selection_ID AND tsb.RequestType = 'API') DueAmt"
				+ " FROM T_Selection ts " 
				+ " INNER JOIN ( SELECT tsb.AD_PInstance_ID, tsb.T_Selection_ID, " 
				+ " MAX(CASE WHEN tsb.ColumnName = 'OP_OpenAmt' THEN tsb.Value_Number ELSE NULL END ) AS OpenAmt, " 
				+ " MAX(CASE WHEN tsb.ColumnName = 'OP_RequestType' THEN tsb.Value_String ELSE NULL END ) AS RequestType, "
				+ " MAX(CASE WHEN tsb.ColumnName = 'OP_DueDate' THEN tsb.Value_Date ELSE NULL END ) AS DueDate,"
				+ " MAX(CASE WHEN tsb.ColumnName = 'OP_PrepaidAmt' THEN tsb.Value_Number ELSE NULL END ) AS PrepaidAmt"
				+ " FROM T_Selection_Browse tsb"
				+ " GROUP BY" 
				+ " 	tsb.AD_PInstance_ID,tsb.T_Selection_ID" 
				+ " ) tsb ON (ts.AD_PInstance_ID = tsb.AD_PInstance_ID AND ts.T_Selection_ID = tsb.T_Selection_ID)"
				);
		
		sql.append("WHERE ts.AD_PInstance_ID=?");
		log.fine(sql.toString());
		//	Initialize parent Payment Request
		p_MLVPaymentRequest_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception {
		MLVEPaymentRequest m_LVE_PaymentRequest =
				new MLVEPaymentRequest(getCtx(), p_MLVPaymentRequest_ID, get_TrxName());
		
		if(m_LVE_PaymentRequest.getDocStatus().equals(X_LVE_PaymentRequest.DOCSTATUS_Completed)
				|| m_LVE_PaymentRequest.getDocStatus().equals(X_LVE_PaymentRequest.DOCSTATUS_Closed)) {
			return "@ParentComplete@ @LVE_PaymentRequest_ID@ " + m_LVE_PaymentRequest.getDocumentNo();
		}
		return setLine();		
	}

	private String setLine() {
		String result = "";
		PreparedStatement ps = null;
		ResultSet rs = null;
		String msg = "";
		try {
			ps = DB.prepareStatement(sql.toString(), get_TrxName());
			ps.setInt(1, getAD_PInstance_ID());
			rs = ps.executeQuery();
			while (rs.next()) {
				//	Initialize variables 
				p_RequestType = rs.getString("RequestType");
				if(p_RequestType == null)
					throw new AdempiereException("@RequestType@ @NotFound@");
				p_Record_ID = rs.getInt("Record_ID");
				if(p_Record_ID == 0)
					throw new AdempiereException("@Record_ID@ @NotFound@");
				p_OpenAmt = rs.getBigDecimal("OpenAmt");
				if(p_OpenAmt == null)
					p_OpenAmt = Env.ZERO;
				p_PrepaidAmt = rs.getBigDecimal("PrepaidAmt");
				if(p_PrepaidAmt == null)
					p_PrepaidAmt = Env.ZERO;
				p_DueAmt = rs.getBigDecimal("DueAmt");
				if(p_DueAmt == null)
					p_DueAmt = Env.ZERO;
				
				p_DueDate = rs.getTimestamp("DueDate");
				//	Validate Request Type equals Invoice
				if(p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_APInvoice)) {
					 //create int object
			        int res;
			        res = p_PrepaidAmt.add(p_OpenAmt).compareTo(p_DueAmt); 
			        if( res == 0 
							|| res == -1 ) {
			        	createLineDocument(p_Record_ID, p_RequestType);					
					} else {
						msg += "@Updated@="+m_Updated + "@ExcededOpenAmt@ " + p_DueAmt + " < " + "@PayAmt@ " + p_OpenAmt + " @PrepaidAmt@ " + p_PrepaidAmt ;
					}
				}else {
					createLineDocument(p_Record_ID, p_RequestType);	
				}
			}
			if(msg.length()>0)
				throw new AdempiereException(msg);
			result = "@Updated@="+m_Updated;
		} catch (SQLException e) {
			result = e.getMessage();
		}finally{
    		DB.close(rs, ps);
    		rs = null; ps= null;
    	}
		return result;
		
	}

	private void createLineDocument(int p_Record_ID, String p_RequestType) {
		//	Instance new Line
		MLVEPaymentRequestLine m_LVE_PaymentRequestLine = 
				new MLVEPaymentRequestLine(getCtx(), 0, get_TrxName()); 
		//	Validate Request Type
		if(p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_APInvoice))
			m_LVE_PaymentRequestLine.setC_Invoice_ID(p_Record_ID);
		else if(p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_GLJournal))
			m_LVE_PaymentRequestLine.setGL_JournalLine_ID(p_Record_ID);
		else if(p_RequestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_PurchaseOrder))
			m_LVE_PaymentRequestLine.setC_Order_ID(p_Record_ID);
		//	Set Pay Amount
		m_LVE_PaymentRequestLine.setPayAmt(p_OpenAmt);
		//	Set Due Date
		m_LVE_PaymentRequestLine.setDueDate(p_DueDate);
		m_LVE_PaymentRequestLine.setLine(m_LVE_PaymentRequestLine.getLine() + 10);
		m_LVE_PaymentRequestLine.setLVE_PaymentRequest_ID(p_MLVPaymentRequest_ID);
		m_LVE_PaymentRequestLine.saveEx();
		m_Updated++;
	}

}
