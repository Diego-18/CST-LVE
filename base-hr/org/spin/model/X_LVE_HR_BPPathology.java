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

/** Generated Model for LVE_HR_BPPathology
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS (1252452765) - $Id$ */
public class X_LVE_HR_BPPathology extends PO implements I_LVE_HR_BPPathology, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150119L;

    /** Standard Constructor */
    public X_LVE_HR_BPPathology (Properties ctx, int LVE_HR_BPPathology_ID, String trxName)
    {
      super (ctx, LVE_HR_BPPathology_ID, trxName);
      /** if (LVE_HR_BPPathology_ID == 0)
        {
			setC_BPartner_ID (0);
			setLVE_HR_BPPathology_ID (0);
			setLVE_HR_Pathology_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LVE_HR_BPPathology (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_HR_BPPathology[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_BPartner getC_BPartner() throws RuntimeException
    {
		return (org.compiere.model.I_C_BPartner)MTable.get(getCtx(), org.compiere.model.I_C_BPartner.Table_Name)
			.getPO(getC_BPartner_ID(), get_TrxName());	}

	/** Set Business Partner .
		@param C_BPartner_ID 
		Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID)
	{
		if (C_BPartner_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
	}

	/** Get Business Partner .
		@return Identifies a Business Partner
	  */
	public int getC_BPartner_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BPartner_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	/** Set Business Partner Pathology.
		@param LVE_HR_BPPathology_ID Business Partner Pathology	  */
	public void setLVE_HR_BPPathology_ID (int LVE_HR_BPPathology_ID)
	{
		if (LVE_HR_BPPathology_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_BPPathology_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_BPPathology_ID, Integer.valueOf(LVE_HR_BPPathology_ID));
	}

	/** Get Business Partner Pathology.
		@return Business Partner Pathology	  */
	public int getLVE_HR_BPPathology_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_HR_BPPathology_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_LVE_HR_Pathology getLVE_HR_Pathology() throws RuntimeException
    {
		return (org.spin.model.I_LVE_HR_Pathology)MTable.get(getCtx(), org.spin.model.I_LVE_HR_Pathology.Table_Name)
			.getPO(getLVE_HR_Pathology_ID(), get_TrxName());	}

	/** Set Pathology.
		@param LVE_HR_Pathology_ID Pathology	  */
	public void setLVE_HR_Pathology_ID (int LVE_HR_Pathology_ID)
	{
		if (LVE_HR_Pathology_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_Pathology_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_Pathology_ID, Integer.valueOf(LVE_HR_Pathology_ID));
	}

	/** Get Pathology.
		@return Pathology	  */
	public int getLVE_HR_Pathology_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_HR_Pathology_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}