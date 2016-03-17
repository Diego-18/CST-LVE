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
 * Copyright (C) 2003-2014 E.R.P. Consultores y Asociados.                    *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.model;

import java.math.BigDecimal;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MBPBankAccount;
import org.compiere.model.MBPGroup;
import org.compiere.model.MBPartner;
import org.compiere.model.MCash;
import org.compiere.model.MCashLine;
import org.compiere.model.MClient;
import org.compiere.model.MCurrency;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MJournalBatch;
import org.compiere.model.MMovement;
import org.compiere.model.MOrder;
import org.compiere.model.MPaySelection;
import org.compiere.model.MPaySelectionCheck;
import org.compiere.model.MPaySelectionLine;
import org.compiere.model.MPayment;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTax;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.process.DocumentEngine;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 *
 */
public class CST_STDModelValidator implements ModelValidator {

	/**
	 * *** Constructor ***
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 *         01/07/2014, 10:30:05
	 */
	public CST_STDModelValidator() {
		super();
	}

	/** Logger */
	private static CLogger log = CLogger
			.getCLogger(CST_STDModelValidator.class);
	/** Client */
	private int m_AD_Client_ID = -1;
	/** Current Business Partner */
	private int m_Current_C_BPartner_ID = 0;
	/** Current Allocation */
	private MAllocationHdr m_Current_Alloc = null;
	/** Current Invoice */
	private MInvoice m_Current_Invoice = null;
	/** Grand Amount */
	private BigDecimal grandAmount = Env.ZERO;
	/** Multiplier */
	private BigDecimal multiplier = Env.ZERO;
	/** Open Amount */
	private BigDecimal openAmt = Env.ZERO;

	@Override
	public void initialize(ModelValidationEngine engine, MClient client) {
		// client = null for global validator
		if (client != null) {
			m_AD_Client_ID = client.getAD_Client_ID();
			log.info(client.toString());
		} else {
			log.info("Initializing global validator: " + this.toString());
		}
		// Add Timing change in C_Order and C_Invoice
		engine.addDocValidate(MInvoice.Table_Name, this);
		engine.addDocValidate(MPayment.Table_Name, this);
		engine.addDocValidate(MAllocationHdr.Table_Name, this);
		engine.addDocValidate(MCash.Table_Name, this);
		engine.addDocValidate(MOrder.Table_Name, this);
		engine.addDocValidate(MOrder.Table_Name, this);
		engine.addDocValidate(MJournalBatch.Table_Name, this);
		
		engine.addModelChange(MCashLine.Table_Name, this);
		engine.addModelChange(MMovement.Table_Name, this);
		engine.addModelChange(MMovement.Table_Name, this);
		engine.addModelChange(MInOut.Table_Name, this);
		engine.addModelChange(MInvoice.Table_Name, this);
		engine.addModelChange(MPaySelectionCheck.Table_Name, this);
		engine.addModelChange(MPaySelection.Table_Name, this);
		engine.addModelChange(MBPartner.Table_Name, this);
	}

	@Override
	public int getAD_Client_ID() {
		return m_AD_Client_ID;
	}

	@Override
	public String login(int AD_Org_ID, int AD_Role_ID, int AD_User_ID) {
		log.info("AD_User_ID=" + AD_User_ID);
		return null;
	}

	@Override
	public String docValidate(PO po, int timing) {
		if(timing == TIMING_BEFORE_REVERSECORRECT 
				|| timing == TIMING_BEFORE_VOID) {
			log.fine(" TIMING_BEFORE_REVERSECORRECT || TIMING_BEFORE_VOID");
			if (po.get_TableName().equals(MInvoice.Table_Name)) {
				// Yamel Senih 2015-02-23
				// Add Valid Reference for Affected Document
				String msg = validCashLineReference(po.get_TrxName(),
						po.get_ID());
				//
				if (msg != null)
					return msg;
				// Valid Affected Document
				log.fine(MInvoice.Table_Name
						+ " -- TIMING_BEFORE_REVERSECORRECT || TIMING_BEFORE_VOID");
				// Retention
				MInvoice ret = (MInvoice) po;
				// Verify Reference from Declaration
				String sql = new String(
						"SELECT MAX(dr.C_Invoice_ID) C_Invoice_ID "
								+ "FROM C_Invoice dr "
								+ "INNER JOIN C_InvoiceLine drl ON(drl.C_Invoice_ID = dr.C_Invoice_ID) "
								+ "WHERE dr.DocStatus IN('CO', 'CL') "
								+ "AND drl.DocAffected_ID = ?");
				// Log
				log.fine("SQL Declaration=" + sql);
				// Search
				int m_C_Invoice_ID = DB.getSQLValue(ret.get_TrxName(), sql,
						ret.getC_Invoice_ID());
				// Valid Exists
				if (m_C_Invoice_ID <= 0)
					return null;
				// If exist a Declaration
				MInvoice m_Affect = MInvoice.get(Env.getCtx(), m_C_Invoice_ID);
				// Get Document Type
				MDocType m_DocType = MDocType.get(Env.getCtx(),
						m_Affect.getC_DocType_ID());
				// Valid Document
				if (m_DocType.get_ValueAsBoolean("IsValidateReference")) {
					return "@Error@ @SQLErrorReferenced@ " + "@DocumentNo@ "
							+ m_Affect.getDocumentInfo();
				}
				// End Yamel Senih
			} else if(po.get_TableName().equals(MPayment.Table_Name)) {
				MPaySelectionCheck m_PaySelectionCheck =
						MPaySelectionCheck.getOfPayment(po.getCtx(), po.get_ID(), po.get_TrxName());
				//
				if(m_PaySelectionCheck == null
						|| m_PaySelectionCheck.get_ID() == 0)
					return null;
				
				String sqlWhere = "C_PaySelectionLine.C_PaySelectionCheck_ID = ? "
						+ "AND  C_PaySelectionLine.LVE_PaymentRequest_ID IS NOT NULL"   
						+ " AND EXISTS (SELECT 1 FROM LVE_PaymentRequestLine prl WHERE prl.LVE_PaymentRequestLine_ID = C_PaySelectionLine.LVE_PaymentRequestLine_ID AND IsPrepared='Y' ) ";
				
				List<MPaySelectionLine>  list = 
						new Query(po.getCtx(), MPaySelectionLine.Table_Name, sqlWhere, po.get_TrxName())
				.setParameters(m_PaySelectionCheck.get_ID())
				.list()
				;
				
				if(list.isEmpty())
					return null;
				//
				for (MPaySelectionLine mPaySelectionLine : list) {
					MLVEPaymentRequestLine m_LVE_PaymentRequestLine = 
							new MLVEPaymentRequestLine(po.getCtx(), mPaySelectionLine.get_ValueAsInt("LVE_PaymentRequestLine_ID"), po.get_TrxName());
					//
					if(m_LVE_PaymentRequestLine.get_ID() == 0)
						return null;
					//
					
					m_LVE_PaymentRequestLine.setIsPrepared(false);
					m_LVE_PaymentRequestLine.saveEx();
				}
			} else  if(po.get_TableName().equals(MInvoice.Table_Name)) {
				MInvoice m_Invoice = (MInvoice) po;
				String msg = validDocumentReference(" i.C_Invoice_ID=? ", m_Invoice.get_ID(), "API", po.get_TrxName());
				if(msg != null)
					return msg;
			} else if(po.get_TableName().equals(MOrder.Table_Name)) {
				MOrder m_Order = (MOrder) po;
				String msg = validDocumentReference(" o.C_Order_ID=? ", m_Order.get_ID(), "POO", po.get_TrxName());
				if(msg != null)
					return msg;
			} else if(po.get_TableName().equals(MJournalBatch.Table_Name)) {
				MJournalBatch m_JournalBatch = (MJournalBatch) po;
				String msg =  validDocumentReference(" gljb.GL_JournalBatch_ID=? ", m_JournalBatch.get_ID(), "GLJ", po.get_TrxName());
				if(msg != null)
					return msg;
			} 
		}
		
		else if (timing == TIMING_BEFORE_PREPARE) { // Dixon Martinez Add Tax
														// in Cash
			if (po.get_TableName().equals(MCash.Table_Name)) {
				log.fine(MCash.Table_Name + " -- TIMING_BEFORE_PREPARE");
				if (MSysConfig.getBooleanValue("TAX_ACCT_CASH", false)) {
					MCash cash = (MCash) po;
					if (!MLVECashTax.calculateTaxTotal(cash)) // setTotals
						return Msg.translate(Env.getLanguage(Env.getCtx()),
								"TaxCalculatingError");
				}
			} 
			else if (po.get_TableName().equals(MOrder.Table_Name)) {
				MOrder order = (MOrder) po;
				if (order.getC_PaymentTerm_ID() == 0)
					return null;
				MPaymentTerm pt = new MPaymentTerm(order.getCtx(), order.getC_PaymentTerm_ID(), order.get_TrxName());
				log.fine(pt.toString());
				pt.applyToOrder(order);
				return null;
				
				/**	Order Discount Example	*
				MOrder order = (MOrder)po;
				String error = orderDiscount(order);
				if (error != null)
					return error;
				/** Order Discount Example */
				//log.info(po.toString());
			}
		
		} else if (timing == TIMING_AFTER_COMPLETE) {
			if (po.get_TableName().equals(MInvoice.Table_Name)) {
				m_Current_Invoice = (MInvoice) po;
				grandAmount = Env.ZERO;
				m_Current_C_BPartner_ID = 0;
				int p_C_Invoice_ID = 0;
				int p_C_BPartner_ID = 0;
				MDocType docType = (MDocType) m_Current_Invoice
						.getC_DocTypeTarget();
				if (!docType.get_ValueAsBoolean("IsAutoAllocation"))
					return null;

				// get invoice lines
				MInvoiceLine[] m_InvoiceLine = m_Current_Invoice.getLines();
				// Check Current Invoice if is paid return
				if (m_Current_Invoice.isPaid())
					return null;
				// Check Current Invoice if is reversal return
				if (m_Current_Invoice.getReversal_ID() > 0)
					return null;
				// Instance Lines
				for (MInvoiceLine mInvoiceLine : m_InvoiceLine) {
					if (mInvoiceLine.get_Value("DocAffected_ID") != null
							&& mInvoiceLine.get_ValueAsInt("DocAffected_ID") > 0)
						p_C_Invoice_ID = mInvoiceLine
								.get_ValueAsInt("DocAffected_ID");
					else
						continue;
					p_C_BPartner_ID = m_Current_Invoice.getC_BPartner_ID();
					MInvoice m_InvoiceAffected = MInvoice.get(
							m_Current_Invoice.getCtx(), p_C_Invoice_ID);
					// Set Multiplier depending of document type
					setMultiplier((MDocType) m_InvoiceAffected.getC_DocType());
					// get open amount of document
					openAmount(p_C_Invoice_ID);

					BigDecimal amt;// = mInvoiceLine.getLineNetAmt() ;
					//
					BigDecimal TaxAmt = Env.ZERO;
					// setLineNetAmt();
					MTax tax = MTax.get(mInvoiceLine.getCtx(),
							mInvoiceLine.getC_Tax_ID());
					//
					TaxAmt = tax.calculateTax(mInvoiceLine.getLineNetAmt(),
							mInvoiceLine.isTaxIncluded(),
							mInvoiceLine.getPrecision());
					if (mInvoiceLine.isTaxIncluded())
						amt = mInvoiceLine.getLineNetAmt();
					else
						amt = mInvoiceLine.getLineNetAmt().add(TaxAmt);

					BigDecimal newOpenAmt = (openAmt.subtract(amt))
							.multiply(multiplier);
					// 2015-11-03 Carlos Parada Don't Allocate Negatives or Zero
					// Values
					// if(newOpenAmt.multiply(multiplier).compareTo(Env.ZERO) <
					// 0){
					if (newOpenAmt.multiply(multiplier).compareTo(Env.ZERO) <= 0) {
						// End Carlos Parada
						continue;
					}
					//
					if (p_C_BPartner_ID != m_Current_C_BPartner_ID)
						completeAllocation();
					grandAmount = grandAmount.add(amt);
					// Add allocation
					addAllocation(p_C_BPartner_ID, amt, openAmt, newOpenAmt,
							m_Current_Invoice, p_C_Invoice_ID);
				}
				// Complete Allocation
				completeAllocation();
			}
		}
		
		//
		return null;
	}

	@Override
	public String modelChange(PO po, int type) throws Exception {
		
		if(type == TYPE_BEFORE_NEW 
				|| type == TYPE_BEFORE_CHANGE) {

			log.fine(" TYPE_BEFORE_NEW || TYPE_BEFORE_CHANGE");

			if (po.get_TableName().equals(MMovement.Table_Name)) {
				MMovement m_Current_Movement = (MMovement) po;
				MDocType m_DocType = (MDocType) m_Current_Movement
						.getC_DocType();
				m_Current_Movement.setIsInTransit(m_DocType
						.get_ValueAsBoolean("IsInTransit"));
				m_Current_Movement.set_ValueOfColumn("IsManual",
						m_DocType.get_ValueAsBoolean("IsManual"));
			} else if (po.get_TableName().equals(MInOut.Table_Name)) {
				MInOut m_Current_InOut = (MInOut) po;
				MDocType m_DocType = (MDocType) m_Current_InOut.getC_DocType();
				m_Current_InOut.set_ValueOfColumn("IsManual",
						m_DocType.get_ValueAsBoolean("IsManual"));
			} else if (po.get_TableName().equals(MInvoice.Table_Name)) {
				MInvoice m_Current_Invoice = (MInvoice) po;
				MDocType m_DocType = (MDocType) m_Current_Invoice
						.getC_DocTypeTarget();
				m_Current_Invoice.set_ValueOfColumn("IsManual",
						m_DocType.get_ValueAsBoolean("IsManual"));
			} else if (po.get_TableName().equals(MCashLine.Table_Name)) {

				log.fine(MCashLine.Table_Name);

				// Get Cash Line from PO
				MCashLine m_CashLine = (MCashLine) po;

				// Verify if the (Base Amount + Tax Amount) > Amount
				BigDecimal amt = m_CashLine.getAmount();
				amt = amt.abs();

				if (amt.equals(Env.ZERO))
					m_CashLine.set_ValueOfColumn("A_Base_Amount", Env.ZERO);

				String str_Base_Amount = m_CashLine
						.get_ValueAsString("A_Base_Amount");
				BigDecimal base_Amt = new BigDecimal((str_Base_Amount != null
						&& str_Base_Amount.length() > 0 ? str_Base_Amount : "0"));

				// Calculate the tax amount and the exempt amount
				MTax m_Tax = new MTax(Env.getCtx(),
						m_CashLine.get_ValueAsInt("C_Tax_ID"), null);
				MCurrency m_Currency = new MCurrency(Env.getCtx(),
						Env.getContextAsInt(Env.getCtx(), "@#C_Currency_ID@"), null);
				BigDecimal taxAmt = m_Tax.calculateTax(base_Amt, false,
						m_Currency.getStdPrecision());
				BigDecimal exAmt = amt.subtract(base_Amt.abs().add(taxAmt.abs()));

				// Error
				if ((base_Amt.abs().add(taxAmt.abs()).add(exAmt.abs())
						.compareTo(amt.abs()) > 0)) {
					return Msg.parseTranslation(m_CashLine.getCtx(),
							"(@A_Base_Amount@ + @TaxAmt@ + @Exempt@) > @Amount@");
				}
				log.fine(po.toString());
			
			} else if (po.get_TableName().equals(MInvoice.Table_Name)
						&& type == TYPE_BEFORE_NEW ) {
				// Yamel Senih 2013-12-14, 12:01
				// Add character on end document no
				MInvoice inv = (MInvoice) po;
				if (inv.isReversal()) {
					MInvoice from_Invoice = MInvoice.get(inv.getCtx(),
							inv.getReversal_ID());
					inv.setDocumentNo(from_Invoice.getDocumentNo() + "^");
					inv.set_ValueOfColumn("AffectsBook", false);
				}
				// End Yamel Senih
				// 2014-05-02 Carlos Parada Set AffectedBook By Document Type
				else {
					MDocType doctype = (MDocType) inv.getC_DocTypeTarget();
					inv.set_ValueOfColumn("AffectsBook",
							doctype.get_ValueAsBoolean("AffectsBook"));
				}
				// End Carlos Parada
				
			}
		} else if (type == TYPE_AFTER_CHANGE 
						|| type == TYPE_AFTER_NEW) {
			log.fine(" TYPE_AFTER_CHANGE || TYPE_AFTER_NEW");
			if(po.get_TableName().equals(MPaySelectionCheck.Table_Name)) {

				// Carlos Parada Set BP_BankAccount to PaySelection if have Payment And
				// Set Description From PaySelection
				MPaySelectionCheck psch = (MPaySelectionCheck) po;
				if (psch.getC_Payment_ID() != 0) {
					// Set Bank Account
					if (psch.getC_BP_BankAccount_ID() == 0) {
						MBPBankAccount[] bpas = MBPBankAccount.getOfBPartner(
								Env.getCtx(), psch.getC_BPartner_ID());
						for (int i = 0; i < bpas.length; i++)
							if (psch.getPaymentRule().equals(
									bpas[i].get_ValueAsString("PaymentRule"))
									&& bpas[i].get_ValueAsBoolean("IsDefault")) {
								psch.setC_BP_BankAccount_ID(bpas[i]
										.getC_BP_BankAccount_ID());
								psch.save();
							}
					}
					// Set Description From PaySelection
					if (psch.getC_Payment().getDescription() == null
							&& psch.getC_PaySelection().getDescription() != null) {
						MPayment pay = (MPayment) psch.getC_Payment();
						pay.setDescription(psch.getC_PaySelection()
								.getDescription());
						pay.save();
					}
				}
			}else if (po.get_TableName().equals(MBPartner.Table_Name)
							&& type == TYPE_AFTER_NEW) {

				MBPartner bpartner = (MBPartner) po;
				MBPGroup bpgroup = new MBPGroup(Env.getCtx(),
						bpartner.getC_BP_Group_ID(), bpartner.get_TrxName());

				PreparedStatement pstmt = null;

				String sql = "SELECT * FROM LVE_WH_Relation WHERE"
						+ " C_BP_Group_ID = ?";

				pstmt = DB.prepareStatement(sql, bpartner.get_TrxName());
				pstmt.setInt(1, bpgroup.getC_BP_Group_ID());
				ResultSet res = pstmt.executeQuery();
				if (res != null) {
					while (res.next()) {
						MLVEWHRelation rt = new MLVEWHRelation(Env.getCtx(), res,
								bpartner.get_TrxName());
						MLVEWHRelation retention = new MLVEWHRelation(Env.getCtx(),
								0, bpartner.get_TrxName());
						retention.setC_BPartner_ID(bpartner.getC_BPartner_ID());
						retention.setLVE_Withholding_ID(rt.getLVE_Withholding_ID());
						retention.setValidFrom(rt.getValidFrom());
						retention.saveEx();
					}
				}
				// Close Connection
				DB.close(res, pstmt);
				log.info(po.toString());
			} 
			
		} else if(type == TYPE_BEFORE_DELETE 
					|| type == TYPE_BEFORE_CHANGE) {
			log.fine(" TYPE_BEFORE_DELETE || TYPE_BEFORE_CHANGE");
			if(po.get_TableName().equals(MPaySelection.Table_Name)) {

				MPaySelection mPay = (MPaySelection) po;
				String sqlWhere = "C_PaySelectionLine.C_PaySelection_ID = ? "
						+ "AND  C_PaySelectionLine.LVE_PaymentRequest_ID IS NOT NULL "
						// 2015-06-03 Carlos Parada Only Payment Request
						// Prepared
						+ " AND EXISTS (SELECT 1 FROM LVE_PaymentRequestLine prl WHERE prl.LVE_PaymentRequestLine_ID = C_PaySelectionLine.LVE_PaymentRequestLine_ID AND IsPrepared='Y' ) "
						+ " AND C_PaySelectionLine.DifferenceAmt <> 0 ";
				// End Carlos Parada
				;

				List<MPaySelectionLine> list = new Query(po.getCtx(),
						MPaySelectionLine.Table_Name, sqlWhere,
						po.get_TrxName()).setParameters(mPay.get_ID()).list();

				if (list.isEmpty())
					return null;
				//
				for (MPaySelectionLine mPaySelectionLine : list) {
					MLVEPaymentRequestLine m_LVE_PaymentRequestLine = new MLVEPaymentRequestLine(
							po.getCtx(),
							mPaySelectionLine
									.get_ValueAsInt("LVE_PaymentRequestLine_ID"),
							po.get_TrxName());
					//
					if (m_LVE_PaymentRequestLine.get_ID() == 0)
						return null;
					//
					m_LVE_PaymentRequestLine.setIsPrepared(false);
					m_LVE_PaymentRequestLine.saveEx();
				}

			
			}
		}
		return null;
	}

	

	/**
	 * Open Amount
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 *         12/12/2014, 11:27:54 Close Connection
	 * @contributor <a href="mailto:carlosaparadam@gmail.com">Carlos Parada</a>
	 *              06/02/2015, 14:30:13
	 * @param p_C_Invoice_ID
	 * @return
	 * @return BigDecimal
	 */
	private BigDecimal openAmount(int p_C_Invoice_ID) {
		//
		CallableStatement cs = null;
		try {
			cs = DB.prepareCall("{call invoiceopen(?, 0, ?)}");
			cs.setInt(1, p_C_Invoice_ID);
			cs.registerOutParameter(2, java.sql.Types.NUMERIC);
			cs.execute();
			openAmt = cs.getBigDecimal(2);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DB.close(cs);
		}
		return openAmt;
	}

	/**
	 * Complete Allocation
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 *         10/12/2014, 17:23:23
	 * @return void
	 */
	private void completeAllocation() {
		if (m_Current_Alloc != null) {
			if (m_Current_Alloc.getDocStatus().equals(
					DocumentEngine.STATUS_Drafted)) {
				log.fine("Amt Total Allocation="
						+ m_Current_Invoice.getGrandTotal());
				// get open amount of document
				openAmount(m_Current_Invoice.get_ID());
				// Set Multiplier depending of document type
				setMultiplier((MDocType) m_Current_Invoice.getC_DocType());

				BigDecimal amt = m_Current_Invoice.getGrandTotal();
				BigDecimal newOpenAmt = grandAmount.subtract(amt);

				MAllocationLine aLine = new MAllocationLine(m_Current_Alloc,
						grandAmount.multiply(multiplier), Env.ZERO, Env.ZERO,
						newOpenAmt);
				aLine.setDocInfo(m_Current_C_BPartner_ID, 0,
						m_Current_Invoice.getC_Invoice_ID());
				aLine.saveEx();
				//
				if (m_Current_Alloc.getDocStatus().equals(
						DocumentEngine.STATUS_Drafted)) {
					log.fine("Current Allocation = "
							+ m_Current_Alloc.getDocumentNo());
					//
					m_Current_Alloc
							.setDocAction(DocumentEngine.ACTION_Complete);
					m_Current_Alloc.processIt(DocumentEngine.ACTION_Complete);
					m_Current_Alloc.saveEx();
				}
			}
			m_Current_Alloc = null;

		}
	}

	/**
	 * Set Multiplier
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 *         12/12/2014, 11:35:58
	 * @param c_DocType
	 * @return void
	 */
	private void setMultiplier(MDocType c_DocType) {
		MDocType docType = (MDocType) c_DocType;
		String docBaseType = docType.getDocBaseType();
		multiplier = (docBaseType.substring(2).equals("C") ? Env.ONE.negate()
				: Env.ONE)
				.multiply((docBaseType.substring(1, 2).equals("P") ? Env.ONE
						.negate() : Env.ONE));

	}

	/**
	 * Add Document Allocation
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 *         10/12/2014, 17:23:45
	 * @param p_C_BPartner_ID
	 * @param amt
	 * @param openAmt
	 * @param newOpenAmt
	 * @param m_Invoice
	 * @param p_C_Invoice_ID
	 * @return void
	 */
	private void addAllocation(int p_C_BPartner_ID, BigDecimal amt,
			BigDecimal openAmt, BigDecimal newOpenAmt, MInvoice m_Invoice,
			int p_C_Invoice_ID) {
		if (m_Current_C_BPartner_ID != p_C_BPartner_ID) {
			m_Current_Alloc = new MAllocationHdr(Env.getCtx(),
					true, // manual
					Env.getContextAsDate(m_Invoice.getCtx(), "#Date"),
					m_Invoice.getC_Currency_ID(), Env.getContext(Env.getCtx(),
							"#AD_User_Name"), m_Invoice.get_TrxName());
			m_Current_Alloc.setAD_Org_ID(m_Invoice.getAD_Org_ID());
			m_Current_Alloc.saveEx();
		}
		//
		MAllocationLine aLine = new MAllocationLine(m_Current_Alloc,
				amt.multiply(multiplier), Env.ZERO, Env.ZERO, newOpenAmt);
		aLine.setDocInfo(p_C_BPartner_ID, 0, p_C_Invoice_ID);
		aLine.saveEx();
		//
		m_Current_C_BPartner_ID = p_C_BPartner_ID;
	}

	/**
	 * Valid Reference in other record
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
	 *         01/07/2014, 10:45:30
	 * @param get_TrxName
	 * @param get_ID
	 * @return
	 * @return String
	 */
	private String validCashLineReference(String get_TrxName, int get_ID) {

		String m_ReferenceNo = DB
				.getSQLValueString(
						get_TrxName,
						"SELECT MAX(c.DocumentNo) "
								+ "FROM C_Cash c "
								+ "INNER JOIN C_CashLine cl ON (c.C_Cash_ID = cl.C_Cash_ID) "
								+ "WHERE c.DocStatus IN('CO', 'CL') "
								+ "AND cl.C_Invoice_ID = ?", get_ID);

		if (m_ReferenceNo != null)
			return "@SQLErrorReferenced@ @C_Cash_ID@: " + m_ReferenceNo;
		// Return
		return null;
	}
	
	/**
	 * Valid DOcument Referenced in Payment Request
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 17/12/2014, 21:19:53
	 * @param sqlWhere
	 * @param p_Record_ID
	 * @param p_RequestType
	 * @param trxName
	 * @return
	 * @return String
	 */
	private String validDocumentReference(String sqlWhere, int p_Record_ID, String p_RequestType, String trxName) {
		String sql = "SELECT pr.DocumentNO FROM LVE_PaymentRequest pr "
				+ " INNER JOIN LVE_PaymentRequestLine prl ON (pr.LVE_PaymentRequest_ID = prl.LVE_PaymentRequest_ID)";
		
		if(p_RequestType.equals("API")){
			sql += " INNER JOIN C_Invoice i ON (prl.C_Invoice_ID  = i.C_Invoice_ID )";
			sql += sqlWhere != null ? " WHERE " + sqlWhere : " WHERE " + "" ;
		} else if(p_RequestType.equals("POO")){
			sql += " INNER JOIN C_Order o ON (prl.C_Order_ID  = o.C_Order_ID )";
			sql += sqlWhere != null ? " WHERE " + sqlWhere : " WHERE " + "" ;
		} else if(p_RequestType.equals("GLJ")){
			sql += " INNER JOIN GL_JournalLine gljl ON (prl.GL_JournalLine_ID = gljl.GL_JournalLine_ID)"
					+ " INNER JOIN GL_Journal glj ON (glj.GL_Journal_ID = gljl.GL_Journal_ID) "
					+ " INNER JOIN GL_JournalBatch gljb ON (gljb.GL_JournalBatch_ID = glj.GL_JournalBatch_ID)";
			sql += sqlWhere != null ? " WHERE " + sqlWhere : " WHERE " + "" ;
		}
		
		sql += " AND pr.DocStatus IN ('CO')";
		sql += " AND NOT EXISTS (SELECT 1 "
								+ "FROM "
								+ "C_PaySelectionLine psl "
								+ "INNER JOIN C_PaySelectionCheck psc ON (psl.C_PaySelectionCheck_ID = psc.C_PaySelectionCheck_ID) "
								+ "INNER JOIN C_Payment p ON (p.C_Payment_ID= psc.C_Payment_ID) "
								+ "WHERE p.DocStatus IN ('CO','CL') AND psl.LVE_PaymentRequestLine_ID = prl.LVE_PaymentRequestLine_ID)";
		String p_DocumentNO = DB.getSQLValueString(trxName, sql, p_Record_ID);
		
		if(p_DocumentNO != null) 
			return "@SQLErrorReferenced@ @LVE_PaymentRequest_ID@: " + p_DocumentNO ;
		return null;		
	}

}
