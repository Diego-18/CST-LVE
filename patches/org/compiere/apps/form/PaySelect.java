/******************************************************************************
 * Copyright (C) 2009 Low Heng Sin                                            *
 * Copyright (C) 2009 Idalica Corporation                                     *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *                                                                            *
 *                                                                            *
 *  @author Michael McKay                                                     * 
 *  	<li>BF3441324  - Partially paid invoice does not appear in payment    *
 *                       selection                                            *
 *****************************************************************************/
package org.compiere.apps.form;


import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.minigrid.ColumnInfo;
import org.compiere.minigrid.IDColumn;
import org.compiere.minigrid.IMiniTable;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MLookupInfo;
import org.compiere.model.MPaySelection;
import org.compiere.model.MPaySelectionLine;
import org.compiere.model.MRole;
import org.compiere.model.X_C_Order;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Language;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.util.ValueNamePair;
import org.spin.model.MLVEPaymentRequest;
import org.spin.model.MLVEPaymentRequestLine;

public class PaySelect
{
	/** @todo withholding */

	/**	Window No			*/
	public int         	m_WindowNo = 0;

	/** Format                  */
	public DecimalFormat   m_format = DisplayType.getNumberFormat(DisplayType.Amount);
	/** Bank Balance            */
	private BigDecimal      m_bankBalance = new BigDecimal(0.0);
	/** SQL for Query           */
	private String          m_sql;
	/** SQL for Query Line           */
	private String          m_sqlline;
	/** Number of selected rows */
	public int             m_noSelected = 0;
	/** Client ID               */
	private int             m_AD_Client_ID = 0;
	/**/
	public boolean         m_isLocked = false;
	/** Payment Selection		*/
	public MPaySelection	m_ps = null;
	/**	Logger			*/
	public static CLogger log = CLogger.getCLogger(PaySelect.class);
	
	//	Dixon Martinez 04-11-2013
	//	Add constants
	/** Open Amt 						*/
	public static final int 	C_OPEN_AMT = 6;
	/** Payment Amount  				*/
	public static final int 	C_PAY_AMT = 8;
	/** Payment Amount  				*/
	public static final int 	C_PAY_PR_AMT = 7;
	/** Idsp			  				*/
	public static final int 	C_IDSP = 11;
	
	//Carlos Parada 2015-06-01 Add Scale From Currency 
	protected int currencyPrecision  = 0;
	//End Carlos Parada
	/**
	 * 2014-07-28 Carlos Parada 
	 * Add Selected  Payment Request And Payment Request line
	 */
	protected ArrayList<Integer> selectedPR = new ArrayList<Integer>();
	protected HashMap<Integer,BigDecimal> selectedPRL = new HashMap<Integer,BigDecimal>();
	

	/**
	 * End Carlos Parada
	 */

	public ArrayList<BankInfo> getBankAccountData()
	{
		ArrayList<BankInfo> data = new ArrayList<BankInfo>();
		//
		m_AD_Client_ID = Env.getAD_Client_ID(Env.getCtx());
		//  Bank Account Info
		String sql = MRole.getDefault().addAccessSQL(
			"SELECT ba.C_BankAccount_ID,"                       //  1
			+ "b.Name || ' ' || ba.AccountNo AS Name,"          //  2
			+ "ba.C_Currency_ID, c.ISO_Code,"                   //  3..4
			+ "ba.CurrentBalance "                              //  5
			+ "FROM C_Bank b, C_BankAccount ba, C_Currency c "
			+ "WHERE b.C_Bank_ID=ba.C_Bank_ID"
			+ " AND ba.C_Currency_ID=c.C_Currency_ID AND ba.IsActive='Y' "
			+ " AND EXISTS (SELECT * FROM C_BankAccountDoc d WHERE d.C_BankAccount_ID=ba.C_BankAccount_ID AND d.IsActive='Y' ) "
			+ "ORDER BY 2",
			"b", MRole.SQL_FULLYQUALIFIED, MRole.SQL_RW);
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				boolean transfers = false;
				BankInfo bi = new BankInfo (rs.getInt(1), rs.getInt(3),
					rs.getString(2), rs.getString(4),
					rs.getBigDecimal(5), transfers);
				data.add(bi);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		
		return data;
	}
	
	public ArrayList<KeyNamePair> getBPartnerData()
	{
		ArrayList<KeyNamePair> data = new ArrayList<KeyNamePair>();
		
		//  Optional BusinessPartner with unpaid AP Invoices
		KeyNamePair pp = new KeyNamePair(0, "");
		data.add(pp);
		
		String sql = MRole.getDefault().addAccessSQL(
			"SELECT bp.C_BPartner_ID, bp.Name FROM C_BPartner bp", "bp",
			MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO)
			/**
			 * 2014-07-26 Carlos Parada
			 * Change Filter From Invoice Documents to Payment Request Line
			 */
			/*
			+ " AND EXISTS (SELECT * FROM C_Invoice i WHERE bp.C_BPartner_ID=i.C_BPartner_ID"
			//	X_C_Order.PAYMENTRULE_DirectDebit
			  + " AND (i.IsSOTrx='N' OR (i.IsSOTrx='Y' AND i.PaymentRule='D'))"
			  + " AND i.IsPaid<>'Y') "
			  */
			 /*+"AND (EXISTS (SELECT 1 FROM LVE_PaymentRequestLine prl  WHERE "
			+ "(prl.IsPrepared= 'N' OR  NOT EXISTS (SELECT 1 FROM C_PaySelectionLine psl"
			+                 " INNER JOIN C_PaySelectionCheck psc ON (psl.C_PaySelectionCheck_ID=psc.C_PaySelectionCheck_ID)"
			+                 " LEFT OUTER JOIN C_Payment pmt ON (pmt.C_Payment_ID=psc.C_Payment_ID)"
			+				  " WHERE psl.LVE_PaymentRequestLine_ID = prl.LVE_PaymentRequestLine_ID "
			+				  " AND psl.IsActive='Y'"
			+				  " AND (pmt.DocStatus IS NULL OR pmt.DocStatus NOT IN ('VO','RE'))"
			+				  " AND psl.differenceamt = 0.0)) "
			+ " AND prl.C_BPartner_ID = bp.C_BPartner_ID)) "  */
			+" AND EXISTS (SELECT 1 " 
			+"				FROM " 
			+"				LVE_PaymentRequestLine prl "
			+"				LEFT JOIN ( " 
			+"					SELECT psl.LVE_PaymentRequestLine_ID, SUM(psl.PayAmt) PayAmt "  
			+"					from C_PaySelectionLine psl " 
			+"					inner join C_PaySelectionCheck psc on (psc.C_PaySelectionCheck_ID = psl.C_PaySelectionCheck_ID) " 
			+"					left join C_Payment p on (p.C_Payment_ID = psc.C_Payment_ID) " 
			+"					WHERE (p.DocStatus IN ('CO','CL') OR p.DocStatus IS NULL AND psl.IsActive = 'Y') " 
			+"					GROUP BY psl.LVE_PaymentRequestLine_ID "  
			+"				) psl ON (prl.LVE_PaymentRequestLine_ID = psl.LVE_PaymentRequestLine_ID) "
			+"				LEFT JOIN C_Invoice i ON (i.C_Invoice_ID = prl.C_Invoice_ID) "
			+" 				WHERE (prl.IsPrepared = 'N' OR psl.PayAmt <> prl.PayAmt) "
			+" 				AND prl.C_BPartner_ID = bp.C_BPartner_ID "
			+"				AND (i.C_Invoice_ID IS NULL OR i.IsPaid = 'N') "
			+") "
			+ "ORDER BY 2";
		

		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				pp = new KeyNamePair(rs.getInt(1), rs.getString(2));
				data.add(pp);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		
		return data;
	}
	
	
	public ArrayList<KeyNamePair> getDocTypeData()
	{
		ArrayList<KeyNamePair> data = new ArrayList<KeyNamePair>();
		String sql = null;
		
		try
		{
			sql = MRole.getDefault().addAccessSQL(
				"SELECT doc.c_doctype_id,doc.name FROM c_doctype doc WHERE doc.ad_client_id = ? AND "
				//2015-04-13 Carlos Parada Change to Payment Request DocBase Type  
				//+ " doc.docbasetype in ('API','APC') "
				+ " doc.docbasetype in ('PRQ') "
				//End Carlos Parada
				+ "ORDER BY 2", "doc",
				MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO);

			KeyNamePair dt = new KeyNamePair(0, "");
			data.add(dt);
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, m_AD_Client_ID);		//	Client
			ResultSet rs = pstmt.executeQuery();

			while (rs.next())
			{
				dt = new KeyNamePair(rs.getInt(1), rs.getString(2));
				data.add(dt);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		
		return data;
	}
	
	
	public void prepareTable(IMiniTable miniTable)
	{
		Properties ctx = Env.getCtx();
		/**  prepare MiniTable
		 *
		SELECT i.C_Invoice_ID, i.C_InvoicePaySchedule_ID, i.DateInvoiced+p.NetDays AS DateDue,
		bp.Name, i.DocumentNo, c.ISO_Code, i.GrandTotal,
		paymentTermDiscount(i.GrandTotal, i.C_PaymentTerm_ID, i.DateInvoiced, SysDate) AS Discount,
		SysDate-paymentTermDueDays(i.C_PaymentTerm_ID,i.DateInvoiced) AS DiscountDate,
		i.GrandTotal-paymentTermDiscount(i.GrandTotal,i.C_PaymentTerm_ID,i.DateInvoiced,SysDate) AS DueAmount,
		currencyConvert(i.GrandTotal-paymentTermDiscount(i.GrandTotal,i.C_PaymentTerm_ID,i.DateInvoiced,SysDate,null),
			i.C_Currency_ID,xx100,SysDate) AS PayAmt
		FROM C_Invoice_v i, C_BPartner bp, C_Currency c, C_PaymentTerm p
		WHERE i.IsSOTrx='N'
		AND i.C_BPartner_ID=bp.C_BPartner_ID
		AND i.C_Currency_ID=c.C_Currency_ID
		AND i.C_PaymentTerm_ID=p.C_PaymentTerm_ID
		AND i.DocStatus IN ('CO','CL')
		ORDER BY 2,3
		 */

		m_sql = miniTable.prepareTable(new ColumnInfo[] {
			//  0..5
			new ColumnInfo(" ", "i.C_Invoice_ID", IDColumn.class, false, false, null),
			new ColumnInfo(Msg.translate(ctx, "DueDate"), "COALESCE(ips.duedate,paymentTermDueDate(i.C_PaymentTerm_ID, i.DateInvoiced)) AS DateDue", Timestamp.class, true, true, null),
			new ColumnInfo(Msg.translate(ctx, "C_BPartner_ID"), "bp.Name", KeyNamePair.class, true, false, "i.C_BPartner_ID"),
			//	Yamel Senih 2013-04-15 01:44 Add Account No
			new ColumnInfo(Msg.translate(ctx, "AccountNo"), "bpa.AccountNo", String.class),
			//	End Yamel Senih
					
			new ColumnInfo(Msg.translate(ctx, "DocumentNo"), "i.DocumentNo", String.class),
			//new ColumnInfo(Msg.getMsg(ctx, "Payment #"), "np.numpaymts", KeyNamePair.class, true, false, "np.C_InvoicePaySchedule_ID"),
			new ColumnInfo(Msg.translate(ctx, "C_Currency_ID"), "c.ISO_Code", KeyNamePair.class, true, false, "i.C_Currency_ID"),
			// 6..11
			new ColumnInfo(Msg.translate(ctx, "GrandTotal"), "i.GrandTotal", BigDecimal.class),
			new ColumnInfo(Msg.translate(ctx, "DiscountAmt"), "paymentTermDiscount(i.GrandTotal,i.C_Currency_ID,i.C_PaymentTerm_ID,i.DateInvoiced, ?)", BigDecimal.class),
			new ColumnInfo(Msg.getMsg(ctx, "DiscountDate"), "SysDate-paymentTermDueDays(i.C_PaymentTerm_ID,i.DateInvoiced,SysDate)", Timestamp.class),
			new ColumnInfo(Msg.getMsg(ctx, "AmountDue"), "currencyConvert(invoiceOpen(i.C_Invoice_ID,i.C_InvoicePaySchedule_ID),i.C_Currency_ID, ?,?,i.C_ConversionType_ID, i.AD_Client_ID,i.AD_Org_ID)", BigDecimal.class),
			new ColumnInfo(Msg.getMsg(ctx, "AmountPay"), "currencyConvert(invoiceOpen(i.C_Invoice_ID,i.C_InvoicePaySchedule_ID)-paymentTermDiscount(i.GrandTotal,i.C_Currency_ID,i.C_PaymentTerm_ID,i.DateInvoiced, ?),i.C_Currency_ID, ?,?,i.C_ConversionType_ID, i.AD_Client_ID,i.AD_Org_ID)", BigDecimal.class),
			new ColumnInfo(Msg.translate(ctx, "PaySched_ID"), "np.C_InvoicePaySchedule_ID", Integer.class)
			},
			//	FROM
			"C_Invoice_v i"
			+ " INNER JOIN C_BPartner bp ON (i.C_BPartner_ID=bp.C_BPartner_ID)"
			+ " INNER JOIN C_Currency c ON (i.C_Currency_ID=c.C_Currency_ID)"
			+ " INNER JOIN C_PaymentTerm p ON (i.C_PaymentTerm_ID=p.C_PaymentTerm_ID)"
//			Yamel Senih 2013-04-15, 19:02 Add Virtual Table for Account
					+ " LEFT JOIN (SELECT MAX(bpa.AccountNo) AccountNo, bpa.C_BPartner_ID "
					+ 				" FROM C_BP_BankAccount bpa WHERE bpa.IsActive = 'Y' "
					+ 				" AND bpa.IsACH = 'Y' "
					+				" GROUP BY bpa.C_BPartner_ID) bpa"
					+				" ON (bpa.C_BPartner_ID = bp.C_BPartner_ID)"
					
			//+ " INNER JOIN (SELECT civ.c_invoice_id, civ.c_invoicepayschedule_id, civ.duedate," 
			//+ 			   " (SELECT COUNT(C_Invoice_ID) AS payno"
			//+			   " FROM C_Invoice_V"
			//+			   " WHERE C_Invoice_ID = civ.C_Invoice_ID"
			//+			   " AND duedate <= civ.duedate"
			//+			   " GROUP BY C_Invoice_ID) || ' / ' ||"
			//+			   " (SELECT COUNT(C_Invoice_ID) as numpmts"
			//+			   " FROM C_Invoice_V"
			//+			   " WHERE C_Invoice_ID = civ.C_Invoice_ID"
			//+			   " GROUP BY C_Invoice_ID) as numpaymts"
			//+			   " FROM C_Invoice_v civ) np ON (i.C_Invoice_ID=np.C_Invoice_ID"
			//+														" AND (i.C_InvoicePaySchedule_ID IS NULL"
			//+														" OR i.C_InvoicePaySchedule_ID = np.C_InvoicePaySchedule_ID))"

			+ " INNER JOIN (SELECT civ.c_invoice_id, civ.c_invoicepayschedule_id, civ.duedate " 
			//+ 			   " (SELECT COUNT(C_Invoice_ID) AS payno"
			//+			   " FROM C_Invoice_V"
			//+			   " WHERE C_Invoice_ID = civ.C_Invoice_ID"
			//+			   " AND duedate <= civ.duedate"
			//+			   " GROUP BY C_Invoice_ID) || ' / ' ||"
			//+			   " (SELECT COUNT(C_Invoice_ID) as numpmts"
			//+			   " FROM C_Invoice_V"
			//+			   " WHERE C_Invoice_ID = civ.C_Invoice_ID"
			//+			   " GROUP BY C_Invoice_ID) as numpaymts"
			+			   " FROM C_Invoice_v civ) "
			+ "np ON (i.C_Invoice_ID=np.C_Invoice_ID"
			+														" AND (i.C_InvoicePaySchedule_ID IS NULL"
			+														" OR i.C_InvoicePaySchedule_ID = np.C_InvoicePaySchedule_ID))"
			//	End Yamel Senih
			+ " LEFT OUTER JOIN C_InvoicePaySchedule ips ON (i.C_InvoicePaySchedule_ID = ips.C_InvoicePaySchedule_ID)",
			//	WHERE
			"i.IsSOTrx=? AND IsPaid='N'"
//			Yamel Senih 2011-05-17, 10:15 Hide Documents in Dispute and IsACH
					+ " AND i.IsInDispute = 'N'"
					//	End Yamel Senih
					
			// And a payment is needed
			+ " AND invoiceOpen(i.C_Invoice_ID,i.C_InvoicePaySchedule_ID)-paymentTermDiscount(i.GrandTotal,i.C_Currency_ID,i.C_PaymentTerm_ID,i.DateInvoiced, ?) != 0.0"
			//	Different Payment Selection
			//  BR3450248 - Partially paid invoice does not appear in payment selection
			+ " AND NOT EXISTS (SELECT 1 FROM C_PaySelectionLine psl"
			+                 " INNER JOIN C_PaySelectionCheck psc ON (psl.C_PaySelectionCheck_ID=psc.C_PaySelectionCheck_ID)"
			+                 " LEFT OUTER JOIN C_Payment pmt ON (pmt.C_Payment_ID=psc.C_Payment_ID)"
			+                 " WHERE i.C_Invoice_ID=psl.C_Invoice_ID AND (i.C_InvoicePaySchedule_ID IS NULL OR i.C_InvoicePaySchedule_ID=0)" 
			+				  " AND psl.IsActive='Y'"
			+				  " AND (pmt.DocStatus IS NULL OR pmt.DocStatus NOT IN ('VO','RE'))"
			+				  " AND psl.differenceamt = 0.0)"
			+ " AND i.DocStatus IN ('CO','CL')"
			+ " AND i.AD_Client_ID=?",	//	additional where & order in loadTableInfo()
			true, "i");
		
	}   //  dynInit

	/**
	 *  Load Bank Info - Load Info from Bank Account and valid Documents (PaymentRule)
	 */
	public ArrayList<ValueNamePair> getPaymentRuleData(BankInfo bi)
	{
		if (bi == null)
			return null;
		m_bankBalance = bi.Balance;
		
		ArrayList<ValueNamePair> data = new ArrayList<ValueNamePair>();
		
		int AD_Reference_ID = 195;  //  MLookupInfo.getAD_Reference_ID("All_Payment Rule");
		Language language = Env.getLanguage(Env.getCtx());
		MLookupInfo info = MLookupFactory.getLookup_List(language, AD_Reference_ID);
		String sql = info.Query.substring(0, info.Query.indexOf(" ORDER BY"))
			+ " AND " + info.KeyColumn
			+ " IN (SELECT PaymentRule FROM C_BankAccountDoc WHERE C_BankAccount_ID=?) "
			+ info.Query.substring(info.Query.indexOf(" ORDER BY"));
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, bi.C_BankAccount_ID);
			ResultSet rs = pstmt.executeQuery();
			ValueNamePair vp = null;
			while (rs.next())
			{
				vp = new ValueNamePair(rs.getString(2), rs.getString(3));   //  returns also not active
				data.add(vp);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		return data;
	}

	/**
	 *  Query and create TableInfo
	 */
	public void loadTableInfo(BankInfo bi, Timestamp payDate, ValueNamePair paymentRule, boolean onlyDue, 
			KeyNamePair bpartner, KeyNamePair docType, IMiniTable miniTable)
	{
		log.config("");
		//  not yet initialized
		if (m_sql == null)
			return;

		String sql = m_sql;
		//  Parameters
		String isSOTrx = "N";
		if (paymentRule != null && X_C_Order.PAYMENTRULE_DirectDebit.equals(paymentRule.getValue()))
		{
			isSOTrx = "Y";
			sql += " AND i.PaymentRule='" + X_C_Order.PAYMENTRULE_DirectDebit + "'";
		}
		//
		if (onlyDue)
			sql += " AND paymentTermDueDate(i.C_PaymentTerm_ID, i.DateInvoiced) <= ?";
		//
		KeyNamePair pp = bpartner;
		int C_BPartner_ID = (pp != null? pp.getKey(): 0);
		if (C_BPartner_ID != 0)
			sql += " AND i.C_BPartner_ID=?";
		//Document Type
		KeyNamePair dt = docType;
		int c_doctype_id  = dt.getKey();
		if (c_doctype_id   != 0)
			sql += " AND i.c_doctype_id =?";
		sql += " ORDER BY DateDue, bp.Name, i.DocumentNo";

		log.finest(sql + " - C_Currency_ID=" + bi.C_Currency_ID + ", C_BPartner_ID=" + C_BPartner_ID + ", C_doctype_id=" + c_doctype_id  );
		//  Get Open Invoices
		try
		{
			int index = 1;
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			pstmt.setTimestamp(index++, payDate);		//	DiscountAmt
			pstmt.setInt(index++, bi.C_Currency_ID);	//	DueAmt
			pstmt.setTimestamp(index++, payDate);
			pstmt.setTimestamp(index++, payDate);		//	PayAmt
			pstmt.setInt(index++, bi.C_Currency_ID);
			pstmt.setTimestamp(index++, payDate);
			pstmt.setString(index++, isSOTrx);			//	IsSOTrx
			pstmt.setTimestamp(index++, payDate);
			pstmt.setInt(index++, m_AD_Client_ID);		//	Client
			if (onlyDue)
				pstmt.setTimestamp(index++, payDate);
			if (C_BPartner_ID != 0)
				pstmt.setInt(index++, C_BPartner_ID);
			if (c_doctype_id  != 0)                    //Document type
				pstmt.setInt(index++, c_doctype_id );
			//
			ResultSet rs = pstmt.executeQuery();
			miniTable.loadTable(rs);
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
	}   //  loadTableInfo

	/**
	 *  Calculate selected rows.
	 *  - add up selected rows
	 */
	public String calculateSelection(IMiniTable miniTable)
	{
		m_noSelected = 0;
		BigDecimal invoiceAmt = new BigDecimal(0.0);

		int rows = miniTable.getRowCount();
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);
			
			if (id.isSelected())
			{
				//2014-07-28 Carlos Parada Change Calculate Column Amount To Pay
				BigDecimal amt = (BigDecimal)miniTable.getValueAt(i, C_PAY_AMT);
				if (selectedPRL.get(id.getRecord_ID())==null)
					selectedPRL.put(id.getRecord_ID(),amt);
				
				//End Carlos Parada
				if (amt != null)
					invoiceAmt = invoiceAmt.add(amt);
				m_noSelected++;
			}
			else
				selectedPRL.remove(id.getRecord_ID());
			
		}

		//  Information
		BigDecimal remaining = m_bankBalance.subtract(invoiceAmt);
		StringBuffer info = new StringBuffer();
		info.append(m_noSelected).append(" ").append(Msg.getMsg(Env.getCtx(), "Selected")).append(" - ");
		info.append(m_format.format(invoiceAmt)).append(", ");
		info.append(Msg.getMsg(Env.getCtx(), "Remaining")).append(" ").append(m_format.format(remaining));
		return info.toString();
	}   //  calculateSelection

	public Trx trx = null;
	
	/**
	 *  Generate PaySelection
	 */
	public void generatePaySelect(IMiniTable miniTable, ValueNamePair paymentRule, Timestamp payDate, BankInfo bi
			//Carlos Parada Add PayDescription
			,String payDesription)
			//End Carlos Parada
	{
		log.info("");
	//	String trxName Trx.createTrxName("PaySelect");
	//	Trx trx = Trx.get(trxName, true);	trx needs to be committed too
		String trxName = null;
		trx = null;

		String PaymentRule = paymentRule.getValue();

		//  Create Header
		m_ps = new MPaySelection(Env.getCtx(), 0, trxName);
		
		//Carlos Parada Set Name And Description From PayDescription
		m_ps.setName ((payDesription.equals("")? Msg.getMsg(Env.getCtx(), "VPaySelect")
				+ " - " + paymentRule.getName()
				+ " - " + payDate: payDesription));
		m_ps.setDescription(payDesription);
		//End Carlos Parada

		m_ps.setPayDate (payDate);
		m_ps.setC_BankAccount_ID(bi.C_BankAccount_ID);
		m_ps.setIsApproved(true);
		if (!m_ps.save())
		{
			m_ps = null;
			throw new AdempiereException("@C_PaySelection_ID@");
			//Msg.translate(Env.getCtx(), "C_PaySelection_ID");
		}
		log.config(m_ps.toString());

		//  Create Lines
		int rows = miniTable.getRowCount();
		//int filas = miniTable.getColumnCount();//13
		int line = 0;
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);
			Object ips_id = miniTable.getValueAt(i,C_IDSP);
			if (id.isSelected())
			{
				line += 10;
				MPaySelectionLine psl = new MPaySelectionLine (m_ps, line, PaymentRule);
				int C_Invoice_ID = id.getRecord_ID().intValue();
				//	Dixon Martinez 04-11-2013
				//	Add constant name
				int C_InvoicePaySchedule_ID = Integer.parseInt(ips_id.toString());
				BigDecimal OpenAmt = (BigDecimal)miniTable.getValueAt(i, C_OPEN_AMT);
				BigDecimal PayAmt = (BigDecimal)miniTable.getValueAt(i, C_PAY_AMT);
				boolean isSOTrx = false;
				//
				psl.setInvoice(C_Invoice_ID, C_InvoicePaySchedule_ID, isSOTrx,
					OpenAmt, PayAmt, OpenAmt.subtract(PayAmt));
				if (!psl.save(trxName))
				{
					throw new AdempiereException("@C_PaySelectionLine_ID@");
					//return Msg.translate(Env.getCtx(), "C_PaySelectionLine_ID");
				}
				log.fine("C_Invoice_ID=" + C_Invoice_ID + ", PayAmt=" + PayAmt);
			}
		}   //  for all rows in table
	}   //  generatePaySelect

	/**************************************************************************
	 *  Bank Account Info
	 */
	public class BankInfo
	{
		/**
		 * 	BankInfo
		 *	@param newC_BankAccount_ID
		 *	@param newC_Currency_ID
		 *	@param newName
		 *	@param newCurrency
		 *	@param newBalance
		 *	@param newTransfers
		 */
		public BankInfo (int newC_BankAccount_ID, int newC_Currency_ID,
			String newName, String newCurrency, BigDecimal newBalance, boolean newTransfers)
		{
			C_BankAccount_ID = newC_BankAccount_ID;
			C_Currency_ID = newC_Currency_ID;
			Name = newName;
			Currency = newCurrency;
			Balance = newBalance;
		}
		int C_BankAccount_ID;
		public int C_Currency_ID;
		String Name;
		public String Currency;
		public BigDecimal Balance;
		boolean Transfers;

		/**
		 * 	to String
		 *	@return info
		 */
		public String toString()
		{
			return Name;
		}
	}   //  BankInfo
	
	/**
	 * Prepare minitable for Payment Request
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 23/07/2014, 11:31:12
	 * @param miniTable
	 * @return void
	 */
	//Replace Minitable for IMiniTableHeaderCheck
	public void prepareTablePaymentRequest(IMiniTable miniTable)
	{
		Properties ctx = Env.getCtx();
		
		m_sql = miniTable.prepareTable(new ColumnInfo[] {
			//  0..6
			new ColumnInfo(" ", "pr.LVE_PaymentRequest_ID", IDColumn.class, false, false, null),
			new ColumnInfo(Msg.translate(ctx, "DocumentNo"), "pr.DocumentNo", String.class),
			new ColumnInfo(Msg.translate(ctx, "RequestType"), "rflt.Name", String.class),
			new ColumnInfo(Msg.translate(ctx, "DateDoc"), "pr.DateDoc", Timestamp.class),
			new ColumnInfo(Msg.translate(ctx, "C_Currency_ID"), "c.ISO_Code", KeyNamePair.class, true, false, "pr.C_Currency_ID"),
			new ColumnInfo(Msg.translate(ctx, "PayAmt"), "pr.PayAmt", BigDecimal.class)
			},
			//	FROM
			" LVE_PaymentRequest pr " + 
			" INNER JOIN C_Currency c ON (pr.C_Currency_ID = c.C_Currency_ID) " +
			" INNER JOIN AD_Ref_List rfl ON (rfl.Value = pr.RequestType) " +
			" INNER JOIN AD_Reference r ON (rfl.AD_Reference_ID = r.AD_Reference_ID AND r.AD_Reference_ID = 53707) " +
			" LEFT JOIN AD_Ref_List_Trl rflt ON (rflt.AD_Ref_List_ID = rfl.AD_Ref_List_ID AND rflt.AD_Language = '"+Env.getAD_Language(ctx)+"')"
			
			,
			//	WHERE
			//	2015-06-03 Carlos Parada Only Payment Request With one Pending Line for Payment   
			" pr.DocStatus IN ('CO') "
			//+ " AND EXISTS (SELECT 1 FROM LVE_PaymentRequestLine prl WHERE prl.IsPrepared = 'N' AND prl.LVE_PaymentRequest_ID = pr.LVE_PaymentRequest_ID ) ",
			+" AND EXISTS (SELECT 1 " 
			+"				FROM " 
			+"				LVE_PaymentRequestLine prl "
			+"				LEFT JOIN ( " 
			+"					SELECT psl.LVE_PaymentRequestLine_ID, SUM(psl.PayAmt) PayAmt "  
			+"					from C_PaySelectionLine psl " 
			+"					inner join C_PaySelectionCheck psc on (psc.C_PaySelectionCheck_ID = psl.C_PaySelectionCheck_ID) " 
			+"					left join C_Payment p on (p.C_Payment_ID = psc.C_Payment_ID) " 
			+"					WHERE (p.DocStatus IN ('CO','CL') OR p.DocStatus IS NULL AND psl.IsActive = 'Y') " 
			+"					GROUP BY psl.LVE_PaymentRequestLine_ID "  
			+"				) psl ON (prl.LVE_PaymentRequestLine_ID = psl.LVE_PaymentRequestLine_ID) "
			+"				LEFT JOIN C_Invoice i ON (i.C_Invoice_ID = prl.C_Invoice_ID) "
			+" 				WHERE (prl.IsPrepared = 'N' OR psl.PayAmt <> prl.PayAmt) "
			+" 				AND prl.LVE_PaymentRequest_ID = pr.LVE_PaymentRequest_ID "
			+"				AND (i.C_Invoice_ID IS NULL OR i.IsPaid = 'N') "
			+") ",

			//	End Carlos Parada
//			true, "pr",true);
			true, "pr", true);
			
	}   //  prepareTablePaymentRequest
	
	/**
	 * Get Payment Request UnPrepared 
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 23/07/2014, 18:03:11
	 * @return
	 * @return ArrayList<KeyNamePair>
	 */
	public ArrayList<KeyNamePair> getPaymentRequestData()
	{
		ArrayList<KeyNamePair> data = new ArrayList<KeyNamePair>();
		
		//  Optional BusinessPartner with unpaid AP Invoices
		KeyNamePair pp = new KeyNamePair(0, "");
		data.add(pp);
		
		String sql = MRole.getDefault().addAccessSQL(
			"SELECT pr.LVE_PaymentRequest_ID, pr.DocumentNo FROM LVE_PaymentRequest pr", "pr",
			MRole.SQL_FULLYQUALIFIED, MRole.SQL_RO)
			+" AND EXISTS (SELECT 1 " 
			+"				FROM " 
			+"				LVE_PaymentRequestLine prl "
			+"				LEFT JOIN ( " 
			+"					SELECT psl.LVE_PaymentRequestLine_ID, SUM(psl.PayAmt) PayAmt "  
			+"					from C_PaySelectionLine psl " 
			+"					inner join C_PaySelectionCheck psc on (psc.C_PaySelectionCheck_ID = psl.C_PaySelectionCheck_ID) " 
			+"					left join C_Payment p on (p.C_Payment_ID = psc.C_Payment_ID) " 
			+"					WHERE (p.DocStatus IN ('CO','CL') OR p.DocStatus IS NULL AND psl.IsActive = 'Y') " 
			+"					GROUP BY psl.LVE_PaymentRequestLine_ID "  
			+"				) psl ON (prl.LVE_PaymentRequestLine_ID = psl.LVE_PaymentRequestLine_ID) "
			+"				LEFT JOIN C_Invoice i ON (i.C_Invoice_ID = prl.C_Invoice_ID) "
			+" 				WHERE (prl.IsPrepared = 'N' OR psl.PayAmt <> prl.PayAmt) "
			+" 				AND prl.LVE_PaymentRequest_ID = pr.LVE_PaymentRequest_ID "
			+"				AND (i.C_Invoice_ID IS NULL OR i.IsPaid = 'N') "
			+") "
			+ " AND pr.DocStatus = 'CO'"
			+ "ORDER BY 2";

		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				pp = new KeyNamePair(rs.getInt(1), rs.getString(2));
				data.add(pp);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		
		return data;
	}//  prepareTablePaymentRequest
	
	/**
	 * Load Table info Payment Request
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> Jul 25, 2014, 12:18:00 PM
	 * @param bi
	 * @param payDate
	 * @param paymentRule
	 * @param bpartner
	 * @param miniTable
	 * @return void
	 */
	public void loadTableInfoPR(BankInfo bi, Timestamp payDate, ValueNamePair paymentRule,  
			KeyNamePair bpartner,KeyNamePair paymentRequest,  IMiniTable miniTable,KeyNamePair docType)
	{
		log.config("");
		//  not yet initialized
		if (m_sql == null)
			return;

		String sql = m_sql;
		//  Parameters
		//
		KeyNamePair bp = bpartner;
		int C_BPartner_ID = (bp != null? bp.getKey(): 0);
		if (C_BPartner_ID != 0)
			sql+= " and (exists(select 1 from LVE_PaymentRequestLine prl  where prl.LVE_PaymentRequest_ID = pr.LVE_PaymentRequest_ID AND  prl.IsPrepared='N' and prl.C_BPartner_ID = ? )) ";

		KeyNamePair pr = paymentRequest;
		int LVE_PaymentRequest_ID = (pr != null? pr.getKey(): 0);
		if (LVE_PaymentRequest_ID != 0)
			sql += " AND pr.LVE_PaymentRequest_ID=? ";
		
		KeyNamePair dt = docType;
		int C_DocType_ID = (dt != null? dt.getKey(): 0);
		if (C_DocType_ID != 0)
			sql+= " AND pr.C_DocType_ID=? ";
		
		//Document Type
		
		log.finest(sql + " - C_Currency_ID=" + bi.C_Currency_ID + ", C_BPartner_ID=" + C_BPartner_ID );
		//  Get Open Invoices
		try
		{
			int index = 1;
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			if (C_BPartner_ID != 0){
				pstmt.setInt(index++, C_BPartner_ID);
			}
			if (LVE_PaymentRequest_ID != 0)
				pstmt.setInt(index++, LVE_PaymentRequest_ID);
			
			if (C_DocType_ID != 0)
				pstmt.setInt(index++, C_DocType_ID);
			//
			ResultSet rs = pstmt.executeQuery();
			miniTable.loadTable(rs);
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
	}   //  loadTableInfoPR

	public void loadTableInfoPR(BankInfo bi, Timestamp payDate, ValueNamePair paymentRule,  
			KeyNamePair bpartner,KeyNamePair paymentRequest,  IMiniTable miniTable){
		loadTableInfoPR(bi, payDate, paymentRule,  
				bpartner, paymentRequest, miniTable, null);
	}
	
	/**
	 * Prepared Table For Payment Request line 
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 28/07/2014, 11:18:48
	 * @param miniTable
	 * @return void
	 */
	public void prepareTablePaymentRequestLine(IMiniTable miniTable)
	{
		Properties ctx = Env.getCtx();
			
		m_sqlline = miniTable.prepareTable(new ColumnInfo[] {
			//  0..5
			new ColumnInfo(" ", "prl.LVE_PaymentRequestLine_ID", IDColumn.class, false, false, null),
			//new ColumnInfo(Msg.translate(ctx, "DueDate"), "COALESCE(ips.duedate,paymentTermDueDate(i.C_PaymentTerm_ID, i.DateInvoiced)) AS DateDue", Timestamp.class, true, true, null),
			new ColumnInfo(Msg.translate(ctx, "C_BPartner_ID"), "COALESCE(bpa.A_Name,bp.Name)", KeyNamePair.class, true, false, "bp.C_BPartner_ID"),
			//	Dixon Martinez 2014-09-22 Add Document Type
			new ColumnInfo(Msg.translate(ctx, "C_DocType_ID"), "dt.Name", KeyNamePair.class, true, false, "COALESCE(ci.C_DocType_ID,co.C_DocType_ID,j.C_DocType_ID)"),
			//	End Dixon Martinez
			new ColumnInfo(Msg.translate(ctx, "DocumentNo"), "COALESCE(COALESCE(ci.DocumentNo,co.DocumentNo),jb.DocumentNo || ' ' || jl.Line)", String.class),
			new ColumnInfo(Msg.translate(ctx, "DueDate"), "prl.DueDate", Timestamp.class, true, true, null),
			//	Yamel Senih 2013-04-15 01:44 Add Account No
			new ColumnInfo(Msg.translate(ctx, "AccountNo"), "COALESCE(COALESCE(bpa.AccountNo,bpad.AccountNo)) ", String.class),
			//	End Yamel Senih
			new ColumnInfo(Msg.translate(ctx, "GrandTotal"), "COALESCE(COALESCE(COALESCE(ci.GrandTotal,co.GrandTotal),jl.AmtSourceCR-jl.AmtSourceDR),prl.PayAmt)", BigDecimal.class),
			//new ColumnInfo(Msg.translate(ctx, "DiscountAmt"), "paymentTermDiscount(i.GrandTotal,i.C_Currency_ID,i.C_PaymentTerm_ID,i.DateInvoiced, ?)", BigDecimal.class),
			//new ColumnInfo(Msg.getMsg(ctx, "DiscountDate"), "SysDate-paymentTermDueDays(i.C_PaymentTerm_ID,i.DateInvoiced,SysDate)", Timestamp.class),
			new ColumnInfo(Msg.getMsg(ctx, "PayAmt"), "prl.PayAmt - COALESCE(psl.PayAmt,0)", BigDecimal.class),
			new ColumnInfo(Msg.getMsg(ctx, "AmountPay"), "prl.PayAmt - COALESCE(psl.PayAmt,0)", BigDecimal.class, false, false, null),
			//new ColumnInfo(Msg.translate(ctx, "PaySched_ID"), "np.C_InvoicePaySchedule_ID", Integer.class)
			},
			//	FROM
			"LVE_PaymentRequestLine prl "
			+" LEFT JOIN C_Invoice ci ON (prl.C_Invoice_ID = ci.C_Invoice_ID) "
			+" LEFT JOIN C_Order co ON (prl.C_Order_ID = co.C_Order_ID) "
			+" LEFT JOIN GL_JournalLine jl ON (prl.GL_JournalLine_ID = jl.GL_JournalLine_ID) "
			+" LEFT JOIN GL_Journal j ON (jl.GL_Journal_ID = j.GL_Journal_ID) "
			+" LEFT JOIN GL_JournalBatch jb ON (jb.GL_JournalBatch_ID = j.GL_JournalBatch_ID) "
			+" LEFT JOIN C_BP_BankAccount bpa ON (bpa.C_BP_BankAccount_ID = prl.C_BP_BankAccount_ID) "
			+" LEFT JOIN C_BPartner bp ON (bp.C_BPartner_ID = prl.C_BPartner_ID) "
			//Yamel Senih 2013-04-15, 19:02 Add Virtual Table for Account
			+ " LEFT JOIN (SELECT MAX(bpa.AccountNo) AccountNo, bpa.C_BPartner_ID "
			+ 				" from C_BP_BankAccount bpa WHERE bpa.IsActive = 'Y' "
			+ 				" AND bpa.IsACH = 'Y' "
			+				" GROUP BY bpa.C_BPartner_ID) bpad "
			+				" ON (bpad.C_BPartner_ID = bp.C_BPartner_ID)"
			
			+"LEFT JOIN ( " 
			+"		SELECT psl.LVE_PaymentRequestLine_ID, SUM(psl.PayAmt) PayAmt " 
			+"		from C_PaySelectionLine psl " 
			+"		inner join C_PaySelectionCheck psc on (psc.C_PaySelectionCheck_ID = psl.C_PaySelectionCheck_ID) "
			+"		left join C_Payment p on (p.C_Payment_ID = psc.C_Payment_ID) "
			+"		WHERE (p.DocStatus IN ('CO','CL') OR p.DocStatus IS NULL AND psl.IsActive = 'Y') " 
			+"		GROUP BY psl.LVE_PaymentRequestLine_ID " 
			+") psl ON (prl.LVE_PaymentRequestLine_ID = psl.LVE_PaymentRequestLine_ID)" 
			
			
			//End Yamel Senih
			//	Dixon Martinez 2014-09-22 Add Document Type
			+" LEFT JOIN C_DocType dt ON ((dt.C_DocType_ID = ci.C_DocType_ID) OR (dt.C_DocType_ID = co.C_DocType_ID) OR (dt.C_DocType_ID = j.C_DocType_ID) )",
			//	End Dixon Martinez

			//	WHERE
			//	Yamel Senih 2011-05-17, 10:15 Hide Documents in Dispute and IsACH
					//+ 
			" ((ci.IsInDispute = 'N' AND ci.IsPaid = 'N') OR ci.C_Invoice_ID IS NULL) "  
			//	End Yamel Senih
					
			// And a payment is needed
			//+ " AND invoiceOpen(i.C_Invoice_ID,i.C_InvoicePaySchedule_ID)-paymentTermDiscount(i.GrandTotal,i.C_Currency_ID,i.C_PaymentTerm_ID,i.DateInvoiced, ?) != 0.0"
			//	Different Payment Selection
			//  BR3450248 - Partially paid invoice does not appear in payment selection
			//	2014-07-28 Carlos Parada Change for Support Payment Request
			+" AND COALESCE(psl.PayAmt,0) <> prl.PayAmt "
			//+ " AND i.DocStatus IN ('CO','CL')"
			//+ " AND i.AD_Client_ID=?"
			,	//	additional where & order in loadTableInfo()
//			true, "prl",true);
			true, "prl", true);
		
	}   //  prepareTablePaymentRequestLine

	
	/**
	 * Load Table Payment Request Line
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 28/07/2014, 12:28:50
	 * @param bi
	 * @param payDate
	 * @param paymentRule
	 * @param bpartner
	 * @param paymentRequest
	 * @param miniTable
	 * @return void
	 */
	public void loadTableInfoPRL(KeyNamePair bpartner,  IMiniTable miniTable)
	{
		log.config("");
		//  not yet initialized
		if (m_sqlline == null)
			return;

		String sql = m_sqlline;
		String selectedPaymentRequest = new String("");
		String selectedPaymentRequestLine = new String("");
		
		
		//selectedPRL
		//  Parameters
		//
		KeyNamePair pp = bpartner;
		int C_BPartner_ID = (pp != null? pp.getKey(): 0);
		if (C_BPartner_ID != 0)
			sql+="and (prl.C_BPartner_ID=?) ";
		
		for (Integer LVE_PaymentRequest_ID : selectedPR )
			selectedPaymentRequest+=(selectedPaymentRequest.equals("")?LVE_PaymentRequest_ID:"," +LVE_PaymentRequest_ID);
		
		if (selectedPR.size() != 0)
			sql += " AND (prl.LVE_PaymentRequest_ID IN (" + selectedPaymentRequest + ")";
		
		/*
		Iterator<Entry<Integer, BigDecimal>> it =  selectedPRL.entrySet().iterator();
		while (it.hasNext()){
		//for (Integer LVE_PaymentRequest_ID : selectedPRL )
			int LVE_PaymentRequest_ID =it.next().getKey();
			selectedPaymentRequestLine+=(selectedPaymentRequestLine.equals("")?LVE_PaymentRequest_ID:"," +LVE_PaymentRequest_ID);
		}
		if (selectedPRL.size() != 0)
			sql += " OR prl.LVE_PaymentRequestLine_ID IN (" + selectedPaymentRequestLine + ")";
		*/
		sql += ")";
		log.finest(sql + " - LVE_PaymentRequest_ID=" + selectedPaymentRequest + " - LVE_PaymentRequestLine_ID=" + selectedPaymentRequestLine + ", C_BPartner_ID=" + C_BPartner_ID );
		//  Get Open Invoices
		try
		{
			int index = 1;
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			if (C_BPartner_ID != 0){
				pstmt.setInt(index++, C_BPartner_ID);
			}
			/*if (LVE_PaymentRequest_ID != 0)
				pstmt.setInt(index++, LVE_PaymentRequest_ID);*/
			//
			ResultSet rs = pstmt.executeQuery();
			miniTable.loadTable(rs);
			rs.close();
			pstmt.close();
			//setValueFromBuffer(miniTable);
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
	}   //  loadTableInfoPR
	
	/**
	 * Set the values from buffer
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/12/2013, 10:35:54
	 * @param orderLineTable
	 * @return void
	 * @contributor <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 29/07/2014, 09:00:45
	 * Set Payment Request Line Table From ArrayList
	 */
	protected void setValueFromBuffer(IMiniTable paymentRequestLine){
		log.info("Set Value From Buffer");
		if(selectedPRL.size() != 0){
			int rows = paymentRequestLine.getRowCount();
			int m_LVE_PaymentRequestLine_ID = 0;
			for (int i = 0; i < rows; i++) {
				IDColumn icol = (IDColumn)paymentRequestLine.getValueAt(i, 0);
				m_LVE_PaymentRequestLine_ID = icol.getRecord_ID();
				BigDecimal amt = selectedPRL.get(m_LVE_PaymentRequestLine_ID);
				//if (isSelect(m_LVE_PaymentRequestLine_ID)){
				if (amt!=null){
					icol.setSelected(true);
					paymentRequestLine.setValueAt(amt, i, C_PAY_AMT);
				}
				
			}	
		}
	}
	
	/**
	 * Generate Payment Selection From Payment Request
	 * @author <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a> 29/07/2014, 09:55:39
	 * @param miniTable
	 * @param paymentRule
	 * @param payDate
	 * @param bi
	 * @param payDesription
	 * @return void
	 */
	public void generatePaySelectFromPR(IMiniTable miniTable, ValueNamePair paymentRule, Timestamp payDate, BankInfo bi
			//Carlos Parada Add PayDescription
			,String payDesription)
			//End Carlos Parada
	{
		log.info("");
	//	String trxName Trx.createTrxName("PaySelect");
	//	Trx trx = Trx.get(trxName, true);	trx needs to be committed too
		String trxName = null;
		trx = null;

		String PaymentRule = paymentRule.getValue();

		//  Create Header
		m_ps = new MPaySelection(Env.getCtx(), 0, trxName);
		
		//Carlos Parada Set Name And Description From PayDescription
		m_ps.setName ((payDesription.equals("")? Msg.getMsg(Env.getCtx(), "VPaySelect")
				+ " - " + paymentRule.getName()
				+ " - " + payDate: payDesription));
		m_ps.setDescription(payDesription);
		//End Carlos Parada

		m_ps.setPayDate (payDate);
		m_ps.setC_BankAccount_ID(bi.C_BankAccount_ID);
		m_ps.setIsApproved(true);
		if (!m_ps.save())
		{
			m_ps = null;
			throw new AdempiereException("@C_PaySelection_ID@");
			//Msg.translate(Env.getCtx(), "C_PaySelection_ID");
		}
		log.config(m_ps.toString());

		//  Create Lines
		int rows = miniTable.getRowCount();
		//int filas = miniTable.getColumnCount();//13
		int line = 0;
		for (int i = 0; i < rows; i++)
		{
			IDColumn id = (IDColumn)miniTable.getValueAt(i, 0);
			if (id.isSelected())
			{
				line += 10;
				MPaySelectionLine psl = new MPaySelectionLine (m_ps, line, PaymentRule);
				int LVE_PaymentRequestLine_ID = id.getRecord_ID().intValue();
				MLVEPaymentRequestLine prl = new MLVEPaymentRequestLine(m_ps.getCtx(), LVE_PaymentRequestLine_ID, m_ps.get_TrxName());
				
				MLVEPaymentRequest pr = new MLVEPaymentRequest(m_ps.getCtx(), prl.getLVE_PaymentRequest_ID(), m_ps.get_TrxName());
				
				if (prl.getLVE_PaymentRequestLine_ID()== 0)
					break;
				
				//BigDecimal OpenAmt = (BigDecimal)miniTable.getValueAt(i, C_OPEN_AMT);
				BigDecimal PayAmt = (BigDecimal)miniTable.getValueAt(i, C_PAY_AMT);
				BigDecimal PayPRAmt = (BigDecimal)miniTable.getValueAt(i, C_PAY_PR_AMT);
				
				String p_RequestType = pr.getRequestType();
				psl.set_ValueOfColumn("RequestType", p_RequestType);
				int p_LVE_PaymentRequestLine_ID = prl.get_ID();
				psl.set_ValueOfColumn("LVE_PaymentRequestLine_ID", p_LVE_PaymentRequestLine_ID);
				psl.set_ValueOfColumn("LVE_PaymentRequest_ID", prl.getLVE_PaymentRequest_ID());
				
				//Set Fields From Payment Selection Line
				if (prl.getC_Invoice_ID()!=0)
					psl.setC_Invoice_ID(prl.getC_Invoice_ID());
				else if (prl.getC_Order_ID()!=0)
					psl.set_ValueOfColumn("C_Order_ID", prl.getC_Order_ID());
				else if (prl.getGL_JournalLine_ID()!=0)
					psl.set_ValueOfColumn("GL_JournalLine_ID",prl.getGL_JournalLine_ID());
				
				
				psl.set_ValueOfColumn("C_BPartner_ID",prl.getC_BPartner_ID());
				psl.setPayAmt(PayAmt);
				psl.setOpenAmt(PayPRAmt);
				//psl.setDifferenceAmt(PayPRAmt.subtract(PayAmt));
				
				if (psl.getDifferenceAmt().setScale(currencyPrecision).equals(Env.ZERO.setScale(currencyPrecision)))
					prl.setIsPrepared(true);
				
				//psl.setInvoice(C_Invoice_ID, C_InvoicePaySchedule_ID, isSOTrx,
					//OpenAmt, PayAmt, OpenAmt.subtract(PayAmt));
				
				if (!psl.save(trxName))
					throw new AdempiereException("@C_PaySelectionLine_ID@");
				if (!prl.save(trxName))
					throw new AdempiereException("@LVE_PaymentRequest_ID@");
				
				log.fine("LVE_PaymentRequestLine_ID=" + LVE_PaymentRequestLine_ID + ", PayAmt=" + PayAmt);
			}
		}   //  for all rows in table
	}   //  generatePaySelect
}   
