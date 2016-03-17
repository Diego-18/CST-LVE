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
 
import java.util.Properties;

import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.util.DB;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CalloutGLJournalLine extends CalloutEngine {

	public String businesPartner (Properties ctx, int WindowNo,
			GridTab mTab, GridField mField, Object value) {
		//	Validate Call Out is Active
		if(isCalloutActive() 
				|| value == null)
			return "";
		//	Get id of valid combination
		Integer p_C_ValidCombination_ID = (Integer) value; 
		//	Valid valid combination > 0
		if(p_C_ValidCombination_ID == 0)
			return "";
		//	Prepared Sql
		String sql = "SELECT C_BPartner_ID FROM C_ValidCombination WHERE C_ValidCombination_ID = ?";
		//	Get ID Business Partner of DB
		Integer p_CB_Partner_ID = DB.getSQLValue(null, sql, p_C_ValidCombination_ID); 
		//	Valid ID Business Partner > 0
		if(p_CB_Partner_ID == 0)
			return "";
		//	Set Value
		mTab.setValue("C_BPartner_ID", p_CB_Partner_ID);
		
		return "";
	}//	End businessPartner

}

