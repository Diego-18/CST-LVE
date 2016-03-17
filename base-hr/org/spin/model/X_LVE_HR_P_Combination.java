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
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;

/** Generated Model for LVE_HR_P_Combination
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS (1252452765) - $Id$ */
public class X_LVE_HR_P_Combination extends PO implements I_LVE_HR_P_Combination, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150119L;

    /** Standard Constructor */
    public X_LVE_HR_P_Combination (Properties ctx, int LVE_HR_P_Combination_ID, String trxName)
    {
      super (ctx, LVE_HR_P_Combination_ID, trxName);
      /** if (LVE_HR_P_Combination_ID == 0)
        {
			setLVE_HR_P_Combination_ID (0);
			setLVE_HR_ProvisionType_ID (0);
			setQty (Env.ZERO);
// 1
        } */
    }

    /** Load Constructor */
    public X_LVE_HR_P_Combination (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_HR_P_Combination[")
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
			set_Value (COLUMNNAME_C_BPartner_ID, null);
		else 
			set_Value (COLUMNNAME_C_BPartner_ID, Integer.valueOf(C_BPartner_ID));
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

	public org.eevolution.model.I_HR_Department getHR_Department() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Department)MTable.get(getCtx(), org.eevolution.model.I_HR_Department.Table_Name)
			.getPO(getHR_Department_ID(), get_TrxName());	}

	/** Set Payroll Department.
		@param HR_Department_ID Payroll Department	  */
	public void setHR_Department_ID (int HR_Department_ID)
	{
		if (HR_Department_ID < 1) 
			set_Value (COLUMNNAME_HR_Department_ID, null);
		else 
			set_Value (COLUMNNAME_HR_Department_ID, Integer.valueOf(HR_Department_ID));
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
			set_Value (COLUMNNAME_HR_Job_ID, null);
		else 
			set_Value (COLUMNNAME_HR_Job_ID, Integer.valueOf(HR_Job_ID));
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
			set_Value (COLUMNNAME_HR_Payroll_ID, null);
		else 
			set_Value (COLUMNNAME_HR_Payroll_ID, Integer.valueOf(HR_Payroll_ID));
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

	/** Set Provision Combination.
		@param LVE_HR_P_Combination_ID Provision Combination	  */
	public void setLVE_HR_P_Combination_ID (int LVE_HR_P_Combination_ID)
	{
		if (LVE_HR_P_Combination_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_P_Combination_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_P_Combination_ID, Integer.valueOf(LVE_HR_P_Combination_ID));
	}

	/** Get Provision Combination.
		@return Provision Combination	  */
	public int getLVE_HR_P_Combination_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_HR_P_Combination_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_LVE_HR_Provision getLVE_HR_Provision() throws RuntimeException
    {
		return (org.spin.model.I_LVE_HR_Provision)MTable.get(getCtx(), org.spin.model.I_LVE_HR_Provision.Table_Name)
			.getPO(getLVE_HR_Provision_ID(), get_TrxName());	}

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

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getLVE_HR_Provision_ID()));
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

	/** Set Quantity.
		@param Qty 
		Quantity
	  */
	public void setQty (BigDecimal Qty)
	{
		set_Value (COLUMNNAME_Qty, Qty);
	}

	/** Get Quantity.
		@return Quantity
	  */
	public BigDecimal getQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Qty);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}