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
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LVE_HR_DM_Combination
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS (1252452765) - $Id$ */
public class X_LVE_HR_DM_Combination extends PO implements I_LVE_HR_DM_Combination, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150119L;

    /** Standard Constructor */
    public X_LVE_HR_DM_Combination (Properties ctx, int LVE_HR_DM_Combination_ID, String trxName)
    {
      super (ctx, LVE_HR_DM_Combination_ID, trxName);
      /** if (LVE_HR_DM_Combination_ID == 0)
        {
			setLVE_HR_DegreeInstruction_ID (0);
			setLVE_HR_Mention_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LVE_HR_DM_Combination (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_HR_DM_Combination[")
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

	/** Set Date From.
		@param DateFrom 
		Starting date for a range
	  */
	public void setDateFrom (Timestamp DateFrom)
	{
		set_Value (COLUMNNAME_DateFrom, DateFrom);
	}

	/** Get Date From.
		@return Starting date for a range
	  */
	public Timestamp getDateFrom () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateFrom);
	}

	/** Set Date To.
		@param DateTo 
		End date of a date range
	  */
	public void setDateTo (Timestamp DateTo)
	{
		set_Value (COLUMNNAME_DateTo, DateTo);
	}

	/** Get Date To.
		@return End date of a date range
	  */
	public Timestamp getDateTo () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateTo);
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

	public org.spin.model.I_LVE_HR_DegreeInstruction getLVE_HR_DegreeInstruction() throws RuntimeException
    {
		return (org.spin.model.I_LVE_HR_DegreeInstruction)MTable.get(getCtx(), org.spin.model.I_LVE_HR_DegreeInstruction.Table_Name)
			.getPO(getLVE_HR_DegreeInstruction_ID(), get_TrxName());	}

	/** Set Degree Instruction.
		@param LVE_HR_DegreeInstruction_ID Degree Instruction	  */
	public void setLVE_HR_DegreeInstruction_ID (int LVE_HR_DegreeInstruction_ID)
	{
		if (LVE_HR_DegreeInstruction_ID < 1) 
			set_Value (COLUMNNAME_LVE_HR_DegreeInstruction_ID, null);
		else 
			set_Value (COLUMNNAME_LVE_HR_DegreeInstruction_ID, Integer.valueOf(LVE_HR_DegreeInstruction_ID));
	}

	/** Get Degree Instruction.
		@return Degree Instruction	  */
	public int getLVE_HR_DegreeInstruction_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_HR_DegreeInstruction_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_LVE_HR_Mention getLVE_HR_Mention() throws RuntimeException
    {
		return (org.spin.model.I_LVE_HR_Mention)MTable.get(getCtx(), org.spin.model.I_LVE_HR_Mention.Table_Name)
			.getPO(getLVE_HR_Mention_ID(), get_TrxName());	}

	/** Set Mention.
		@param LVE_HR_Mention_ID Mention	  */
	public void setLVE_HR_Mention_ID (int LVE_HR_Mention_ID)
	{
		if (LVE_HR_Mention_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_Mention_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_Mention_ID, Integer.valueOf(LVE_HR_Mention_ID));
	}

	/** Get Mention.
		@return Mention	  */
	public int getLVE_HR_Mention_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_HR_Mention_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}