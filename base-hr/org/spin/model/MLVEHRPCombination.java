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
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.compiere.model.Query;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MLVEHRPCombination extends X_LVE_HR_P_Combination {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2998951820555815670L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/07/2014, 23:45:26
	 * @param ctx
	 * @param LVE_HR_P_Combination_ID
	 * @param trxName
	 */
	public MLVEHRPCombination(Properties ctx, int LVE_HR_P_Combination_ID,
			String trxName) {
		super(ctx, LVE_HR_P_Combination_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/07/2014, 23:45:26
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEHRPCombination(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * Get Provision Combination
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/07/2014, 23:50:41
	 * @param ctx
	 * @param p_HR_Department_ID
	 * @param p_HR_Job_ID
	 * @param p_C_BPartner_ID
	 * @param p_HR_Payroll_ID
	 * @param trxName
	 * @return
	 * @return MLVEHRPCombination[]
	 */
	public static MLVEHRPCombination[] get(Properties ctx, int p_HR_Department_ID, 
			int p_HR_Job_ID, int p_C_BPartner_ID, int p_HR_Payroll_ID, String trxName) {
		//	Where Clause
		StringBuffer whereClause = new StringBuffer();
		//	Parameters
		ArrayList<Object> params = new ArrayList<Object>();
		//	Valid
		if(p_C_BPartner_ID != 0) {				//	Business Partner
			whereClause.append(I_LVE_HR_P_Combination.COLUMNNAME_C_BPartner_ID).append("= ?");
			params.add(p_C_BPartner_ID);
		} else if(p_HR_Job_ID != 0) {			//	Job
			whereClause.append(I_LVE_HR_P_Combination.COLUMNNAME_HR_Job_ID).append("= ?");
			params.add(p_HR_Job_ID);
		} else if(p_HR_Department_ID != 0) {	//	Department
			whereClause.append(I_LVE_HR_P_Combination.COLUMNNAME_HR_Department_ID).append("= ?");
			params.add(p_HR_Department_ID);
		}
		//	Valid Payroll
		if(p_HR_Payroll_ID != 0) {
			//	Add And
			if(whereClause.length() > 0)
				whereClause.append(" AND ");
			//	
			whereClause.append("(").append(I_LVE_HR_P_Combination.COLUMNNAME_HR_Payroll_ID).append("= ? ")
								.append("OR ").append(I_LVE_HR_P_Combination.COLUMNNAME_HR_Payroll_ID).append(" IS NULL").append(")");
			params.add(p_HR_Payroll_ID);
		}
		
		//	Get Combination
		List<MLVEHRPCombination> list = new Query(ctx, I_LVE_HR_P_Combination.Table_Name, whereClause.toString(), trxName)
				.setParameters(params)
				.setOnlyActiveRecords(true)
				.<MLVEHRPCombination>list();
		//	Convert to Array
		MLVEHRPCombination [] combinations = new MLVEHRPCombination[list.size()];
		list.toArray(combinations);
		//	Return
		return combinations;
	}
	
	/**
	 * Get Of Department
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/07/2014, 23:57:02
	 * @param ctx
	 * @param p_HR_Department_ID
	 * @param p_HR_Payroll_ID
	 * @param trxName
	 * @return
	 * @return MLVEHRPCombination[]
	 */
	public static MLVEHRPCombination[] getOfDepartment(Properties ctx, int p_HR_Department_ID, int p_HR_Payroll_ID, String trxName) {
		return get(ctx, p_HR_Department_ID, 0, 0, p_HR_Payroll_ID, trxName);
	}
	
	/**
	 * Get Of Job
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/07/2014, 23:57:36
	 * @param ctx
	 * @param p_HR_Job_ID
	 * @param p_HR_Payroll_ID
	 * @param trxName
	 * @return
	 * @return MLVEHRPCombination[]
	 */
	public static MLVEHRPCombination[] getOfJob(Properties ctx, int p_HR_Job_ID, int p_HR_Payroll_ID, String trxName) {
		return get(ctx, 0, p_HR_Job_ID, 0, p_HR_Payroll_ID, trxName);
	}
	
	/**
	 * Get Of Business Partner
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/07/2014, 23:58:11
	 * @param ctx
	 * @param p_C_BPartner_ID
	 * @param p_HR_Payroll_ID
	 * @param trxName
	 * @return
	 * @return MLVEHRPCombination[]
	 */
	public static MLVEHRPCombination[] getOfBPartner(Properties ctx, int p_C_BPartner_ID, int p_HR_Payroll_ID, String trxName) {
		return get(ctx, 0, 0, p_C_BPartner_ID, p_HR_Payroll_ID, trxName);
	}
}
