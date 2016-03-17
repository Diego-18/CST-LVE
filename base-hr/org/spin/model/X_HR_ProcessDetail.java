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

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for HR_ProcessDetail
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_HR_ProcessDetail extends PO implements I_HR_ProcessDetail, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20140805L;

    /** Standard Constructor */
    public X_HR_ProcessDetail (Properties ctx, int HR_ProcessDetail_ID, String trxName)
    {
      super (ctx, HR_ProcessDetail_ID, trxName);
      /** if (HR_ProcessDetail_ID == 0)
        {
			setHR_ProcessDetail_ID (0);
        } */
    }

    /** Load Constructor */
    public X_HR_ProcessDetail (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_HR_ProcessDetail[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Amount Payroll.
		@param AmountPayroll Amount Payroll	  */
	public void setAmountPayroll (BigDecimal AmountPayroll)
	{
		throw new IllegalArgumentException ("AmountPayroll is virtual column");	}

	/** Get Amount Payroll.
		@return Amount Payroll	  */
	public BigDecimal getAmountPayroll () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_AmountPayroll);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Amount.
		@param Amt 
		Amount
	  */
	public void setAmt (BigDecimal Amt)
	{
		set_ValueNoCheck (COLUMNNAME_Amt, Amt);
	}

	/** Get Amount.
		@return Amount
	  */
	public BigDecimal getAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Amt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Partner Tax ID.
		@param BPTaxID 
		Tax ID of the Business Partner
	  */
	public void setBPTaxID (String BPTaxID)
	{
		set_ValueNoCheck (COLUMNNAME_BPTaxID, BPTaxID);
	}

	/** Get Partner Tax ID.
		@return Tax ID of the Business Partner
	  */
	public String getBPTaxID () 
	{
		return (String)get_Value(COLUMNNAME_BPTaxID);
	}

	/** Set Category Value.
		@param CategoryValue Category Value	  */
	public void setCategoryValue (String CategoryValue)
	{
		set_ValueNoCheck (COLUMNNAME_CategoryValue, CategoryValue);
	}

	/** Get Category Value.
		@return Category Value	  */
	public String getCategoryValue () 
	{
		return (String)get_Value(COLUMNNAME_CategoryValue);
	}

	public I_C_BPartner getC_BPartner() throws RuntimeException
    {
		return (I_C_BPartner)MTable.get(getCtx(), I_C_BPartner.Table_Name)
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

		set_ValueNoCheck (COLUMNNAME_ColumnType, ColumnType);
	}

	/** Get Column Type.
		@return Column Type	  */
	public String getColumnType () 
	{
		return (String)get_Value(COLUMNNAME_ColumnType);
	}

	/** Set Company Contribution.
		@param CompanyContribution Company Contribution	  */
	public void setCompanyContribution (BigDecimal CompanyContribution)
	{
		throw new IllegalArgumentException ("CompanyContribution is virtual column");	}

	/** Get Company Contribution.
		@return Company Contribution	  */
	public BigDecimal getCompanyContribution () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_CompanyContribution);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Account Date.
		@param DateAcct 
		Accounting Date
	  */
	public void setDateAcct (Timestamp DateAcct)
	{
		set_ValueNoCheck (COLUMNNAME_DateAcct, DateAcct);
	}

	/** Get Account Date.
		@return Accounting Date
	  */
	public Timestamp getDateAcct () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateAcct);
	}

	/** Set Document No.
		@param DocumentNo 
		Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo)
	{
		set_ValueNoCheck (COLUMNNAME_DocumentNo, DocumentNo);
	}

	/** Get Document No.
		@return Document sequence number of the document
	  */
	public String getDocumentNo () 
	{
		return (String)get_Value(COLUMNNAME_DocumentNo);
	}

	public org.eevolution.model.I_HR_Concept_Category getHR_Concept_Category() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept_Category)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept_Category.Table_Name)
			.getPO(getHR_Concept_Category_ID(), get_TrxName());	}

	/** Set Payroll Concept Category.
		@param HR_Concept_Category_ID Payroll Concept Category	  */
	public void setHR_Concept_Category_ID (int HR_Concept_Category_ID)
	{
		if (HR_Concept_Category_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_HR_Concept_Category_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_HR_Concept_Category_ID, Integer.valueOf(HR_Concept_Category_ID));
	}

	/** Get Payroll Concept Category.
		@return Payroll Concept Category	  */
	public int getHR_Concept_Category_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_HR_Concept_Category_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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

	public org.eevolution.model.I_HR_Department getHR_Department() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Department)MTable.get(getCtx(), org.eevolution.model.I_HR_Department.Table_Name)
			.getPO(getHR_Department_ID(), get_TrxName());	}

	/** Set Payroll Department.
		@param HR_Department_ID Payroll Department	  */
	public void setHR_Department_ID (int HR_Department_ID)
	{
		if (HR_Department_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_HR_Department_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_HR_Department_ID, Integer.valueOf(HR_Department_ID));
	}

	/** Get Payroll Department.
		@return Payroll Department	  */
	public int getHR_Department_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_HR_Department_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Job getHR_Job() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Job)MTable.get(getCtx(), org.eevolution.model.I_HR_Job.Table_Name)
			.getPO(getHR_Job_ID(), get_TrxName());	}

	/** Set Payroll Job.
		@param HR_Job_ID Payroll Job	  */
	public void setHR_Job_ID (int HR_Job_ID)
	{
		if (HR_Job_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_HR_Job_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_HR_Job_ID, Integer.valueOf(HR_Job_ID));
	}

	/** Get Payroll Job.
		@return Payroll Job	  */
	public int getHR_Job_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_HR_Job_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Payroll getHR_Payroll() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Payroll)MTable.get(getCtx(), org.eevolution.model.I_HR_Payroll.Table_Name)
			.getPO(getHR_Payroll_ID(), get_TrxName());	}

	/** Set Payroll.
		@param HR_Payroll_ID Payroll	  */
	public void setHR_Payroll_ID (int HR_Payroll_ID)
	{
		if (HR_Payroll_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_HR_Payroll_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_HR_Payroll_ID, Integer.valueOf(HR_Payroll_ID));
	}

	/** Get Payroll.
		@return Payroll	  */
	public int getHR_Payroll_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_HR_Payroll_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Period getHR_Period() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Period)MTable.get(getCtx(), org.eevolution.model.I_HR_Period.Table_Name)
			.getPO(getHR_Period_ID(), get_TrxName());	}

	/** Set Payroll Period.
		@param HR_Period_ID Payroll Period	  */
	public void setHR_Period_ID (int HR_Period_ID)
	{
		if (HR_Period_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_HR_Period_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_HR_Period_ID, Integer.valueOf(HR_Period_ID));
	}

	/** Get Payroll Period.
		@return Payroll Period	  */
	public int getHR_Period_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_HR_Period_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Process Detail ID.
		@param HR_ProcessDetail_ID Process Detail ID	  */
	public void setHR_ProcessDetail_ID (int HR_ProcessDetail_ID)
	{
		if (HR_ProcessDetail_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_HR_ProcessDetail_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_HR_ProcessDetail_ID, Integer.valueOf(HR_ProcessDetail_ID));
	}

	/** Get Process Detail ID.
		@return Process Detail ID	  */
	public int getHR_ProcessDetail_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_HR_ProcessDetail_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Process getHR_Process() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Process)MTable.get(getCtx(), org.eevolution.model.I_HR_Process.Table_Name)
			.getPO(getHR_Process_ID(), get_TrxName());	}

	/** Set Payroll Process.
		@param HR_Process_ID Payroll Process	  */
	public void setHR_Process_ID (int HR_Process_ID)
	{
		if (HR_Process_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_HR_Process_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_HR_Process_ID, Integer.valueOf(HR_Process_ID));
	}

	/** Get Payroll Process.
		@return Payroll Process	  */
	public int getHR_Process_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_HR_Process_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Printed.
		@param IsPrinted 
		Indicates if this document / line is printed
	  */
	public void setIsPrinted (boolean IsPrinted)
	{
		set_ValueNoCheck (COLUMNNAME_IsPrinted, Boolean.valueOf(IsPrinted));
	}

	/** Get Printed.
		@return Indicates if this document / line is printed
	  */
	public boolean isPrinted () 
	{
		Object oo = get_Value(COLUMNNAME_IsPrinted);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_ValueNoCheck (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getName());
    }

	/** Set Name 2.
		@param Name2 
		Additional Name
	  */
	public void setName2 (String Name2)
	{
		set_ValueNoCheck (COLUMNNAME_Name2, Name2);
	}

	/** Get Name 2.
		@return Additional Name
	  */
	public String getName2 () 
	{
		return (String)get_Value(COLUMNNAME_Name2);
	}

	/** Set Sequence.
		@param SeqNo 
		Method of ordering records; lowest number comes first
	  */
	public void setSeqNo (int SeqNo)
	{
		set_ValueNoCheck (COLUMNNAME_SeqNo, Integer.valueOf(SeqNo));
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

	/** Set Valid from.
		@param ValidFrom 
		Valid from including this date (first day)
	  */
	public void setValidFrom (Timestamp ValidFrom)
	{
		set_ValueNoCheck (COLUMNNAME_ValidFrom, ValidFrom);
	}

	/** Get Valid from.
		@return Valid from including this date (first day)
	  */
	public Timestamp getValidFrom () 
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidFrom);
	}

	/** Set Valid to.
		@param ValidTo 
		Valid to including this date (last day)
	  */
	public void setValidTo (Timestamp ValidTo)
	{
		set_ValueNoCheck (COLUMNNAME_ValidTo, ValidTo);
	}

	/** Get Valid to.
		@return Valid to including this date (last day)
	  */
	public Timestamp getValidTo () 
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidTo);
	}

	/** Set Search Key.
		@param Value 
		Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value)
	{
		set_ValueNoCheck (COLUMNNAME_Value, Value);
	}

	/** Get Search Key.
		@return Search key for the record in the format required - must be unique
	  */
	public String getValue () 
	{
		return (String)get_Value(COLUMNNAME_Value);
	}
}