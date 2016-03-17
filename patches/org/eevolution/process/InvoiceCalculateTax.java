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
package org.eevolution.process;



import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.adempiere.exceptions.FillMandatoryException;
import org.compiere.model.I_C_Invoice;
import org.compiere.model.MBPartner;
import org.compiere.model.MFactAcct;
import org.compiere.model.MInvoice;
import org.compiere.model.MPeriod;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;


/**
 * Re-calculate Invoice Tax (and unpost the document)
 *  @author victor.perez@e-evolution.com, e-Evolution http://www.e-evolution.com
 * 				<li>FR [ 2520591 ] Support multiples calendar for Org 
 * 				@see http://sourceforge.net/tracker2/?func=detail&atid=879335&aid=2520591&group_id=176962
 * @author Teo Sarca, www.arhipac.ro
 */
public class InvoiceCalculateTax extends SvrProcess
{
	public static final String PARAM_C_Invoice_ID = "C_Invoice_ID";
	
	private int p_C_Invoice_ID = 0;
	//	Yamel Senih,  2016-03-08
	//	Add more criteria
	/**	Document Type			*/
	private int 		p_C_DocType_ID = 0;
	/**	Date From				*/
	private Timestamp 	p_DateInvoiced = null;
	/**	Date To					*/
	private Timestamp	p_DateInvoiced_To = null;
	/**	Sales Transaction		*/
	private boolean		p_IsSOTrx = false;

	@Override
	protected void prepare() 
	{
		for (ProcessInfoParameter para : getParameter())
		{
			String name = para.getParameterName();
			if (para.getParameter() == null)
			{
				;
			} else if (name.equals(PARAM_C_Invoice_ID)) {
				p_C_Invoice_ID = para.getParameterAsInt();
			} else if(name.equals("C_DocType_ID")) {
				p_C_DocType_ID = para.getParameterAsInt();
			} else if(name.equals("IsSOTrx")) {
				p_IsSOTrx = para.getParameterAsBoolean();
			} else if(name.equals("DateInvoiced")) {
				p_DateInvoiced = (Timestamp) para.getParameter();
				p_DateInvoiced_To = (Timestamp) para.getParameter_To();
			}
		}
		
//		if (p_C_DocType_ID <= 0
//				&& p_C_Invoice_ID == 0)
//		{
//			throw new FillMandatoryException("C_DocType_ID");
//		}
	}

	@Override
	protected String doIt() throws Exception
	{
		//	
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//	Add Parameters
		//	For Sales Trx
		whereClause.append("IsSOTrx = ?");
		params.add(p_IsSOTrx? "Y": "N");
		//	For Invoice
		if(p_C_Invoice_ID != 0) {
			if(whereClause.length() > 0)
				whereClause.append(" AND ");
			//	Add
			whereClause.append("C_Invoice_ID =?");
			params.add(p_C_Invoice_ID);
		}
		//	For Document Type
		if(p_C_DocType_ID != 0) {
			if(whereClause.length() > 0)
				whereClause.append(" AND ");
			//	Add
			whereClause.append("C_DocType_ID = ?");
			params.add(p_C_DocType_ID);
		}
		//	For Date Invoiced
		if(p_DateInvoiced != null) {
			if(whereClause.length() > 0)
				whereClause.append(" AND ");
			//	Add
			whereClause.append("DateInvoiced >= ?");
			params.add(p_DateInvoiced);
		}
		if(p_DateInvoiced_To != null) {
			if(whereClause.length() > 0)
				whereClause.append(" AND ");
			//	Add
			whereClause.append("DateInvoiced <= ?");
			params.add(p_DateInvoiced_To);
		}
		
		List<MInvoice> list = new Query(getCtx(), I_C_Invoice.Table_Name, 
				whereClause.toString(), get_TrxName())
				.setParameters(params)
				.setOrderBy(I_C_Invoice.COLUMNNAME_DateInvoiced)
				.list();
		//	Recalculate
		for(MInvoice invoice : list) {
			try {
				recalculateTax(invoice);
				addLog("@C_Invoice_ID@: " + invoice.getDocumentNo());
			} catch (Exception e) {
				addLog("@C_Invoice_ID@: " + invoice.getDocumentNo() + " " + e.getLocalizedMessage());
			}
		}
		//
		return "@ProcessOK@";
	}
	
	public static void recalculateTax(MInvoice invoice)
	{
		//
		// Delete accounting /UnPost
		MPeriod.testPeriodOpen(invoice.getCtx(), invoice.getDateAcct(), invoice.getC_DocType_ID(), invoice.getAD_Org_ID());
		MFactAcct.deleteEx(MInvoice.Table_ID, invoice.get_ID(), invoice.get_TrxName());
		//
		// Update Invoice
		invoice.calculateTaxTotal();
		invoice.setPosted(false);
		invoice.saveEx();
		//
		// Update balance
		MBPartner bp = new MBPartner (invoice.getCtx(), invoice.getC_BPartner_ID(), invoice.get_TrxName());
		bp.setTotalOpenBalance();
		bp.setSOCreditStatus();
		bp.saveEx();
	}
}
