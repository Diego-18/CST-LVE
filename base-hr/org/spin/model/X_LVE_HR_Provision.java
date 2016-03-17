/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
/** Generated Model - DO NOT CHANGE */
package org.spin.model;

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Model for LVE_HR_Provision
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS (1252452765) - $Id$ */
public class X_LVE_HR_Provision extends PO implements I_LVE_HR_Provision, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150119L;

    /** Standard Constructor */
    public X_LVE_HR_Provision (Properties ctx, int LVE_HR_Provision_ID, String trxName)
    {
      super (ctx, LVE_HR_Provision_ID, trxName);
      /** if (LVE_HR_Provision_ID == 0)
        {
			setLVE_HR_Provision_ID (0);
			setLVE_HR_ProvisionType_ID (0);
			setName (null);
			setType (null);
// H
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_LVE_HR_Provision (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LVE_HR_Provision[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** Set Provision.
		@param LVE_HR_Provision_ID Provision	  */
	public void setLVE_HR_Provision_ID (int LVE_HR_Provision_ID)
	{
		if (LVE_HR_Provision_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_Provision_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_Provision_ID, Integer.valueOf(LVE_HR_Provision_ID));
	}

	/** Get Provision.
		@return Provision	  */
	public int getLVE_HR_Provision_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_HR_Provision_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_LVE_HR_ProvisionType getLVE_HR_ProvisionType() throws RuntimeException
    {
		return (org.spin.model.I_LVE_HR_ProvisionType)MTable.get(getCtx(), org.spin.model.I_LVE_HR_ProvisionType.Table_Name)
			.getPO(getLVE_HR_ProvisionType_ID(), get_TrxName());	}

	/** Set Provision Type.
		@param LVE_HR_ProvisionType_ID Provision Type	  */
	public void setLVE_HR_ProvisionType_ID (int LVE_HR_ProvisionType_ID)
	{
		if (LVE_HR_ProvisionType_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_ProvisionType_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_ProvisionType_ID, Integer.valueOf(LVE_HR_ProvisionType_ID));
	}

	/** Get Provision Type.
		@return Provision Type	  */
	public int getLVE_HR_ProvisionType_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_HR_ProvisionType_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException
    {
		return (org.compiere.model.I_M_Product)MTable.get(getCtx(), org.compiere.model.I_M_Product.Table_Name)
			.getPO(getM_Product_ID(), get_TrxName());	}

	/** Set Product.
		@param M_Product_ID 
		Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID)
	{
		if (M_Product_ID < 1) 
			set_Value (COLUMNNAME_M_Product_ID, null);
		else 
			set_Value (COLUMNNAME_M_Product_ID, Integer.valueOf(M_Product_ID));
	}

	/** Get Product.
		@return Product, Service, Item
	  */
	public int getM_Product_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Product_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

	/** Type AD_Reference_ID=53709 */
	public static final int TYPE_AD_Reference_ID=53709;
	/** Pants = P */
	public static final String TYPE_Pants = "P";
	/** Shirt = H */
	public static final String TYPE_Shirt = "H";
	/** Shoe = S */
	public static final String TYPE_Shoe = "S";
	/** Jacket = J */
	public static final String TYPE_Jacket = "J";
	/** Other = O */
	public static final String TYPE_Other = "O";
	/** Set Type.
		@param Type 
		Type of Validation (SQL, Java Script, Java Language)
	  */
	public void setType (String Type)
	{

		set_Value (COLUMNNAME_Type, Type);
	}

	/** Get Type.
		@return Type of Validation (SQL, Java Script, Java Language)
	  */
	public String getType () 
	{
		return (String)get_Value(COLUMNNAME_Type);
	}

	/** Set Search Key.
		@param Value 
		Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value)
	{
		set_Value (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue () 
	{
		return (String)get_Value(COLUMNNAME_Value);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getValue());
    }
}