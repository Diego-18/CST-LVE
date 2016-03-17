package org.spin.report;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.X_C_Invoice;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * @author Yamel Senih 31/10/2011, 15:02:45
 *
 */
public class AccountStatement extends SvrProcess {

	/**	Organization			*/
	private int 		p_AD_Org_ID = 0;
	/**	Business Partner Group	*/
	//private int			p_C_BP_Group_ID = 0;
	/**	Business Partner		*/
	private int 		p_C_BPartner_ID = 0;
	/**	Documet Date 			*/
	private Timestamp	p_Date = null;
	/** Document Date To		*/
	private Timestamp	p_Date_To = null;
	/**	Documet Date 			*/
	private String		p_IsSOTrx = "";
	/**	Parameter Where Clause	*/
	private StringBuffer		m_parameterWhere = new StringBuffer();
	/**	Start Time				*/
	private long 				m_start = System.currentTimeMillis();
	/**	C_BPartner_Location_ID   */
	private int 				p_C_BPartner_Location_ID = 0;
	/**Is DateAcct Filter*/
	private boolean IsDateAcct = false;
	/** Invoice*/
	private int p_C_Invoice_ID = 0;
	/** Cash*/
	private int p_C_Cash_ID = 0;
	/** Payment*/
	private int p_C_Payment_ID = 0;
	/** Bussiness Partner Group */
	private int p_C_BP_Group_ID = 0;
	private ArrayList<Object> listParam = new ArrayList<Object>();
	@Override
	protected void prepare() {
		for (ProcessInfoParameter para : getParameter())
		{
			String name = para.getParameterName();
			if (para.getParameter() == null && para.getParameter_To() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = para.getParameterAsInt();
			else if (name.equals("C_BP_Group_ID"))
				p_C_BP_Group_ID = para.getParameterAsInt();
			else if (name.equals("C_Invoice_ID"))
				p_C_Invoice_ID = para.getParameterAsInt();
			else if (name.equals("C_Cash_ID"))
				p_C_Cash_ID = para.getParameterAsInt();
			else if (name.equals("C_Payment_ID"))
				p_C_Payment_ID = para.getParameterAsInt();
			else if (name.equals("IsSOTrx"))
				p_IsSOTrx = para.getParameter().toString();
			else if (name.equals("DateDoc")){
				p_Date = (Timestamp)para.getParameter();
				p_Date_To = (Timestamp)para.getParameter_To();
			}
			else if (name.equals("DateAcct")){
				IsDateAcct = true;
				p_Date = (Timestamp)para.getParameter();
				p_Date_To = (Timestamp)para.getParameter_To();
			}
			else if (name.equals("C_BPartner_Location_ID"))
				p_C_BPartner_Location_ID = para.getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		//	Current Date when Date To is Null
		//if(p_Date_To== null){
		//	p_Date_To = new Timestamp(System.currentTimeMillis());
		//}
		
		m_parameterWhere.append("stmt.AD_Client_ID=?");
		// AND stmt.DocBaseType IN ('ARI','API','APP','ARR','CMC','CMA') 
		m_parameterWhere.append(" AND DocStatus IN ('CO','CL')");
		
		listParam.add(getAD_Client_ID());
		
		if (p_C_BPartner_ID != 0){
			m_parameterWhere.append(" AND stmt.C_BPartner_ID = ?" );
			listParam.add(p_C_BPartner_ID);
		}
		
		//	Optional Org
		if (p_AD_Org_ID != 0){
			m_parameterWhere.append(" AND stmt.AD_Org_ID = ?" );
			listParam.add(p_AD_Org_ID);
		}
		if (p_C_BPartner_Location_ID != 0){
			m_parameterWhere.append(" AND stmt.C_BPartner_Location_ID = ?");
			listParam.add(p_C_BPartner_Location_ID);
		}
		
		if (p_IsSOTrx!=null && !p_IsSOTrx.equals("")){
			m_parameterWhere.append(" AND stmt.IsSOTrx = ?");
			listParam.add(p_IsSOTrx);
		}
		
		if (p_C_Invoice_ID!=0){
			m_parameterWhere.append(" AND stmt.C_Invoice_ID = ?");
			listParam.add(p_C_Invoice_ID);
		}
		
		if (p_C_Cash_ID!=0){
			m_parameterWhere.append(" AND stmt.C_Cash_ID = ?");
			listParam.add(p_C_Cash_ID);
		}
		
		if (p_C_Payment_ID!=0){
			m_parameterWhere.append(" AND stmt.C_Payment_ID = ?");
			listParam.add(p_C_Payment_ID);
		}
		
		if (p_C_BP_Group_ID!=0){
			m_parameterWhere.append(" AND stmt.C_BP_Group_ID = ?");
			listParam.add(p_C_BP_Group_ID);
		}
		if (p_Date!=null){
			listParam.add(p_Date);
		}
		if (p_Date_To!=null){
			listParam.add(p_Date_To);
		}
		
		
	}	//	prepare
	

	@Override
	protected String doIt(){
		StringBuffer sql = new StringBuffer();
		//Header
		if (p_Date!=null){
			sql.append("SELECT " +
					"stmt.AD_Client_ID," +
					p_AD_Org_ID + " AD_Org_ID, " +
					"stmt.C_BPartner_ID, " +
					p_C_BPartner_Location_ID + " C_BPartner_Location_ID," +
					"'" + Msg.translate(getCtx(), "PreviousBalance") + "' ParentDocumentNo," +
					"'" + Msg.translate(getCtx(), "PreviousBalance") + "' AffectedDocumentNo," +
					DB.TO_DATE(p_Date, true) + " DateDoc," +
					DB.TO_DATE(p_Date, true) + " DateAcct," +
					"'' DocBaseType ," +
					"SUM(stmt.Debit) Debit," +
					"SUM(stmt.Credit) Credit," +
					"SUM(stmt.Balance) Balance," +
					"0 C_Invoice_ID," +
					"0 C_Payment_ID," +
					"0 C_Cash_ID," +
					"0 C_CashLine_ID, " +
					"5 SeqNo, " +
					"'" + Msg.translate(getCtx(), "PreviousBalance") + "' DocumentNo, " +
					"'" + X_C_Invoice.DOCSTATUS_Completed+"' DocStatus, " +
					"'"+p_IsSOTrx +"' IsSOTrx, " + 
					getAD_PInstance_ID() + " AD_PInstance_ID, " +
					"'' OrigBaseType, " +
					"'' AffectedBaseType, " +
					"bp.C_BP_Group_ID ");
			sql.append("FROM RV_AccountStatement stmt INNER JOIN C_BPartner bp ON (stmt.C_BPartner_ID = bp.C_BPartner_ID) WHERE ");
			sql.append(m_parameterWhere);
			
					//"AND doc.DocBaseType NOT IN('ARC', 'APC') " + 
			if (IsDateAcct)
				sql.append(" AND stmt.DateAcct < ? ");
			else
				sql.append(" AND stmt.DateDoc < ? ");
			
			//	Clause Where Add
			//	Group By
			sql.append(" GROUP BY stmt.AD_Client_ID,bp.C_BP_Group_ID,stmt.C_BPartner_ID ");
			
			//	Union
			sql.append(" UNION ALL ");
		}//Header
		
		//Body
		sql.append("SELECT " +
				"stmt.AD_Client_ID," +
				"stmt.AD_Org_ID, " +
				"stmt.C_BPartner_ID, " +
				"stmt.C_BPartner_Location_ID," +
				"stmt.ParentDocumentNo," +
				"stmt.AffectedDocumentNo," +
				"stmt.DateDoc," +
				"stmt.DateAcct," +
				"stmt.DocBaseType ," +
				"stmt.Debit," +
				"stmt.Credit," +
				"stmt.Balance," +
				"stmt.C_Invoice_ID," +
				"stmt.C_Payment_ID," +
				"stmt.C_Cash_ID," +
				"stmt.C_CashLine_ID, " +
				"stmt.SeqNo, " +
				"stmt.DocumentNo, " +
				"stmt.DocStatus, " +
				"stmt.IsSOTrx, " + 
				getAD_PInstance_ID() + " AD_PInstance_ID, " +
				"stmt.OrigBaseType, " +
				"stmt.AffectedBaseType," +
				"bp.C_BP_Group_ID ");
		sql.append("FROM  RV_AccountStatement stmt INNER JOIN C_BPartner bp ON (stmt.C_BPartner_ID = bp.C_BPartner_ID) WHERE ");
		sql.append(m_parameterWhere);
		
		
		if (IsDateAcct){
			if (p_Date!=null)
				sql.append(" AND stmt.DateAcct >= ? ");
			if (p_Date_To!=null)
				sql.append(" AND stmt.DateAcct <= ?");
		}
		else{
			if (p_Date!=null)
				sql.append(" AND stmt.DateDoc >= ? ");
			if (p_Date_To!=null)
				sql.append(" AND stmt.DateDoc <= ? ");
		}
//		Dixon Martinez 2015-09-04
//		Add group by AD_Client_ID
		sql.append("ORDER BY AD_Client_ID, C_BP_Group_ID,C_BPartner_ID");
//		End Dixon Martinez
		
		if (IsDateAcct)
			sql.append(",DateAcct");
		else
			sql.append(",DateDoc");
		
		sql.append(",SeqNo");
		
		log.fine("SQL = " + sql.toString());
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
			int index = 0;
			if (p_Date!=null){
				index = listParam.size() -1;
				for (int i=0; i<index; i++) {
					pstmt.setObject(i+1, listParam.get(i));
				}
			}
			for (Object object : listParam) {
				index++;
				pstmt.setObject(index, object);
			}
			
				
			
			//	Evaluation
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				BigDecimal v_Debit = Env.ZERO;
				//BigDecimal v_DebitSumm = Env.ZERO;
				BigDecimal v_Credit = Env.ZERO;
				//BigDecimal v_CreditSumm = Env.ZERO;
				BigDecimal v_Balance = Env.ZERO;
				BigDecimal v_LinealBalance = Env.ZERO;
				int v_C_BPartner_ID = 0;
				do {
					v_Debit = rs.getBigDecimal("Debit");
					v_Credit = rs.getBigDecimal("Credit");
					
					if (v_C_BPartner_ID!=rs.getInt("C_BPartner_ID")){
						v_C_BPartner_ID = rs.getInt("C_BPartner_ID");
						v_LinealBalance = Env.ZERO;
						v_Balance = Env.ZERO;
					}
					//	Summary End Balance
					//v_DebitSumm = v_DebitSumm.add(v_Debit);
					//v_CreditSumm = v_CreditSumm.add(v_Credit);
					
					//	Calculo de Balance
					v_LinealBalance = v_Debit.subtract(v_Credit);
					v_Balance = v_Balance.add(v_LinealBalance);
					
					//	Sql Insert
					
					
					String sqlInsert = new String("INSERT INTO T_LVE_AccountStatement(" +
							"AD_Client_ID, " +
							"AD_Org_ID, " +
							"C_BPartner_ID, " +
							"C_BPartner_Location_ID,"+
							"ParentDocumentNo, " +
							"AffectedDocumentNo, " +
							"DateDoc, " +
							"DateAcct, " +
							"DocBaseType, " +
							"Debit, " +
							"Credit, " +
							"LinealBalance, " +
							"Balance, " +
							"C_Invoice_ID, " +
							"C_Payment_ID, " +
							"C_Cash_ID, " +
							"C_CashLine_ID, " +
							"SeqNo, " +
							"DocumentNo, " +
							"DocStatus, " +
							"IsSOTrx," +
							"AD_PInstance_ID,"+
							"OrigBaseType," +
							"AffectedBaseType) " +
							"VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
					DB.executeUpdate (sqlInsert,
							new Object[]{
							getAD_Client_ID(),
							rs.getInt("AD_Org_ID"),
							rs.getInt("C_BPartner_ID"),
							rs.getInt("C_BPartner_Location_ID"),
							rs.getString("ParentDocumentNo"),
							rs.getString("AffectedDocumentNo"),
							rs.getTimestamp("DateDoc"),
							rs.getTimestamp("DateAcct"),
							rs.getString("DocBaseType"),
							v_Debit,
							v_Credit,
							v_LinealBalance,
							v_Balance,
							rs.getInt("C_Invoice_ID"),
							rs.getInt("C_Payment_ID"),
							rs.getInt("C_Cash_ID"),
							rs.getInt("C_CashLine_ID"),
							rs.getInt("SeqNo"),
							rs.getString("DocumentNo"),
							rs.getString("DocStatus"),
							(rs.getString("IsSOTrx")== null ? 'N' : rs.getString("IsSOTrx")),
							getAD_PInstance_ID(),
							rs.getString("OrigBaseType"),
							rs.getString("AffectedBaseType")
							}
							, false, get_TrxName());
					
				} while(rs.next());
			}
			
	
		} catch(Exception e){
			throw new AdempiereException(e);
		}
		finally{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}

		log.fine((System.currentTimeMillis() - m_start) + " ms");
		
		return "@Created@ = ";// + noInserts;
	}	//	doIt
}
