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

/** Generated Model for LVE_HR_LoanPaymentTerm
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS (1252452765) - $Id$ */
public class X_LVE_HR_LoanPaymentTerm extends PO implements I_LVE_HR_LoanPaymentTerm, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150119L;

    /** Standard Constructor */
    public X_LVE_HR_LoanPaymentTerm (Properties ctx, int LVE_HR_LoanPaymentTerm_ID, String trxName)
    {
      super (ctx, LVE_HR_LoanPaymentTerm_ID, trxName);
      /** if (LVE_HR_LoanPaymentTerm_ID == 0)
        {
			setAmt (Env.ZERO);
			setHR_Payroll_ID (0);
			setLVE_HR_Loan_ID (0);
			setLVE_HR_LoanPaymentTerm_ID (0);
			setProcessed (false);
// N
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
        } */
    }

    /** Load Constructor */
    public X_LVE_HR_LoanPaymentTerm (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_HR_LoanPaymentTerm[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Amount.
		@param Amt 
		Amount
	  */
	public void setAmt (BigDecimal Amt)
	{
		set_Value (COLUMNNAME_Amt, Amt);
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

	public org.spin.model.I_LVE_HR_Loan getLVE_HR_Loan() throws RuntimeException
    {
		return (org.spin.model.I_LVE_HR_Loan)MTable.get(getCtx(), org.spin.model.I_LVE_HR_Loan.Table_Name)
			.getPO(getLVE_HR_Loan_ID(), get_TrxName());	}

	/** Set HR Loan.
		@param LVE_HR_Loan_ID HR Loan	  */
	public void setLVE_HR_Loan_ID (int LVE_HR_Loan_ID)
	{
		if (LVE_HR_Loan_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_Loan_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_Loan_ID, Integer.valueOf(LVE_HR_Loan_ID));
	}

	/** Get HR Loan.
		@return HR Loan	  */
	public int getLVE_HR_Loan_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_HR_Loan_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set HR Loan Payment Term.
		@param LVE_HR_LoanPaymentTerm_ID HR Loan Payment Term	  */
	public void setLVE_HR_LoanPaymentTerm_ID (int LVE_HR_LoanPaymentTerm_ID)
	{
		if (LVE_HR_LoanPaymentTerm_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_LoanPaymentTerm_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_LoanPaymentTerm_ID, Integer.valueOf(LVE_HR_LoanPaymentTerm_ID));
	}

	/** Get HR Loan Payment Term.
		@return HR Loan Payment Term	  */
	public int getLVE_HR_LoanPaymentTerm_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_HR_LoanPaymentTerm_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Processed.
		@param Processed 
		The document has been processed
	  */
	public void setProcessed (boolean Processed)
	{
		set_Value (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed () 
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Valid from.
		@param ValidFrom 
		Valid from including this date (first day)
	  */
	public void setValidFrom (Timestamp ValidFrom)
	{
		set_Value (COLUMNNAME_ValidFrom, ValidFrom);
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
		set_Value (COLUMNNAME_ValidTo, ValidTo);
	}

	/** Get Valid to.
		@return Valid to including this date (last day)
	  */
	public Timestamp getValidTo () 
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidTo);
	}
}