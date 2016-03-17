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
import org.compiere.model.MProduct;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class CalloutProvision extends CalloutEngine {

	/**
	 * Set Provision Values from Product
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 09/07/2014, 23:18:21
	 * @param ctx
	 * @param WindowNo
	 * @param mTab
	 * @param mField
	 * @param value
	 * @return
	 * @return String
	 */
	public String product (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value){
		Integer p_M_Product_ID = (Integer) value;
		if(p_M_Product_ID == null || p_M_Product_ID.intValue() == 0)
			return "";
		//	Get Product
		MProduct product = MProduct.get(ctx, p_M_Product_ID);
		//	Set Values
		String valueP = (String) mTab.getValue("Value");
		String nameP = (String) mTab.getValue("Name");
		String descriptionP = (String) mTab.getValue("Description");
		//	Set Value
		if(valueP == null
				|| valueP.length() == 0)
			mTab.setValue("Value", product.getValue());
		//	Set Name
		if(nameP == null
				|| nameP.length() == 0)
			mTab.setValue("Name", product.getName());
		//	Set Description
		if(descriptionP == null
				|| descriptionP.length() == 0)
			mTab.setValue("Description", product.getDescription());
		//	Ok
		return "";
	}

}
