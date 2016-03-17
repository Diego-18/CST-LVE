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

/** Generated Model for LVE_PaymentRequestLine
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_LVE_PaymentRequestLine extends PO implements I_LVE_PaymentRequestLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150211L;

    /** Standard Constructor */
    public X_LVE_PaymentRequestLine (Properties ctx, int LVE_PaymentRequestLine_ID, String trxName)
    {
      super (ctx, LVE_PaymentRequestLine_ID, trxName);
      /** if (LVE_PaymentRequestLine_ID == 0)
        {
			setLine (0);
			setLVE_PaymentRequest_ID (0);
			setLVE_PaymentRequestLine_ID (0);
			setPayAmt (Env.ZERO);
        } */
    }

    /** Load Constructor */
    public X_LVE_PaymentRequestLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_PaymentRequestLine[")
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

	public org.compiere.model.I_C_BP_BankAccount getC_BP_BankAccount() throws RuntimeException
    {
		return (org.compiere.model.I_C_BP_BankAccount)MTable.get(getCtx(), org.compiere.model.I_C_BP_BankAccount.Table_Name)
			.getPO(getC_BP_BankAccount_ID(), get_TrxName());	}

	/** Set Partner Bank Account.
		@param C_BP_BankAccount_ID 
		Bank Account of the Business Partner
	  */
	public void setC_BP_BankAccount_ID (int C_BP_BankAccount_ID)
	{
		if (C_BP_BankAccount_ID < 1) 
			set_Value (COLUMNNAME_C_BP_BankAccount_ID, null);
		else 
			set_Value (COLUMNNAME_C_BP_BankAccount_ID, Integer.valueOf(C_BP_BankAccount_ID));
	}

	/** Get Partner Bank Account.
		@return Bank Account of the Business Partner
	  */
	public int getC_BP_BankAccount_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_BP_BankAccount_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Invoice getC_Invoice() throws RuntimeException
    {
		return (org.compiere.model.I_C_Invoice)MTable.get(getCtx(), org.compiere.model.I_C_Invoice.Table_Name)
			.getPO(getC_Invoice_ID(), get_TrxName());	}

	/** Set Invoice.
		@param C_Invoice_ID 
		Invoice Identifier
	  */
	public void setC_Invoice_ID (int C_Invoice_ID)
	{
		if (C_Invoice_ID < 1) 
			set_Value (COLUMNNAME_C_Invoice_ID, null);
		else 
			set_Value (COLUMNNAME_C_Invoice_ID, Integer.valueOf(C_Invoice_ID));
	}

	/** Get Invoice.
		@return Invoice Identifier
	  */
	public int getC_Invoice_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Invoice_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.compiere.model.I_C_Order getC_Order() throws RuntimeException
    {
		return (org.compiere.model.I_C_Order)MTable.get(getCtx(), org.compiere.model.I_C_Order.Table_Name)
			.getPO(getC_Order_ID(), get_TrxName());	}

	/** Set Order.
		@param C_Order_ID 
		Order
	  */
	public void setC_Order_ID (int C_Order_ID)
	{
		if (C_Order_ID < 1) 
			set_Value (COLUMNNAME_C_Order_ID, null);
		else 
			set_Value (COLUMNNAME_C_Order_ID, Integer.valueOf(C_Order_ID));
	}

	/** Get Order.
		@return Order
	  */
	public int getC_Order_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Order_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Due Date.
		@param DueDate 
		Date when the payment is due
	  */
	public void setDueDate (Timestamp DueDate)
	{
		set_Value (COLUMNNAME_DueDate, DueDate);
	}

	/** Get Due Date.
		@return Date when the payment is due
	  */
	public Timestamp getDueDate () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DueDate);
	}

	public org.compiere.model.I_GL_JournalLine getGL_JournalLine() throws RuntimeException
    {
		return (org.compiere.model.I_GL_JournalLine)MTable.get(getCtx(), org.compiere.model.I_GL_JournalLine.Table_Name)
			.getPO(getGL_JournalLine_ID(), get_TrxName());	}

	/** Set Journal Line.
		@param GL_JournalLine_ID 
		General Ledger Journal Line
	  */
	public void setGL_JournalLine_ID (int GL_JournalLine_ID)
	{
		if (GL_JournalLine_ID < 1) 
			set_Value (COLUMNNAME_GL_JournalLine_ID, null);
		else 
			set_Value (COLUMNNAME_GL_JournalLine_ID, Integer.valueOf(GL_JournalLine_ID));
	}

	/** Get Journal Line.
		@return General Ledger Journal Line
	  */
	public int getGL_JournalLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_GL_JournalLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Exceeded Amount.
		@param IsExceededAmt Exceeded Amount	  */
	public void setIsExceededAmt (boolean IsExceededAmt)
	{
		set_Value (COLUMNNAME_IsExceededAmt, Boolean.valueOf(IsExceededAmt));
	}

	/** Get Exceeded Amount.
		@return Exceeded Amount	  */
	public boolean isExceededAmt () 
	{
		Object oo = get_Value(COLUMNNAME_IsExceededAmt);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Prepared.
		@param IsPrepared Prepared	  */
	public void setIsPrepared (boolean IsPrepared)
	{
		set_Value (COLUMNNAME_IsPrepared, Boolean.valueOf(IsPrepared));
	}

	/** Get Prepared.
		@return Prepared	  */
	public boolean isPrepared () 
	{
		Object oo = get_Value(COLUMNNAME_IsPrepared);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Line No.
		@param Line 
		Unique line for this document
	  */
	public void setLine (int Line)
	{
		set_Value (COLUMNNAME_Line, Integer.valueOf(Line));
	}

	/** Get Line No.
		@return Unique line for this document
	  */
	public int getLine () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Line);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getLine()));
    }

	public org.spin.model.I_LVE_PaymentRequest getLVE_PaymentRequest() throws RuntimeException
    {
		return (org.spin.model.I_LVE_PaymentRequest)MTable.get(getCtx(), org.spin.model.I_LVE_PaymentRequest.Table_Name)
			.getPO(getLVE_PaymentRequest_ID(), get_TrxName());	}

	/** Set Payment Request.
		@param LVE_PaymentRequest_ID Payment Request	  */
	public void setLVE_PaymentRequest_ID (int LVE_PaymentRequest_ID)
	{
		if (LVE_PaymentRequest_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_PaymentRequest_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_PaymentRequest_ID, Integer.valueOf(LVE_PaymentRequest_ID));
	}

	/** Get Payment Request.
		@return Payment Request	  */
	public int getLVE_PaymentRequest_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_PaymentRequest_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Payment Request Line.
		@param LVE_PaymentRequestLine_ID Payment Request Line	  */
	public void setLVE_PaymentRequestLine_ID (int LVE_PaymentRequestLine_ID)
	{
		if (LVE_PaymentRequestLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_PaymentRequestLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_PaymentRequestLine_ID, Integer.valueOf(LVE_PaymentRequestLine_ID));
	}

	/** Get Payment Request Line.
		@return Payment Request Line	  */
	public int getLVE_PaymentRequestLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_PaymentRequestLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Payment amount.
		@param PayAmt 
		Amount being paid
	  */
	public void setPayAmt (BigDecimal PayAmt)
	{
		set_Value (COLUMNNAME_PayAmt, PayAmt);
	}

	/** Get Payment amount.
		@return Amount being paid
	  */
	public BigDecimal getPayAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_PayAmt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
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
}