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

import org.compiere.model.Query;
import org.compiere.util.CCache;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MLVEHRBPMeasures extends X_LVE_HR_BPMeasures {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1689562614350258726L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 17/07/2014, 23:32:29
	 * @param ctx
	 * @param LVE_HR_BPMeasures_ID
	 * @param trxName
	 */
	public MLVEHRBPMeasures(Properties ctx, int LVE_HR_BPMeasures_ID,
			String trxName) {
		super(ctx, LVE_HR_BPMeasures_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 17/07/2014, 23:32:29
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEHRBPMeasures(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/** Cache */
	private static CCache<String, MLVEHRBPMeasures> s_cache = new CCache<String, MLVEHRBPMeasures>(Table_Name, 100);
	
	
	/**
	 * Get Business Partner Measure from Type
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 17/07/2014, 23:40:00
	 * @param ctx
	 * @param p_C_BPartner_ID
	 * @param p_Type
	 * @return
	 * @return MLVEHRBPMeasures
	 */
	public static MLVEHRBPMeasures get(Properties ctx, int p_C_BPartner_ID, String p_Type) { 
		//	Valid Type
		if(p_Type == null
				|| p_Type.length() == 0)
			return null;
		int AD_Client_ID = Env.getAD_Client_ID(ctx);
		MLVEHRBPMeasures bpMeasure = s_cache.get(p_C_BPartner_ID + p_Type);
		if (bpMeasure != null) {
			return bpMeasure;
		}
		//	Where Clause
		final String whereClause = COLUMNNAME_C_BPartner_ID + "=? AND " 
										+ COLUMNNAME_Type + "=? AND AD_Client_ID IN (?,?)"; 
		bpMeasure = new Query(ctx, Table_Name, whereClause, null)
							.setParameters(new Object[]{p_C_BPartner_ID, p_Type, 0, AD_Client_ID})
							.setOnlyActiveRecords(true)
							.setOrderBy("AD_Client_ID DESC")
							.first();
		//	Put in Cache
		if (bpMeasure != null) {
			s_cache.put(bpMeasure.get_ID() + p_Type, bpMeasure);
		}
		//	Return
		return bpMeasure;
	}

}
