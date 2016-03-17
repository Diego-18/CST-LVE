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

/** Generated Model for LVE_HR_LoanAmortization
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS (1252452765) - $Id$ */
public class X_LVE_HR_LoanAmortization extends PO implements I_LVE_HR_LoanAmortization, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150119L;

    /** Standard Constructor */
    public X_LVE_HR_LoanAmortization (Properties ctx, int LVE_HR_LoanAmortization_ID, String trxName)
    {
      super (ctx, LVE_HR_LoanAmortization_ID, trxName);
      /** if (LVE_HR_LoanAmortization_ID == 0)
        {
			setAmt (Env.ZERO);
			setBalance (Env.ZERO);
			setDateDoc (new Timestamp( System.currentTimeMillis() ));
			setLVE_HR_LoanAmortization_ID (0);
			setLVE_HR_Loan_ID (0);
			setLVE_HR_LoanPaymentTerm_ID (0);
			setProcessed (false);
// N
        } */
    }

    /** Load Constructor */
    public X_LVE_HR_LoanAmortization (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_HR_LoanAmortization[")
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

	/** Set Balance.
		@param Balance Balance	  */
	public void setBalance (BigDecimal Balance)
	{
		set_Value (COLUMNNAME_Balance, Balance);
	}

	/** Get Balance.
		@return Balance	  */
	public BigDecimal getBalance () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Balance);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Document Date.
		@param DateDoc 
		Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc)
	{
		set_Value (COLUMNNAME_DateDoc, DateDoc);
	}

	/** Get Document Date.
		@return Date of the Document
	  */
	public Timestamp getDateDoc () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateDoc);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getDateDoc()));
    }

	/** Set Interest Amount.
		@param InterestAmt 
		Interest Amount
	  */
	public void setInterestAmt (BigDecimal InterestAmt)
	{
		set_Value (COLUMNNAME_InterestAmt, InterestAmt);
	}

	/** Get Interest Amount.
		@return Interest Amount
	  */
	public BigDecimal getInterestAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_InterestAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Amortization.
		@param LVE_HR_LoanAmortization_ID Amortization	  */
	public void setLVE_HR_LoanAmortization_ID (int LVE_HR_LoanAmortization_ID)
	{
		if (LVE_HR_LoanAmortization_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_LoanAmortization_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_LoanAmortization_ID, Integer.valueOf(LVE_HR_LoanAmortization_ID));
	}

	/** Get Amortization.
		@return Amortization	  */
	public int getLVE_HR_LoanAmortization_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_HR_LoanAmortization_ID);
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

	public org.spin.model.I_LVE_HR_LoanPaymentTerm getLVE_HR_LoanPaymentTerm() throws RuntimeException
    {
		return (org.spin.model.I_LVE_HR_LoanPaymentTerm)MTable.get(getCtx(), org.spin.model.I_LVE_HR_LoanPaymentTerm.Table_Name)
			.getPO(getLVE_HR_LoanPaymentTerm_ID(), get_TrxName());	}

	/** Set HR Loan Payment Term.
		@param LVE_HR_LoanPaymentTerm_ID HR Loan Payment Term	  */
	public void setLVE_HR_LoanPaymentTerm_ID (int LVE_HR_LoanPaymentTerm_ID)
	{
		if (LVE_HR_LoanPaymentTerm_ID < 1) 
			set_Value (COLUMNNAME_LVE_HR_LoanPaymentTerm_ID, null);
		else 
			set_Value (COLUMNNAME_LVE_HR_LoanPaymentTerm_ID, Integer.valueOf(LVE_HR_LoanPaymentTerm_ID));
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

	/** Set Tax Amount.
		@param TaxAmt 
		Tax Amount for a document
	  */
	public void setTaxAmt (BigDecimal TaxAmt)
	{
		set_Value (COLUMNNAME_TaxAmt, TaxAmt);
	}

	/** Get Tax Amount.
		@return Tax Amount for a document
	  */
	public BigDecimal getTaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TaxAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}
}