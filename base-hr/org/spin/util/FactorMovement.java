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
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.util;

import org.eevolution.model.MHRAttribute;
import org.eevolution.model.MHRMovement;
import org.eevolution.model.X_HR_Concept;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class FactorMovement {

	private MHRMovement movement = null;
	private MHRAttribute attribute = null;
	
	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 12/10/2013, 15:30:43
	 */
	public FactorMovement(MHRMovement movement, MHRAttribute attribute) {
		this.movement = movement;
		this.attribute = attribute;
	}
	
	/**
	 * Get Movement
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 12/10/2013, 15:34:19
	 * @return
	 * @return MHRMovement
	 */
	public MHRMovement getHR_Movement(){
		return movement;
	}

	/**
	 * Get Attribute
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 12/10/2013, 15:35:16
	 * @return
	 * @return MHRAttribute
	 */
	public MHRAttribute getHR_Attribute(){
		return attribute;
	}
	
	/**
	 * Get Movement on Double format
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/01/2014, 09:03:33
	 * @return
	 * @return double
	 */
	public double getDoubleMovement(){
		if(movement == null)
			return 0;
		double amt = 0;
		String columntype = movement.getColumnType();
		if(columntype.equals(X_HR_Concept.COLUMNTYPE_Amount))
			amt = movement.getAmount().doubleValue();
		else if(columntype.equals(X_HR_Concept.COLUMNTYPE_Quantity))
			amt = movement.getQty().doubleValue();
		return amt;
	}
	
	/**
	 * Get Attribute on Double
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/01/2014, 09:06:10
	 * @return
	 * @return double
	 */ 
	public double getDoubleAttribute(){
		if(attribute == null)
			return 0;
		double amt = 0;
		String columntype = attribute.getColumnType();
		if(columntype.equals(X_HR_Concept.COLUMNTYPE_Amount))
			amt = attribute.getAmount().doubleValue();
		else if(columntype.equals(X_HR_Concept.COLUMNTYPE_Quantity))
			amt = attribute.getQty().doubleValue();
		return amt;
	}
}
