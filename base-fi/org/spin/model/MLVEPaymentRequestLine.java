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

import java.sql.ResultSet;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MInvoice;
import org.compiere.model.MJournalLine;
import org.compiere.model.MOrder;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.util.DB;

/**
 * @author <a href="mailto:dixon.22ma@gmail.com">Dixon Martinez</a>
 *
 */
public class MLVEPaymentRequestLine extends X_LVE_PaymentRequestLine {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8100731409551409563L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:dixon.22ma@gmail.com">Dixon Martinez</a> 10/07/2014, 16:21:03
	 * @param ctx
	 * @param LVE_PaymentRequestLine_ID
	 * @param trxName
	 */
	public MLVEPaymentRequestLine(Properties ctx,
			int LVE_PaymentRequestLine_ID, String trxName) {
		super(ctx, LVE_PaymentRequestLine_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:dixon.22ma@gmail.com">Dixon Martinez</a> 10/07/2014, 16:21:03
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEPaymentRequestLine(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	

	@Override
	protected boolean afterSave(boolean newRecord, boolean success) {
		super.afterSave(newRecord, success);
		if(success)
			return updateHeader();
		return false;
	}//	End After Save
	
	@Override
	protected boolean afterDelete (boolean success) {
		super.afterDelete(success);
		if(success)
			return updateHeader();
		//	Return
		return false;
	} //	End After Delete
	
	@Override
	protected boolean beforeSave(boolean newRecord) {
		super.beforeSave(newRecord);
		int C_BPartner_ID = getC_BPartner_ID();
		//Validate Business Partner
		if ((getC_Invoice_ID()!=0)){
			MInvoice inv = new MInvoice(getCtx(), getC_Invoice_ID(), get_TrxName());
			 
			if(inv.getC_BPartner_ID()!=C_BPartner_ID)
				setC_BPartner_ID(inv.getC_BPartner_ID());
		}
		else if ((getC_Order_ID()!=0)){
			MOrder ord = new MOrder(getCtx(), getC_Order_ID(), get_TrxName());
			if(ord.getC_BPartner_ID()!=C_BPartner_ID)
				setC_BPartner_ID(ord.getC_BPartner_ID());
		}
		else if ((getGL_JournalLine_ID()!=0)){
			MJournalLine jl = new MJournalLine(getCtx(), getGL_JournalLine_ID(), get_TrxName());
			if(jl.get_ValueAsInt("C_BPartner_ID")!=C_BPartner_ID)
				setC_BPartner_ID(jl.get_ValueAsInt("C_BPartner_ID"));
		}
		//End Carlos Parada
		if(newRecord){
			int seqNo = DB.getSQLValue(get_TrxName(),"SELECT NVL(MAX(Line),0)+10 AS DefaultValue " +
				"FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID= ?",getLVE_PaymentRequest_ID());
			this.setLine(seqNo);
		}
		if(newRecord
					|| is_ValueChanged(COLUMNNAME_C_Order_ID)
						|| is_ValueChanged(COLUMNNAME_C_Invoice_ID)
							|| is_ValueChanged(COLUMNNAME_GL_JournalLine_ID)){
							MLVEPaymentRequest m_LVEPaymentRequest = 
									new MLVEPaymentRequest(getCtx(), getLVE_PaymentRequest_ID(), get_TrxName());
							
							if(m_LVEPaymentRequest.getRequestType().equals(X_LVE_PaymentRequest.REQUESTTYPE_APInvoice)
									&& getC_Invoice_ID() == 0)	{
								throw new AdempiereException("@C_Invoice_ID@ @NotFound@");
							}else if(m_LVEPaymentRequest.getRequestType().equals(X_LVE_PaymentRequest.REQUESTTYPE_PurchaseOrder)
									&& getC_Order_ID() == 0)	{
								throw new AdempiereException("@C_Order_ID@ @NotFound@");
							}else if(m_LVEPaymentRequest.getRequestType().equals(X_LVE_PaymentRequest.REQUESTTYPE_GLJournal)
									&& getGL_JournalLine_ID()== 0)	{
								throw new AdempiereException("@GL_JournalLine_ID@ @NotFound@");
							}
						}

		//	Return
		return true;
	}//	End beforeSave
	
	/**
	 * Update Header
	 * @author <a href="mailto:dixon.22ma@gmail.com">Dixon Martinez</a> 28/08/2013, 10:24:36
	 * @return
	 * @return boolean
	 */
	private boolean updateHeader(){
		//	Recalculate Header
		//	Update Payment Request Header
		String sql = "UPDATE LVE_PaymentRequest pr SET PayAmt=( " +
				"SELECT COALESCE(SUM(prl.PayAmt),0) FROM LVE_PaymentRequestLine prl " +
				"WHERE prl.LVE_PaymentRequest_ID=pr.LVE_PaymentRequest_ID) " +
				"WHERE pr.LVE_PaymentRequest_ID= " + getLVE_PaymentRequest_ID();
		//
		int no = DB.executeUpdate(sql, get_TrxName());
		if (no != 1)
			log.warning("(1) #" + no);
		
		
		//
		return no == 1;
	}	//	updateHeaderTax

	/**
	 * Get Payment Request Line 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 23/07/2014, 15:20:01
	 * @param ctx
	 * @param po
	 * @param p_Record_ID
	 * @param requestType
	 * @return
	 * @return MLVEPaymentRequestLine
	 */
	public static MLVEPaymentRequestLine get(Properties ctx, PO po,
			int p_Record_ID, String requestType) {
		//
		String sqlWhere = null;
		//	Compare Request Type
		if(requestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_APInvoice)){
			sqlWhere = "C_Invoice_ID = ?";
		}else if(requestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_GLJournal)){
			sqlWhere = "GL_JournalLine_ID = ?";
		}else if(requestType.equals(X_LVE_PaymentRequest.REQUESTTYPE_PurchaseOrder)){
			sqlWhere = "C_Order_ID = ?";
		}else
			sqlWhere = "";
		
		sqlWhere += sqlWhere.length() > 0 ? "AND LVE_PaymentRequest_ID = ?" : " LVE_PaymentRequest_ID = ?";
		
		//	Get record of db
		MLVEPaymentRequestLine line = 
				new Query(ctx, Table_Name, sqlWhere, po.get_TrxName()).
				setParameters(p_Record_ID, po.get_Value("LVE_PaymentRequest_ID")).
				first();
		//	Return
		return line;
	}
	
	/**
	 * Get Payment Request Line of Pay Selection Line
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 5/9/2014, 5:48:07
	 * @contributor <a href="yamelsenih@gmail.com@gmail.com">Yamel Senih</a> 2014-09-04, 16:54:14
	 * <li> Fixed Error with null return
	 * @param ctx
	 * @param p_C_PaySelectionLine_ID
	 * @param trxName
	 * @return
	 * @return MLVEPaymentRequestLine
	 */
	public static MLVEPaymentRequestLine getOfPaySelectionLine(Properties ctx, int p_C_PaySelectionLine_ID, String trxName) {
		StringBuilder whereClause = new StringBuilder();
		whereClause.append("C_PaySelectionLine_ID=?");          // #1
		//
		MLVEPaymentRequestLine existingPaymentRequestLine = 
				new Query(ctx, X_LVE_PaymentRequestLine.Table_Name, whereClause.toString(), trxName)
						.setParameters(p_C_PaySelectionLine_ID)
						.first();
		//
		return existingPaymentRequestLine;
	}
}