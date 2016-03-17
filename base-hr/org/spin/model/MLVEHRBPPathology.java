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

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MLVEHRBPPathology extends X_LVE_HR_BPPathology {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2526024916034727621L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 17/07/2014, 23:33:34
	 * @param ctx
	 * @param LVE_HR_BPPathology_ID
	 * @param trxName
	 */
	public MLVEHRBPPathology(Properties ctx, int LVE_HR_BPPathology_ID,
			String trxName) {
		super(ctx, LVE_HR_BPPathology_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 17/07/2014, 23:33:34
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEHRBPPathology(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

}
