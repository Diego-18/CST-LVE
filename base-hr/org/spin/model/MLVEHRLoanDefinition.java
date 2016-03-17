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

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.MTax;
import org.compiere.model.Query;
import org.compiere.util.CCache;
import org.compiere.util.Env;
import org.compiere.util.Util;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MLVEHRLoanDefinition extends X_LVE_HR_LoanDefinition {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9192833862903218780L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 16:46:40
	 * @param ctx
	 * @param LVE_HR_LoanDefinition_ID
	 * @param trxName
	 */
	public MLVEHRLoanDefinition(Properties ctx, int LVE_HR_LoanDefinition_ID,
			String trxName) {
		super(ctx, LVE_HR_LoanDefinition_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 16:46:41
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEHRLoanDefinition(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/** Cache */
	private static CCache<Integer, MLVEHRLoanDefinition> s_cache = new CCache<Integer, MLVEHRLoanDefinition>(Table_Name, 100);
	/** Cache by Value */
	private static CCache<String, MLVEHRLoanDefinition> s_cacheValue = new CCache<String, MLVEHRLoanDefinition>(Table_Name+"_Value", 100);
	
	/**
	 * Get Tax Amount
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 22:59:36
	 * @return
	 * @return double
	 */
	public double getTaxAmt() {
		if(getC_Tax_ID() == 0)
			return 0.0;
		//	
		MTax tax = MTax.get(getCtx(), getC_Tax_ID());
		//	Get Rate
		BigDecimal rate = tax.getRate();
		if(rate == null)
			return 0.0;
		//	
		return rate.doubleValue();
	}
	
	/**
	 * Get from Value
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/06/2014, 22:29:28
	 * @param ctx
	 * @param value
	 * @return
	 * @return MLVEHRLoanDefinition
	 */
	public static MLVEHRLoanDefinition forValue(Properties ctx, String value) {
		if (Util.isEmpty(value, true)) {
			return null;
		}
		
		int AD_Client_ID = Env.getAD_Client_ID(ctx);
		final String key = AD_Client_ID+"#"+value;
		MLVEHRLoanDefinition loanDefinition = s_cacheValue.get(key);
		if (loanDefinition != null) {
			return loanDefinition;
		}
		
		final String whereClause = COLUMNNAME_Value+"=? AND AD_Client_ID IN (?,?)"; 
		loanDefinition = new Query(ctx, Table_Name, whereClause, null)
							.setParameters(new Object[]{value, 0, AD_Client_ID})
							.setOnlyActiveRecords(true)
							.setOrderBy("AD_Client_ID DESC")
							.first();
		if (loanDefinition != null) {
			s_cacheValue.put(key, loanDefinition);
			s_cache.put(loanDefinition.get_ID(), loanDefinition);
		}
		return loanDefinition;
	}
	
	/**
	 * Get from ID
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jan 19, 2015, 10:22:21 PM
	 * @param ctx
	 * @param p_LVE_HR_LoanDefinition_ID
	 * @return
	 * @return MLVEHRLoanDefinition
	 */
	public static MLVEHRLoanDefinition get(Properties ctx, int p_LVE_HR_LoanDefinition_ID) {
		if (p_LVE_HR_LoanDefinition_ID <= 0) {
			return null;
		}
		
		int AD_Client_ID = Env.getAD_Client_ID(ctx);
		final String key = AD_Client_ID+"#"+p_LVE_HR_LoanDefinition_ID;
		MLVEHRLoanDefinition loanDefinition = s_cacheValue.get(key);
		if (loanDefinition != null) {
			return loanDefinition;
		}
		
		final String whereClause = COLUMNNAME_LVE_HR_LoanDefinition_ID+"=? AND AD_Client_ID IN (?,?)"; 
		loanDefinition = new Query(ctx, Table_Name, whereClause, null)
							.setParameters(new Object[]{p_LVE_HR_LoanDefinition_ID, 0, AD_Client_ID})
							.setOnlyActiveRecords(true)
							.setOrderBy("AD_Client_ID DESC")
							.first();
		if (loanDefinition != null) {
			s_cacheValue.put(key, loanDefinition);
			s_cache.put(loanDefinition.get_ID(), loanDefinition);
		}
		return loanDefinition;
	}
}
