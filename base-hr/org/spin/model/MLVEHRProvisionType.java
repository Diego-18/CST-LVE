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
import java.util.List;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.CCache;
import org.compiere.util.Env;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MLVEHRProvisionType extends X_LVE_HR_ProvisionType {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6881454070011378851L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/07/2014, 23:43:44
	 * @param ctx
	 * @param LVE_HR_ProvisionType_ID
	 * @param trxName
	 */
	public MLVEHRProvisionType(Properties ctx, int LVE_HR_ProvisionType_ID,
			String trxName) {
		super(ctx, LVE_HR_ProvisionType_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/07/2014, 23:43:44
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEHRProvisionType(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/** Cache */
	private static CCache<Integer, MLVEHRProvisionType> s_cache = new CCache<Integer, MLVEHRProvisionType>(Table_Name, 100);
	
	/**
	 * Get Provision Type from Identifier
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 08/07/2014, 00:08:26
	 * @param ctx
	 * @param p_LVE_HR_ProvisionType_ID
	 * @return
	 * @return MLVEHRProvisionType
	 */
	public static MLVEHRProvisionType get(Properties ctx, int p_LVE_HR_ProvisionType_ID) { 
		int AD_Client_ID = Env.getAD_Client_ID(ctx);
		MLVEHRProvisionType provisionType = s_cache.get(p_LVE_HR_ProvisionType_ID);
		if (provisionType != null) {
			return provisionType;
		}
		
		final String whereClause = COLUMNNAME_LVE_HR_ProvisionType_ID+"=? AND AD_Client_ID IN (?,?)"; 
		provisionType = new Query(ctx, Table_Name, whereClause, null)
							.setParameters(new Object[]{p_LVE_HR_ProvisionType_ID, 0, AD_Client_ID})
							.setOnlyActiveRecords(true)
							.setOrderBy("AD_Client_ID DESC")
							.first();
		if (provisionType != null) {
			s_cache.put(provisionType.get_ID(), provisionType);
		}
		//	Return
		return provisionType;
	}
	
	/**
	 * Get Provision from Provision Type
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 10/07/2014, 00:21:31
	 * @param ctx
	 * @param p_LVE_HR_ProvisionType_ID
	 * @return
	 * @return MLVEHRProvision[]
	 */
	public static MLVEHRProvision [] getProvisionLineWrapper(Properties ctx, int p_LVE_HR_ProvisionType_ID) {
		//	Get Combination
		List<MLVEHRProvision> list = new Query(ctx, I_LVE_HR_Provision.Table_Name, 
				I_LVE_HR_Provision.COLUMNNAME_LVE_HR_ProvisionType_ID + "=?", null)
				.setParameters(p_LVE_HR_ProvisionType_ID)
				.setOnlyActiveRecords(true)
				.<MLVEHRProvision>list();
		//	Convert to Array
		MLVEHRProvision [] provision = new MLVEHRProvision[list.size()];
		list.toArray(provision);
		//	Return
		return provision;
	}	
}
