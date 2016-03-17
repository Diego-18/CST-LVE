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
import java.text.DecimalFormat;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBPartner;
import org.compiere.model.MClient;
import org.compiere.model.MMailText;
import org.compiere.model.MUserMail;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.EMail;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a>
 */
public class EmailNotificationOfPayment extends SvrProcess {

	/** Request Mail Text							*/
	private int 		p_R_MailText_ID			=	0;
	/** Payment										*/
	private int 		p_C_Payment_ID			=	0;
	/** Payment										*/
	private int 		p_C_PaymentBatch_ID		=	0;
	/** Mail Text									*/
	private MMailText	m_MailText				=	null;
	/** Counter										*/
	private int 		m_Counter 				=	0;
	/** Errors										*/
	private int 		m_Errors 				= 	0;
	/** Partner Email								*/
	private String		bp_Email				=	"";
	/** Partner ID									*/
	private int 		p_C_BPartner_ID			= 	0;
	/** Amount										*/
	private BigDecimal	p_Amount				=	null;
	/** Document NO									*/
	private String		p_DocumentNo			=	"";
	/** Open Amount									*/
	//private BigDecimal	p_OpenAmount			=	null;
	/** Grand Total									*/
	//private BigDecimal	p_GrandTotal			=	null;
	
	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#prepare()
	 */
	@Override
	protected void prepare() {
		for (ProcessInfoParameter parameter : getParameter()) {
			String name = parameter.getParameterName();
			if(parameter.getParameter() == null)
				;
			else if(name.equals("R_MailText_ID"))
				p_R_MailText_ID = parameter.getParameterAsInt();
			else if(name.equals("C_Payment_ID"))
				p_C_Payment_ID = parameter.getParameterAsInt();
			else if(name.equals("C_PaymentBatch_ID"))
				p_C_PaymentBatch_ID = parameter.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		if(p_R_MailText_ID == 0)
			throw new AdempiereException("@R_MailText_ID@ @NotFound@");
		//	Mail Test
		m_MailText = new MMailText (getCtx(), p_R_MailText_ID, get_TrxName());
		//
		setData();

		return "@Created@= " + m_Counter + ", @Errors@= " + m_Errors ;
	}
	
	/**
	 * 	Send Individual Mail
	 *	@param Name user name
	 *	@param AD_User_ID user
	 *	@param unsubscribe unsubscribe message
	 *	@return true if mail has been sent
	 */
	private boolean sendIndividualMail (String Name, int C_BPartner_ID,String unsubscribe, String p_Email) {
		//	Prevent two email
		String msg ;
		MBPartner to =  new MBPartner(getCtx(), C_BPartner_ID, null);
			
		try	{
			MClient m_client;
			//
			m_MailText.setPO(to);
			m_MailText.setBPartner(to);
			String message = m_MailText.getMailText(true);
			message = Msg.parseTranslation(getCtx(), message);

			//	Unsubscribe
			if (unsubscribe != null)
				message += unsubscribe;
			
			String subject = to.getName()
					+ ": " + m_MailText.getMailHeader();;
			//	Client Info
			m_client = MClient.get (getCtx());
			//
			EMail email = m_client.createEMail(p_Email, subject, message);
			
			if (m_MailText.isHtml()) {
				email.setMessageHTML(subject, message);
			} else {
				email.setSubject (subject);
				email.setMessageText (message);
			}
			if (!email.isValid() 
					&& !email.isValid(true)) {
				
				addLog(0, null, null, to.getName() + " " + (email.getFrom() != null ? email.getFrom() + " " : " @RequestActionEMailNoFrom@")) ;
				log.log(Level.FINE, "NOT VALID - " + email);
				to.setIsActive(false);
				to.save();
				return false;
			}
			
			boolean ok = EMail.SENT_OK.equals(email.send());

			new MUserMail(m_MailText, Env.getContextAsInt(getCtx(), "AD_User_ID"), email).save();
			msg = (ok ? "@OK@ ": "@ERROR@ ");
			addLog(0, null, null, msg  + to.getName() + " " + (p_Email != null ? p_Email + " " : " @RequestActionEMailNoTo@")) ;
			return ok;
		}catch(Exception e) {
			log.log(Level.FINE, "@ERROR@ "  + to.getName() + " " + (p_Email != null ? p_Email + " " : " @RequestActionEMailNoTo@") + e.getMessage());
			addLog(0, null, null, "@ERROR@ "  + to.getName() + " " + (p_Email != null ? p_Email + " " : " @RequestActionEMailNoTo@")) ;
			return false;
		}
	}	//	sendIndividualMail
	
	/**
	 * 
	 * @author <a href="mailto:dixon.22martinez@gmail.com">Dixon Martinez</a> 25/9/2014, 15:11:55
	 * @param p_Record_ID
	 * @return void
	 */
	private void setData() {
		String detail = null;
		 String sql;
		 sql = " SELECT "
		 		+ "	bpac.A_Email,p.C_BPartner_ID,ABS(al.Amount) Amount,i.DocumentNo,PaymentRequestOpen('API',p.C_Invoice_ID,0) OpenAmount,i.GrandTotal"
		 		+ " FROM C_Payment p"
		 		+ " LEFT JOIN C_PaySelectionCheck psc ON (psc.C_Payment_ID = p.C_Payment_ID)"
		 		+ " LEFT JOIN C_BP_BankAccount bpac ON ("
		 		+ "					(bpac.C_BP_BankAccount_ID = psc.C_BP_BankAccount_ID )"
		 		+ "					OR ("
		 		+ "						bpac.C_BPartner_ID = psc.C_BPartner_ID"
		 		+ "						AND bpac.IsDefault= 'Y'"
		 		+ "						AND psc.PaymentRule = bpac.PaymentRule"
		 		+ "					)"
		 		+ "				)"
		 		+ " LEFT JOIN C_AllocationLine al ON (p.C_Payment_ID = al.C_Payment_ID)"
		 		+ " INNER JOIN C_Invoice i ON (i.C_Invoice_ID = al.C_Invoice_ID) "
		 		+ " WHERE"
		 		+ (p_C_Payment_ID != 0 ? " 	p.C_Payment_ID = ? " : "")
				+ (p_C_PaymentBatch_ID != 0 && p_C_Payment_ID != 0 ? " AND	p.C_PaymentBatch_ID = ? " :  (p_C_PaymentBatch_ID != 0 && p_C_Payment_ID == 0 ? " p.C_PaymentBatch_ID = ? " : ""))
				+ " UNION ALL"
				+ " SELECT"
				+ "	bpac.A_Email, p.C_BPartner_ID, ABS(p.PayAmt) Amount, o.DocumentNo, PaymentRequestOpen('POO',o.C_Order_ID,0) OpenAmount, o.GrandTotal"
				+ " FROM C_Payment p"
				+ " INNER JOIN C_Order o ON (o.C_Order_ID = p.C_Order_ID)"
				+ " LEFT JOIN C_PaySelectionCheck psc ON (psc.C_Payment_ID = p.C_Payment_ID)"
				+ " LEFT JOIN C_BP_BankAccount bpac ON (	"
				+ "				(bpac.C_BP_BankAccount_ID = psc.C_BP_BankAccount_ID )"
				+ "					OR ("
				+ "						bpac.C_BPartner_ID = psc.C_BPartner_ID"
				+ "						AND bpac.IsDefault= 'Y'"
				+ "						AND psc.PaymentRule = bpac.PaymentRule"
				+ "					)"
				+ "				)"
				+ " WHERE 	"
				+ (p_C_Payment_ID != 0 ? " 	p.C_Payment_ID = ? " : "")
				+ (p_C_PaymentBatch_ID != 0 && p_C_Payment_ID != 0 ? " AND	p.C_PaymentBatch_ID = ? " :  (p_C_PaymentBatch_ID != 0 && p_C_Payment_ID == 0 ? " p.C_PaymentBatch_ID = ? " : ""))
				+ " UNION ALL"
				+ " SELECT"
				+ "		bpac.A_Email, p.C_BPartner_ID, ABS(p.PayAmt) Amount,CAST ('' AS CHARACTER VARYING(60)) DocumentNo, CAST(NULL AS NUMERIC) OpenAmount, CAST(NULL AS NUMERIC) GrandTotal"
				+ " FROM C_Payment p"
				+ " INNER JOIN C_Charge c ON (c.C_Charge_ID = p.C_Charge_ID)"
				+ " LEFT JOIN C_PaySelectionCheck psc ON (psc.C_Payment_ID = p.C_Payment_ID)"
				+ " LEFT JOIN C_BP_BankAccount bpac ON ("
				+ "					(bpac.C_BP_BankAccount_ID = psc.C_BP_BankAccount_ID )"
				+ "					OR ("
				+ "						bpac.C_BPartner_ID = psc.C_BPartner_ID"
				+ "						AND bpac.IsDefault= 'Y'"
				+ "						AND psc.PaymentRule = bpac.PaymentRule"
				+ "					)"
				+ "				) "
				+ " WHERE"
				+ (p_C_Payment_ID != 0 ? " 	p.C_Payment_ID = ? " : "")
				+ (p_C_PaymentBatch_ID != 0 && p_C_Payment_ID != 0 ? " AND	p.C_PaymentBatch_ID = ? " :  (p_C_PaymentBatch_ID != 0 && p_C_Payment_ID == 0 ? " p.C_PaymentBatch_ID = ? " : ""));

		 log.log(Level.FINE, sql);
		 log.log(Level.FINE, "@C_PaymentBatch_ID@ "  + p_C_PaymentBatch_ID);
		 log.log(Level.FINE, "@C_Payment_ID@ "  + p_C_Payment_ID);
		PreparedStatement pstmt = null;
		try	{
			int i =1;
			pstmt = DB.prepareStatement(sql, get_TrxName());
			if (p_C_Payment_ID != 0){
				pstmt.setInt(i, p_C_Payment_ID);
				i++;
			}
			if (p_C_PaymentBatch_ID != 0){
				pstmt.setInt(i, p_C_PaymentBatch_ID);
				i++;
			}
			if (p_C_Payment_ID != 0){
				pstmt.setInt(i, p_C_Payment_ID);
				i++;
			}
			if (p_C_PaymentBatch_ID != 0){
				pstmt.setInt(i, p_C_PaymentBatch_ID);
				i++;
			}
			if (p_C_Payment_ID != 0){
				pstmt.setInt(i, p_C_Payment_ID);
				i++;
			}
			if (p_C_PaymentBatch_ID != 0){
				pstmt.setInt(i, p_C_PaymentBatch_ID);
			}

		
			ResultSet rs = pstmt.executeQuery();
			
			detail = "<table Style = 'with:100%' border='1' >";
			detail += "<tr>";
			detail += "<td> @C_Invoice_ID@ / @C_Order_ID@</td>";
			detail += "<td> @PayAmt@ </td>";
			//	detail += "<td> @OpenAmt@ </td>";
			//	detail += "<td> @GrandTotal@ </td>";
			detail += "</tr>";
			
			while (rs.next()) {
				bp_Email 			= 	rs.getString("A_Email");
				p_C_BPartner_ID 	= 	rs.getInt("C_BPartner_ID");
				p_Amount			=	rs.getBigDecimal("Amount");
				p_DocumentNo		=	rs.getString("DocumentNo");
				//p_OpenAmount		=	rs.getBigDecimal("OpenAmount");
				//p_GrandTotal		=	rs.getBigDecimal("GrandTotal");

				DecimalFormat df = new DecimalFormat("###,###.00");

				detail += "<tr>";
				detail += "<td> " + p_DocumentNo + " </td>";
				detail += "<td align='right'> " +  df.format(p_Amount.doubleValue()) + " </td>";
				//	detail += "<td align='right'> " + df.format(p_OpenAmount.doubleValue()) + " </td>";
				//	detail += "<td align='right'> " + df.format(p_GrandTotal.doubleValue()) + " </td>";
				detail += "</tr>";
				detail += "</table>";
				
				detail = Msg.parseTranslation(getCtx(), detail);
				
				Env.setContext(getCtx(), "DetailMail", detail);
				boolean ok = sendIndividualMail("", p_C_BPartner_ID, null,bp_Email);
				if(ok)
					m_Counter++;
				else
					m_Errors++;
			}
			rs.close();
			pstmt.close();
			pstmt = null;
		} catch (SQLException ex) {
			log.log(Level.SEVERE, sql, ex);
		}
		//	Clean Up
		try {
			if (pstmt != null)
				pstmt.close();
		} catch (SQLException ex1) {
			log.log(Level.SEVERE, sql, ex1);
		}
		pstmt = null;
	}	//	setData
}
