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
package org.spin.report;

import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.model.I_C_Bank;
import org.compiere.model.I_C_BankStatement;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;

/**
 * @author <a href="mailto:dixon22ma@gmail.com">Dixon Martinez</a>
 * @contributor Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com
 * 	<li>Add support to summary Balance
 *
 */
public class BalancePerBank extends SvrProcess {

	/**	Bank										*/
	private int 			p_C_Bank_ID						= 	0;
	/**	Bank Account								*/
	private int 			p_C_BankAccount_ID				=	0;
	/**	Statement Date								*/
	private Timestamp		p_StatementDate					=	null;
	/**	Organization								*/
	private int 			p_AD_Org_ID						=	0;
	/**	Show Summary								*/
	private boolean			p_DetailsSourceFirst			= false;
	/**	Parameter Where Clause						*/
	private StringBuffer	m_ParameterWhere 				= new StringBuffer();
	
	/**	Parameter Where Clause						*/
	private StringBuffer	m_ParameterWhereNotConcilied 	= new StringBuffer();
	
	/**	Sql Insert									*/
	private static String SQL_INSERT = "INSERT INTO T_BalancePerBank "
			+ "(AD_PInstance_ID,AD_Client_ID,AD_Org_ID,Created,CreatedBy, Updated,UpdatedBy,IsActive,C_Bank_ID"
			+ ",C_BankAccount_ID,"
			+ "C_BankStatement_ID,StatementDate,"
			+ "C_BankStatementLine_ID,"
			+ "C_Payment_ID,DateTrx,PayAmt,IsReconciled,ReconciledAmt,AmountNotReconciled, DetailsSourceFirst)"
			;

	@Override
	protected void prepare() {
		StringBuffer sb = new StringBuffer ("AD_PInstance_ID=")
		.append(getAD_PInstance_ID());
		//	Parameter
		for (ProcessInfoParameter para:getParameter()){
			String name = para.getParameterName();
			//	
			if (para.getParameter() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if(name.equals("C_Bank_ID"))
				p_C_Bank_ID	= para.getParameterAsInt();
			else if(name.equals("C_BankAccount_ID"))
				p_C_BankAccount_ID	= para.getParameterAsInt();
			else if(name.equals("StatementDate"))
				p_StatementDate = (Timestamp) para.getParameter();
			else if(name.equals("DetailsSourceFirst"))
				p_DetailsSourceFirst = para.getParameterAsBoolean();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		//	Optional Bank
		if(p_C_Bank_ID != 0)
			m_ParameterWhere.append(" AND b."+  I_C_Bank.COLUMNNAME_C_Bank_ID + " = " + p_C_Bank_ID);
		//	Mandatory Statement Date
		m_ParameterWhere.append(" AND bs.").append(I_C_BankStatement.COLUMNNAME_StatementDate + " <= " + DB.TO_DATE(p_StatementDate, true) );
		//	Optional Bank Account
		if (p_C_BankAccount_ID != 0)
			m_ParameterWhere.append(" AND bs.").append(I_C_BankStatement.COLUMNNAME_C_BankAccount_ID + " = " +p_C_BankAccount_ID);
		//	Optional Organization		
		if (p_AD_Org_ID != 0)
			m_ParameterWhere.append("AND ba.AD_Org_ID = " + p_AD_Org_ID);
		
		sb.append(" - DateAcct ").append(p_StatementDate);
		sb.append(" - Where=").append(m_ParameterWhere);
		log.fine(sb.toString());
		
	}

	/* (non-Javadoc)
	 * @see org.compiere.process.SvrProcess#doIt()
	 */
	@Override
	protected String doIt() throws Exception {
		//	Create Payment Reconciled 
		createPaymentReconciled();
		//	Create Payment Not Reconciled 
		createPaymentNotReconciled();
		return "";
	}

	/**
	 * Create payment Reconciled
	 * @author <a href="mailto:dixon22ma@gmail.com">Dixon Martinez</a> 10/11/2014, 19:09:13
	 * @contributor Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com
	 * 	<li>Add support to summary Balance
	 * @return void
	 */
	private void createPaymentReconciled() {
		StringBuffer sql = new StringBuffer(SQL_INSERT);
		if(p_DetailsSourceFirst) {
			sql.append("SELECT ")
				.append(getAD_PInstance_ID()).append(",")								//	AD_PInstance
				.append(getAD_Client_ID()).append(",") 									//	AD_Client 
				.append(" ba.AD_Org_ID ").append(",")									//	Organization
				.append(" " + DB.TO_DATE(p_StatementDate, true) + " ").append(",")		//	Created
				.append(getAD_User_ID()).append(",")									//	CreatedBy
				.append(" " + DB.TO_DATE(p_StatementDate, true) + " ").append(",")		//	Updated
				.append(getAD_User_ID()).append(",")									//	UpdatedBy
				.append(" bs.IsActive ,");
			if(p_C_Bank_ID != 0)
				sql.append(" " + p_C_Bank_ID + " ").append(",");						//	Bank
			else 
				sql.append(" b.C_Bank_ID ").append(",");								//	Bank
			//	Bank Account
			if(p_C_BankAccount_ID <= 0)
				sql.append(" bs.C_BankAccount_ID ");			
			else
				sql.append(" " + p_C_BankAccount_ID + " "); 
			sql.append(",");
			;
			sql.append(" bs.C_BankStatement_ID ").append(",")	 						//	C_BanStatement
				.append(" " + DB.TO_DATE(p_StatementDate, true) + " ").append(",") 		//	Statement Date
				.append(" bsl.C_BankStatementLine_ID ").append(",")						//	Statement Line
				.append(" p.C_Payment_ID " ).append(",")								//	Payment
				.append(" p.DateTrx ").append(",")										//	Date Acct
				.append(" PayAmt,")														//	Pay Amount
				.append(" 'Y', ")
				.append(" CASE WHEN p.IsReceipt = 'Y' THEN PayAmt ELSE PayAmt * -1 END ReconciledAmt,")
				.append(" 0 AmountNotReconciled, ")
				.append((p_DetailsSourceFirst? "'Y'": "'N'")).append(" DetailsSourceFirst");
			//	From
			sql.append(" FROM C_BankStatement bs ") 									//	From 
				.append("INNER JOIN C_BankAccount ba ON (bs.C_BankAccount_ID = ba.C_BankAccount_ID)	"
					+ " INNER JOIN C_BankStatementLine bsl ON (bs.C_BankStatement_ID = bsl.C_BankStatement_ID)" 
					+ " INNER JOIN C_Payment p ON (bsl.C_Payment_ID = p.C_Payment_ID )"
					+ " INNER JOIN C_Bank b ON (ba.C_Bank_ID = b.C_Bank_ID ) ");
		} else {
			sql.append("SELECT ")
				.append(getAD_PInstance_ID()).append(",")								//	AD_PInstance
				.append(getAD_Client_ID()).append(",") 									//	AD_Client 
				.append(" ba.AD_Org_ID ").append(",")									//	Organization
				.append(" " + DB.TO_DATE(p_StatementDate, true) + " ").append(",")		//	Created
				.append(getAD_User_ID()).append(",")									//	CreatedBy
				.append(" " + DB.TO_DATE(p_StatementDate, true) + " ").append(",")		//	Updated
				.append(getAD_User_ID()).append(",")									//	UpdatedBy
				.append(" bs.IsActive ,");
			if(p_C_Bank_ID != 0)
				sql.append(" " + p_C_Bank_ID + " ").append(",");						//	Bank
			else 
				sql.append(" b.C_Bank_ID ").append(",");								//	Bank
			//	Bank Account
			if(p_C_BankAccount_ID <= 0)
				sql.append(" bs.C_BankAccount_ID ");			
			else
				sql.append(" " + p_C_BankAccount_ID + " "); 
			sql.append(",");
			;
			sql.append(" NULL C_BankStatement_ID ").append(",")	 						//	C_BanStatement
				.append(" " + DB.TO_DATE(p_StatementDate, true) + " ").append(",") 		//	Statement Date
				.append(" NULL C_BankStatementLine_ID ").append(",")						//	Statement Line
				.append(" NULL C_Payment_ID " ).append(",")								//	Payment
				.append(" NULL DateTrx ").append(",")										//	Date Acct
				.append(" SUM(p.PayAmt) PayAmt,")														//	Pay Amount
				.append(" 'Y', ")
				.append(" SUM(CASE WHEN p.IsReceipt = 'Y' THEN p.PayAmt ELSE p.PayAmt * -1 END) ReconciledAmt,")
				.append(" 0 AmountNotReconciled, ")
				.append((p_DetailsSourceFirst? "'Y'": "'N'")).append(" DetailsSourceFirst");
			//	From
			sql.append(" FROM C_BankStatement bs ") 									//	From 
				.append("INNER JOIN C_BankAccount ba ON (bs.C_BankAccount_ID = ba.C_BankAccount_ID)	"
					+ " INNER JOIN C_BankStatementLine bsl ON (bs.C_BankStatement_ID = bsl.C_BankStatement_ID)" 
					+ " INNER JOIN C_Payment p ON (bsl.C_Payment_ID = p.C_Payment_ID )"
					+ " INNER JOIN C_Bank b ON (ba.C_Bank_ID = b.C_Bank_ID ) ");
		}
		//	Where Clause
		sql.append(" WHERE ")															//	Where
			.append(" bs.AD_Client_ID = ").append(getAD_Client_ID())
			.append(" AND p.DocStatus IN ('CO','CL','VO','RE')")
			.append(" AND bs.DocStatus IN ('CO','CL')")
			.append(m_ParameterWhere);	//	Where 
		//	Valid
		if(!p_DetailsSourceFirst) {
			//	Group by Clause
			sql.append(" GROUP BY ba.AD_Org_ID, bs.IsActive, b.C_Bank_ID, bs.C_BankAccount_ID");
		}
		//	
		int no = DB.executeUpdate(sql.toString(), get_TrxName());
		
		if (no == 0)
			log.fine(sql.toString());
		log.fine("#" + no + " (Bank_ID=" + p_C_Bank_ID + ")");
		
	}

	/**
	 * Create data payment not Reconciled
	 * @author <a href="mailto:dixon22ma@gmail.com">Dixon Martinez</a> 10/11/2014, 19:08:48
	 * @contributor Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com
	 * 	<li>Add support to summary Balance
	 * @return void
	 */
	private void createPaymentNotReconciled() {
		//	Optional Bank
		if(p_C_Bank_ID != 0)
			m_ParameterWhereNotConcilied.append(" AND b."+  I_C_Bank.COLUMNNAME_C_Bank_ID + " = " + p_C_Bank_ID);
		//	Mandatory Statement Date
		m_ParameterWhereNotConcilied.append(" AND bs.").append(I_C_BankStatement.COLUMNNAME_StatementDate + " > " + DB.TO_DATE(p_StatementDate, true) );
		//	Optional Bank Account
		if (p_C_BankAccount_ID != 0)
			m_ParameterWhereNotConcilied.append(" AND bs.").append(I_C_BankStatement.COLUMNNAME_C_BankAccount_ID + " = " +p_C_BankAccount_ID);
		//	Optional Organization
		if (p_AD_Org_ID != 0)
			m_ParameterWhereNotConcilied.append("AND ba.AD_Org_ID = " + p_AD_Org_ID);
		
		
		StringBuffer sql = new StringBuffer(SQL_INSERT);
		if(p_DetailsSourceFirst) {
			sql.append("SELECT ")
				.append(getAD_PInstance_ID()).append(",")								//	AD_PInstance
				.append(getAD_Client_ID()).append(",") 									//	AD_Client 
				.append(" ba.AD_Org_ID ").append(",")									//	Organization
				.append(" " + DB.TO_DATE(p_StatementDate, true) + " ").append(",")		//	Created
				.append(getAD_User_ID()).append(",")									//	CreatedBy
				.append(" " + DB.TO_DATE(p_StatementDate, true) + " ").append(",")		//	Updated
				.append(getAD_User_ID()).append(",")									//	UpdatedBy
				.append(" p.IsActive ,");
			if(p_C_Bank_ID != 0)
				sql.append(" " + p_C_Bank_ID + " ").append(",");					//	Bank
			else 
				sql.append(" b.C_Bank_ID ").append(",");							//	Bank 
			//	Bank Account
			if(p_C_BankAccount_ID <= 0)
				sql.append(" p.C_BankAccount_ID ");			
			else
				sql.append(" " + p_C_BankAccount_ID+ " "); 
			sql.append(",");
			sql.append(" NULL C_BankStatement_ID ").append(",")	 						//	C_BanStatement
				.append(" " + DB.TO_DATE(p_StatementDate, true) + " ").append(",") 		//	Statement Date
				.append(" NULL C_BankStatementLine_ID ").append(",")					//	Statement Line
				.append(" p.C_Payment_ID " ).append(",")								//	Payment
				.append(" p.DateTrx ").append(",")										//	Date Acct
				.append(" PayAmt ").append(",")											//	Pay Amount
				.append(" 'N', ")
				.append(" 0  ReconciledAmt,")
				.append(" CASE WHEN p.IsReceipt = 'Y' THEN PayAmt ELSE PayAmt * -1 END AmountNotReconciled, ")
				.append((p_DetailsSourceFirst? "'Y'": "'N'")).append(" DetailsSourceFirst");
			;
			sql.append(" FROM C_Payment p ")
				.append(" INNER JOIN C_BankAccount ba ON (p.C_BankAccount_ID = ba.C_BankAccount_ID) ")
				.append(" INNER JOIN C_Bank b ON (b.C_Bank_ID = ba.C_Bank_ID) ");
		} else {
			sql.append("SELECT ")
				.append(getAD_PInstance_ID()).append(",")								//	AD_PInstance
				.append(getAD_Client_ID()).append(",") 									//	AD_Client 
				.append(" ba.AD_Org_ID ").append(",")									//	Organization
				.append(" " + DB.TO_DATE(p_StatementDate, true) + " ").append(",")		//	Created
				.append(getAD_User_ID()).append(",")									//	CreatedBy
				.append(" " + DB.TO_DATE(p_StatementDate, true) + " ").append(",")		//	Updated
				.append(getAD_User_ID()).append(",")									//	UpdatedBy
				.append(" p.IsActive ,");
			if(p_C_Bank_ID != 0)
				sql.append(" " + p_C_Bank_ID + " ").append(",");						//	Bank
			else 
				sql.append(" b.C_Bank_ID ").append(",");								//	Bank 
			//	Bank Account
			if(p_C_BankAccount_ID <= 0)
				sql.append(" p.C_BankAccount_ID ");			
			else
				sql.append(" " + p_C_BankAccount_ID+ " "); 
			sql.append(",");
			sql.append(" NULL C_BankStatement_ID ").append(",")	 						//	C_BanStatement
				.append(" " + DB.TO_DATE(p_StatementDate, true) + " ").append(",") 		//	Statement Date
				.append(" NULL C_BankStatementLine_ID ").append(",")					//	Statement Line
				.append(" NULL C_Payment_ID " ).append(",")								//	Payment
				.append(" NULL DateTrx ").append(",")									//	Date Acct
				.append(" SUM(p.PayAmt) PayAmt ").append(",")							//	Pay Amount
				.append(" 'N', ")
				.append(" 0  ReconciledAmt,")
				.append(" SUM(CASE WHEN p.IsReceipt = 'Y' THEN PayAmt ELSE PayAmt * -1 END) AmountNotReconciled, ")
				.append((p_DetailsSourceFirst? "'Y'": "'N'")).append(" DetailsSourceFirst");
			sql.append(" FROM C_Payment p ")
				.append(" INNER JOIN C_BankAccount ba ON (p.C_BankAccount_ID = ba.C_BankAccount_ID) ")
				.append(" INNER JOIN C_Bank b ON (b.C_Bank_ID = ba.C_Bank_ID) ");
		}
		//	Where Clause
		sql.append( " WHERE p.AD_Client_ID = " + getAD_Client_ID())
			.append(" AND ((NOT EXISTS (SELECT 1 FROM C_BankStatement bs ")
			.append(" INNER JOIN C_BankAccount ba ON (bs.C_BankAccount_ID = ba.C_BankAccount_ID) " )
			.append(" INNER JOIN C_Bank b ON (ba.C_Bank_ID = b.C_Bank_ID ) ")
			.append(" INNER JOIN C_BankStatementLine bsl ON (bs.C_BankStatement_ID = bsl.C_BankStatement_ID) " )
			.append(" WHERE ")
			.append(" bs.DocStatus IN ('CO','CL','VO','RE') ")
			.append(" AND bsl.C_Payment_ID = p.C_Payment_ID ")
			.append(m_ParameterWhereNotConcilied)
			.append(" ) AND IsReconciled = 'N') OR ( EXISTS (")
			.append(" SELECT 1 ")
			.append(" FROM C_BankStatement bs")
			.append(" INNER JOIN C_BankAccount ba ON (bs.C_BankAccount_ID = ba.C_BankAccount_ID) ")
			.append(" INNER JOIN C_Bank b ON (ba.C_Bank_ID = b.C_Bank_ID ) ")
			.append(" INNER JOIN C_BankStatementLine bsl ON (bs.C_BankStatement_ID = bsl.C_BankStatement_ID)")
			.append(" WHERE ")
			.append(" bs.DocStatus IN ('CO','CL','VO','RE')")
			.append(" AND bsl.C_Payment_ID = p.C_Payment_ID ")
			.append(m_ParameterWhereNotConcilied)
			.append(") AND IsReconciled = 'Y'))" )
			.append(" AND p.DocStatus IN  ('CO','CL','VO','RE') ")
			.append("AND p.DateTrx <= " + DB.TO_DATE(p_StatementDate, true));
		sql.append(p_C_BankAccount_ID > 0 ? " AND p.C_BankAccount_ID = " + p_C_BankAccount_ID + " ": " ") ;
		//	Bank	
		sql.append(p_C_Bank_ID > 0 ? " AND b.C_Bank_ID = " + p_C_Bank_ID: "");
		//	Valid
		if(!p_DetailsSourceFirst) {
			//	Group by Clause
			sql.append(" GROUP BY ba.AD_Org_ID, p.IsActive, b.C_Bank_ID, p.C_BankAccount_ID");
		}
		//	
		int no = DB.executeUpdate(sql.toString(), get_TrxName());
		
		if (no == 0)
			log.fine(sql.toString());
		log.fine("#" + no + " (Bank_ID=" + p_C_Bank_ID + ")");
	}
}
