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

/** Generated Model for LVE_HR_DependentConcept
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS (1252452765) - $Id$ */
public class X_LVE_HR_DependentConcept extends PO implements I_LVE_HR_DependentConcept, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150119L;

    /** Standard Constructor */
    public X_LVE_HR_DependentConcept (Properties ctx, int LVE_HR_DependentConcept_ID, String trxName)
    {
      super (ctx, LVE_HR_DependentConcept_ID, trxName);
      /** if (LVE_HR_DependentConcept_ID == 0)
        {
			setDependentConcept_ID (0);
			setHR_Concept_ID (0);
			setLVE_HR_DependentConcept_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LVE_HR_DependentConcept (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_HR_DependentConcept[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** ColumnType AD_Reference_ID=53243 */
	public static final int COLUMNTYPE_AD_Reference_ID=53243;
	/** Amount = A */
	public static final String COLUMNTYPE_Amount = "A";
	/** Date = D */
	public static final String COLUMNTYPE_Date = "D";
	/** Quantity = Q */
	public static final String COLUMNTYPE_Quantity = "Q";
	/** Text = T */
	public static final String COLUMNTYPE_Text = "T";
	/** Set Column Type.
		@param ColumnType Column Type	  */
	public void setColumnType (String ColumnType)
	{

		set_Value (COLUMNNAME_ColumnType, ColumnType);
	}

	/** Get Column Type.
		@return Column Type	  */
	public String getColumnType () 
	{
		return (String)get_Value(COLUMNNAME_ColumnType);
	}

	public org.eevolution.model.I_HR_Concept getDependentConcept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getDependentConcept_ID(), get_TrxName());	}

	/** Set Dependent Concept.
		@param DependentConcept_ID Dependent Concept	  */
	public void setDependentConcept_ID (int DependentConcept_ID)
	{
		if (DependentConcept_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_DependentConcept_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_DependentConcept_ID, Integer.valueOf(DependentConcept_ID));
	}

	/** Get Dependent Concept.
		@return Dependent Concept	  */
	public int getDependentConcept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_DependentConcept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Format Pattern.
		@param FormatPattern 
		The pattern used to format a number or date.
	  */
	public void setFormatPattern (String FormatPattern)
	{
		set_Value (COLUMNNAME_FormatPattern, FormatPattern);
	}

	/** Get Format Pattern.
		@return The pattern used to format a number or date.
	  */
	public String getFormatPattern () 
	{
		return (String)get_Value(COLUMNNAME_FormatPattern);
	}

	public org.eevolution.model.I_HR_Concept getHR_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getHR_Concept_ID(), get_TrxName());	}

	/** Set Payroll Concept.
		@param HR_Concept_ID Payroll Concept	  */
	public void setHR_Concept_ID (int HR_Concept_ID)
	{
		if (HR_Concept_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_HR_Concept_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_HR_Concept_ID, Integer.valueOf(HR_Concept_ID));
	}

	/** Get Payroll Concept.
		@return Payroll Concept	  */
	public int getHR_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_HR_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Dependent Concept.
		@param LVE_HR_DependentConcept_ID Dependent Concept	  */
	public void setLVE_HR_DependentConcept_ID (int LVE_HR_DependentConcept_ID)
	{
		if (LVE_HR_DependentConcept_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_DependentConcept_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_DependentConcept_ID, Integer.valueOf(LVE_HR_DependentConcept_ID));
	}

	/** Get Dependent Concept.
		@return Dependent Concept	  */
	public int getLVE_HR_DependentConcept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_HR_DependentConcept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Prefix.
		@param Prefix 
		Prefix before the sequence number
	  */
	public void setPrefix (String Prefix)
	{
		set_Value (COLUMNNAME_Prefix, Prefix);
	}

	/** Get Prefix.
		@return Prefix before the sequence number
	  */
	public String getPrefix () 
	{
		return (String)get_Value(COLUMNNAME_Prefix);
	}

	/** Set Sequence.
		@param SeqNo 
		Method of ordering records; lowest number comes first
	  */
	public void setSeqNo (int SeqNo)
	{
		set_Value (COLUMNNAME_SeqNo, Integer.valueOf(SeqNo));
	}

	/** Get Sequence.
		@return Method of ordering records; lowest number comes first
	  */
	public int getSeqNo () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_SeqNo);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Suffix.
		@param Suffix 
		Suffix after the number
	  */
	public void setSuffix (String Suffix)
	{
		set_Value (COLUMNNAME_Suffix, Suffix);
	}

	/** Get Suffix.
		@return Suffix after the number
	  */
	public String getSuffix () 
	{
		return (String)get_Value(COLUMNNAME_Suffix);
	}
}