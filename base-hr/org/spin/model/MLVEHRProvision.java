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

import org.compiere.util.CCache;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MLVEHRProvision extends X_LVE_HR_Provision {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6951532376617159160L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/07/2014, 23:44:30
	 * @param ctx
	 * @param LVE_HR_Provision_ID
	 * @param trxName
	 */
	public MLVEHRProvision(Properties ctx, int LVE_HR_Provision_ID,
			String trxName) {
		super(ctx, LVE_HR_Provision_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/07/2014, 23:44:30
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEHRProvision(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/** Cache */
	private static CCache<Integer, MLVEHRProvision> s_cache = new CCache<Integer, MLVEHRProvision>(Table_Name, 100);
	
	/**
	 * Get Provision from Identifier
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 08/07/2014, 00:10:54
	 * @param ctx
	 * @param p_LVE_HR_Provision_ID
	 * @return
	 * @return MLVEHRProvision
	 */
	public static MLVEHRProvision getProvisionWrapper(Properties ctx, int p_LVE_HR_Provision_ID) { 
		//	Valid ID
		if(p_LVE_HR_Provision_ID == 0)
			return null;
		//	Get from Cache
		MLVEHRProvision provision = s_cache.get(p_LVE_HR_Provision_ID);
		if (provision != null) {
			return provision;
		}
		//	Get DB
		provision = new MLVEHRProvision(ctx, p_LVE_HR_Provision_ID, null);
		// Put in Cache
		s_cache.put(provision.get_ID(), provision);
		//	Return
		return provision;
	}
	
	/**
	 * Add for Use Cache
	 */
	
	/**	Quantity				*/
	private BigDecimal 	m_Qty 						= null;
	/**	Provision Combination	*/
	private int 		m_LVE_HR_P_Combination_ID 	= 0;
	
	/**
	 * Set Quantity
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/07/2014, 00:15:12
	 * @param Qty
	 * @return void
	 */
	public void setQty(BigDecimal Qty) {
		m_Qty = Qty;
	}
	
	/**
	 * Get Quantity
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 18/07/2014, 00:15:51
	 * @return
	 * @return BigDecimal
	 */
	public BigDecimal getQty() {
		return m_Qty;
	}

	/**
	 * Set Provision Cobination
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 20/07/2014, 11:32:22
	 * @param LVE_HR_P_Combination_ID
	 * @return void
	 */
	public void setLVE_HR_P_Combination_ID(int LVE_HR_P_Combination_ID) {
		m_LVE_HR_P_Combination_ID = LVE_HR_P_Combination_ID;
	}
	
	/**
	 * Get Provision Combination
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 20/07/2014, 11:32:54
	 * @return
	 * @return int
	 */
	public int getLVE_HR_P_Combination_ID() {
		return m_LVE_HR_P_Combination_ID;
	}
	
}
