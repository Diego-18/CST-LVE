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
package org.spin.util;

import java.io.File;
import java.io.FileWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;

import org.compiere.model.MBankAccount;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPayment;
import org.compiere.model.MPaymentBatch;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.eevolution.model.MHRPaySelection;
import org.eevolution.model.MHRPaySelectionCheck;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 * Export class for Mercantil Bank of payroll
 */
public class BHR_MercantilPE implements HRPaymentExport {

	/** Logger								*/
	static private CLogger	s_log = CLogger.getCLogger (BHR_MercantilPE.class);

	/** BPartner Info Index for Account    		*/
	private static final int    BPA_A_ACCOUNT 		= 0;
	/** BPartner Info Index for Value       	*/
	private static final int    BPA_A_IDENT_SSN 	= 1;
	/** BPartner Info Index for Name        	*/
	private static final int    BPA_A_NAME 			= 2;
	/** BPartner Info Index for Swift Code	    */
	private static final int    BPA_SWIFTCODE 		= 3;
	/** BPartner Info Index for e-mail    		*/
	private static final int    BPA_A_EMAIL 		= 4;
	/**	Identifier User							*/
	private static final String	USER_ID				= "800352";
	
	@Override
	public int exportToFile(MHRPaySelectionCheck[] checks, File file,
			StringBuffer err) {
		if (checks == null || checks.length == 0)
			return 0;
		//  delete if exists
		try {
			if (file.exists())
				file.delete();
		}catch (Exception e) {
			s_log.log(Level.WARNING, "Could not delete - " + file.getAbsolutePath(), e);
		}
		
		//	
		MHRPaySelection m_PaySelection = (MHRPaySelection) checks[0].getHR_PaySelection();
		MPayment m_Payment = (MPayment) checks[0].getC_Payment();
		MPaymentBatch m_PaymentBatch = (MPaymentBatch) m_Payment.getC_PaymentBatch();
		MBankAccount m_BankAccount = (MBankAccount) m_PaySelection.getC_BankAccount();
		MOrgInfo orgInfo = MOrgInfo.get(m_PaySelection.getCtx(), m_PaySelection.getAD_Org_ID(), m_PaySelection.get_TrxName());
		//MBank mBank = MBank.get(m_BankAccount.getCtx(), m_BankAccount.getC_Bank_ID()); 
		
		//	Payments Generated
		int payGenerated = checks.length;
		
		//	Process Organization Tax ID
		String orgTaxID = orgInfo.getTaxID().replace("-", "").trim();		
		orgTaxID = orgTaxID.substring(1, (orgTaxID.length() >= 10 ? 10: orgTaxID.length()));
		orgTaxID = String.format("%1$" + 10 + "s", orgTaxID).replace(" ", "0");
		
		//	Account No
		String bankAccountNo = m_BankAccount.getAccountNo().trim();
		bankAccountNo = bankAccountNo.substring(0, (bankAccountNo.length() >= 20? 20: bankAccountNo.length()));
		bankAccountNo = bankAccountNo.replace(" ", "");
		if(bankAccountNo.length() > 10)
			bankAccountNo = bankAccountNo.substring(10, bankAccountNo.length());
		//
		bankAccountNo = String.format("%1$-" + 10 + "s", bankAccountNo).replace(" ","0");
		
		//	Format Date
		String format = "yyyyMMdd";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		
		//Type of identification		
		String iden_Type_Org = orgInfo.getTaxID().substring(0,1);
		
		// Batch Document No
		String batchDocNo = m_PaymentBatch.getDocumentNo();
		//	Valid Batch Document No
		if(batchDocNo == null) {
			err.append("No Batch Document");
			s_log.log(Level.SEVERE, "@C_PaymentBatch_ID@ @NotFound@");
			return 0;
		}
		//	
		batchDocNo = batchDocNo.substring(0, (batchDocNo.length() >= 15 ? 15 : batchDocNo.length()));
		batchDocNo = String.format("%1$" + 15 + "s", batchDocNo).replace(" ", "0");
		
		//	Total Amount
		String totalAmt = String.format("%.2f", m_PaySelection.getTotalAmt().abs()).replace(".", "").replace(",", "");			
		totalAmt = String.format("%1$" + 15 + "s", totalAmt).replace(" ", "0");
		
		//	Constant Bank
		String ID_BANK = "105";
		//	Currency ISO
		String currencyISO = m_Payment.getCurrencyISO();
		int noLines = 0;
		
		//	Identify Payment
		String identifyPayment = "";
		//	Add Name of Payment Selection
		if(m_PaySelection.getName() != null)
			identifyPayment = m_PaySelection.getName() + " ";
		//	Add Description of Payment Selection	 
		if(m_PaySelection.getDescription() != null)
			identifyPayment += m_PaySelection.getDescription();
		//	Concatenate Identify Payment
		identifyPayment = identifyPayment.substring(0, (identifyPayment.length() >= 20 ? 20 : identifyPayment.length()));
		//	Format Identify Payment
		identifyPayment = String.format("%1$-" + 20 + "s", identifyPayment);
		//	
		StringBuffer line = null;
		try	{
			FileWriter fw = new FileWriter(file);
			//  write header
			line = new StringBuffer();
			//	
			line.append("00")														//	Type Register
			.append(USER_ID)														//	ID User
			.append(iden_Type_Org)													//  Identify Type Person 
			.append(orgTaxID)														//  ID Number Org
			.append(identifyPayment)												//  Identify of Payment
			.append(batchDocNo)														//  Batch No
			.append(ID_BANK)														//	ID Bank
			.append(currencyISO)													//	Currency ISO		
			.append(bankAccountNo)													//	Account No
			.append(totalAmt)														//	Payment Amount
			.append(String.format("%0" + 5 + "d", payGenerated))					//	Payments Generated
			.append(sdf.format(new Date(System.currentTimeMillis())))				//	Payment Date
			.append(Env.NL);														//	New Line
			//	Write
			fw.write(line.toString());
			noLines++;
			
			for (int i = 0; i < checks.length; i++)	{
				MHRPaySelectionCheck mpp = checks[i];
				if (mpp == null)
					continue;
				//  BPartner Info
				String bp[] = getBPartnerInfo(mpp.getC_BPartner_ID());
				
				//	Payment Detail
				m_Payment = (MPayment) mpp.getC_Payment();
				//	Process Document No
				String docNo = m_Payment.getDocumentNo();
				docNo = docNo.substring(0, (docNo.length() >= 8? 8: docNo.length()));
				docNo = String.format("%1$" + 8 + "s", docNo).replace(" ", "0");
				//	Payment Amount
				String amt = String.format("%.2f", m_Payment.getPayAmt().abs()).replace(".", "").replace(",", "");
				amt = String.format("%1$" + 15 + "s", amt).replace(" ", "0");
				//	
				String identClientEmpr = orgInfo.getTaxID().replace("-", "").trim();
				identClientEmpr = identClientEmpr.substring(0, (identClientEmpr.length() >= 16 ? 16 : identClientEmpr.length()));
				identClientEmpr = String.format("%1$-" + 16 + "s", identClientEmpr);
				//	Iden Type 
				String typIden = bp[BPA_A_IDENT_SSN]; 			
				typIden = typIden.substring(0,1);
				 
				//Business PArtner Tax ID
				String bPartnerTax = bp[BPA_A_IDENT_SSN];
				bPartnerTax = bPartnerTax.substring(1, (bPartnerTax.length() >= 15 ? 15: bPartnerTax.length()));
				bPartnerTax = String.format("%1$" + 10 + "s", bPartnerTax).replace(" ", "0");
				
				//	Line
				line = new StringBuffer();
				line
					.append("01")															//	Constant
					.append(typIden)														// 	Identify Type
					.append(bPartnerTax)													//	Business PArtner Tax ID
					.append(bp[BPA_A_NAME])													//	Business Partner Name
					.append("1")															//  Tender Type/Payment Form
					.append("105")															//	ID Bank
					.append(bp[BPA_A_ACCOUNT])												//	Account No
					.append(amt)															//	Payment Amount
					.append(amt)															//	Payment Amount
					.append(Env.NL)															//	New Line
					;				
				fw.write(line.toString());
				noLines++;
			}   //  write line
			//	Close
			fw.flush();
			fw.close();
		}
		catch (Exception e)	{
			err.append(e.toString());
			s_log.log(Level.SEVERE, "", e);
			return -1;
		}

		return noLines;
	}
	
	
	/**
	 * Get Business Partner Information
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 16/04/2013, 20:14:38
	 * @param C_BPartner_ID
	 * @return
	 * @return String[]
	 */
	private String[] getBPartnerInfo (int C_BPartner_ID)
	{
		String[] bp = new String[5];
		//	Sql
		String sql = "SELECT MAX(bpa.AccountNo) AccountNo, bpa.A_Ident_SSN, bpa.A_Name, bpb.SwiftCode, bpa.A_Email " +
				"FROM C_BP_BankAccount bpa " +
				"INNER JOIN C_Bank bpb ON(bpb.C_Bank_ID = bpa.C_Bank_ID) " +
				"WHERE bpa.C_BPartner_ID = ? " +
				"AND bpa.IsActive = 'Y' " +
				"AND bpa.IsACH = 'Y' " +
				"GROUP BY bpa.C_BPartner_ID, bpa.A_Ident_SSN, bpa.A_Name, bpb.SwiftCode, bpa.A_Email";
		
		s_log.fine("SQL=" + sql);
		
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, C_BPartner_ID);
			ResultSet rs = pstmt.executeQuery();
			//
			if (rs.next())
			{
				bp[BPA_A_ACCOUNT] = rs.getString(1);
				if (bp[BPA_A_ACCOUNT] == null)
					bp[BPA_A_ACCOUNT] = "NO CUENTA";
				bp[BPA_A_IDENT_SSN] = rs.getString(2);
				if (bp[BPA_A_IDENT_SSN] == null)
					bp[BPA_A_IDENT_SSN] = "NO RIF/CI";
				bp[BPA_A_NAME] = rs.getString(3);
				if (bp[BPA_A_NAME] == null)
					bp[BPA_A_NAME] = "NO NOMBRE";
				bp[BPA_SWIFTCODE] = rs.getString(4);
				if (bp[BPA_SWIFTCODE] == null)
					bp[BPA_SWIFTCODE] = "NO SWIFT";
				bp[BPA_A_EMAIL] = rs.getString(5);
				if (bp[BPA_A_EMAIL] == null)
					bp[BPA_A_EMAIL] = "";
			} else {
				bp[BPA_A_ACCOUNT] 	= "NO CUENTA";
				bp[BPA_A_IDENT_SSN] = "NO RIF/CI";
				bp[BPA_A_NAME] 		= "NO NOMBRE";
				bp[BPA_SWIFTCODE] 	= "NO SWIFT";
				bp[BPA_A_EMAIL] 	= "";
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			s_log.log(Level.SEVERE, sql, e);
		}
		return processBPartnerInfo(bp);
	}   //  getBPartnerInfo
	
	
	/**
	 * Process Business Partner Information
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 16/04/2013, 20:14:49
	 * @param bp
	 * @return
	 * @return String[]
	 */
	private String [] processBPartnerInfo(String [] bp){
		//	Process Business Partner Account No
		String bpaAccount = bp[BPA_A_ACCOUNT];
		bpaAccount = bpaAccount.substring(0, bpaAccount.length() >= 20? 20: bpaAccount.length());
		
		if(bpaAccount.length() > 10)
			bpaAccount = bpaAccount.substring(10, bpaAccount.length());
		
		bpaAccount = String.format("%1$-" + 10 + "s", bpaAccount).replace(" ","0");
		bp[BPA_A_ACCOUNT] = bpaAccount;
		//	Process Tax ID
		String bpaTaxID = bp[BPA_A_IDENT_SSN];
		bpaTaxID = bpaTaxID.replace("-", "").trim();
		bpaTaxID = bpaTaxID.substring(0, bpaTaxID.length() >= 15? 15: bpaTaxID.length());
		//bpaTaxID = String.format("%1$-" + 15 + "s", bpaTaxID);
		bp[BPA_A_IDENT_SSN] = bpaTaxID;
		//	Process Account Name
		String bpaName = bp[BPA_A_NAME];
		bpaName = bpaName.substring(0, bpaName.length() >= 60? 60: bpaName.length());
		bpaName = String.format("%1$-" + 60 + "s", bpaName);
		bp[BPA_A_NAME] = bpaName;
		//	Process Swift Code
		String bpaSwiftCode = bp[BPA_SWIFTCODE];
		bpaSwiftCode = bpaSwiftCode.substring(0, bpaSwiftCode.length() >= 12? 12: bpaSwiftCode.length());
		
		bp[BPA_SWIFTCODE] = bpaSwiftCode;
		//	Process e-mail
		String bpaEmail = bp[BPA_A_EMAIL];
		bpaName = bpaEmail.substring(0, bpaEmail.length() >= 60? 60: bpaEmail.length());
		bpaEmail = String.format("%1$-" + 50 + "s", bpaEmail);
		bp[BPA_A_EMAIL] = bpaEmail;
		return bp;
	}	//	processBPartnerInfo
}
