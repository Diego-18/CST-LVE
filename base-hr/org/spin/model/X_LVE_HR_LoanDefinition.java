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

/** Generated Model for LVE_HR_LoanDefinition
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS (1252452765) - $Id$ */
public class X_LVE_HR_LoanDefinition extends PO implements I_LVE_HR_LoanDefinition, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150119L;

    /** Standard Constructor */
    public X_LVE_HR_LoanDefinition (Properties ctx, int LVE_HR_LoanDefinition_ID, String trxName)
    {
      super (ctx, LVE_HR_LoanDefinition_ID, trxName);
      /** if (LVE_HR_LoanDefinition_ID == 0)
        {
			setLVE_HR_LoanDefinition_ID (0);
			setManagesInterest (false);
			setName (null);
			setValue (null);
        } */
    }

    /** Load Constructor */
    public X_LVE_HR_LoanDefinition (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LVE_HR_LoanDefinition[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_Tax getC_Tax() throws RuntimeException
    {
		return (org.compiere.model.I_C_Tax)MTable.get(getCtx(), org.compiere.model.I_C_Tax.Table_Name)
			.getPO(getC_Tax_ID(), get_TrxName());	}

	/** Set Tax.
		@param C_Tax_ID 
		Tax identifier
	  */
	public void setC_Tax_ID (int C_Tax_ID)
	{
		if (C_Tax_ID < 1) 
			set_Value (COLUMNNAME_C_Tax_ID, null);
		else 
			set_Value (COLUMNNAME_C_Tax_ID, Integer.valueOf(C_Tax_ID));
	}

	/** Get Tax.
		@return Tax identifier
	  */
	public int getC_Tax_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Tax_ID);
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

	public org.eevolution.model.I_HR_Concept getInterest_A_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getInterest_A_Concept_ID(), get_TrxName());	}

	/** Set Concept (Accumulated of Interest).
		@param Interest_A_Concept_ID Concept (Accumulated of Interest)	  */
	public void setInterest_A_Concept_ID (int Interest_A_Concept_ID)
	{
		if (Interest_A_Concept_ID < 1) 
			set_Value (COLUMNNAME_Interest_A_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Interest_A_Concept_ID, Integer.valueOf(Interest_A_Concept_ID));
	}

	/** Get Concept (Accumulated of Interest).
		@return Concept (Accumulated of Interest)	  */
	public int getInterest_A_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Interest_A_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getInterest_C_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getInterest_C_Concept_ID(), get_TrxName());	}

	/** Set Concept (Calculation of Interest).
		@param Interest_C_Concept_ID Concept (Calculation of Interest)	  */
	public void setInterest_C_Concept_ID (int Interest_C_Concept_ID)
	{
		if (Interest_C_Concept_ID < 1) 
			set_Value (COLUMNNAME_Interest_C_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Interest_C_Concept_ID, Integer.valueOf(Interest_C_Concept_ID));
	}

	/** Get Concept (Calculation of Interest).
		@return Concept (Calculation of Interest)	  */
	public int getInterest_C_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Interest_C_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getInterest_D_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getInterest_D_Concept_ID(), get_TrxName());	}

	/** Set Concept (Deduction of Interest).
		@param Interest_D_Concept_ID Concept (Deduction of Interest)	  */
	public void setInterest_D_Concept_ID (int Interest_D_Concept_ID)
	{
		if (Interest_D_Concept_ID < 1) 
			set_Value (COLUMNNAME_Interest_D_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Interest_D_Concept_ID, Integer.valueOf(Interest_D_Concept_ID));
	}

	/** Get Concept (Deduction of Interest).
		@return Concept (Deduction of Interest)	  */
	public int getInterest_D_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Interest_D_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getInterest_DM_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getInterest_DM_Concept_ID(), get_TrxName());	}

	/** Set Concept (Days of Month of Interest).
		@param Interest_DM_Concept_ID Concept (Days of Month of Interest)	  */
	public void setInterest_DM_Concept_ID (int Interest_DM_Concept_ID)
	{
		if (Interest_DM_Concept_ID < 1) 
			set_Value (COLUMNNAME_Interest_DM_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Interest_DM_Concept_ID, Integer.valueOf(Interest_DM_Concept_ID));
	}

	/** Get Concept (Days of Month of Interest).
		@return Concept (Days of Month of Interest)	  */
	public int getInterest_DM_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Interest_DM_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getInterest_ND_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getInterest_ND_Concept_ID(), get_TrxName());	}

	/** Set Concept (Not Due of Interest).
		@param Interest_ND_Concept_ID Concept (Not Due of Interest)	  */
	public void setInterest_ND_Concept_ID (int Interest_ND_Concept_ID)
	{
		if (Interest_ND_Concept_ID < 1) 
			set_Value (COLUMNNAME_Interest_ND_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Interest_ND_Concept_ID, Integer.valueOf(Interest_ND_Concept_ID));
	}

	/** Get Concept (Not Due of Interest).
		@return Concept (Not Due of Interest)	  */
	public int getInterest_ND_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Interest_ND_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getInterest_NDT_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getInterest_NDT_Concept_ID(), get_TrxName());	}

	/** Set Concept (Not Due of Interest Tax).
		@param Interest_NDT_Concept_ID Concept (Not Due of Interest Tax)	  */
	public void setInterest_NDT_Concept_ID (int Interest_NDT_Concept_ID)
	{
		if (Interest_NDT_Concept_ID < 1) 
			set_Value (COLUMNNAME_Interest_NDT_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Interest_NDT_Concept_ID, Integer.valueOf(Interest_NDT_Concept_ID));
	}

	/** Get Concept (Not Due of Interest Tax).
		@return Concept (Not Due of Interest Tax)	  */
	public int getInterest_NDT_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Interest_NDT_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getInterest_PB_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getInterest_PB_Concept_ID(), get_TrxName());	}

	/** Set Concept (Previous Balance).
		@param Interest_PB_Concept_ID Concept (Previous Balance)	  */
	public void setInterest_PB_Concept_ID (int Interest_PB_Concept_ID)
	{
		if (Interest_PB_Concept_ID < 1) 
			set_Value (COLUMNNAME_Interest_PB_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Interest_PB_Concept_ID, Integer.valueOf(Interest_PB_Concept_ID));
	}

	/** Get Concept (Previous Balance).
		@return Concept (Previous Balance)	  */
	public int getInterest_PB_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Interest_PB_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getInterest_R_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getInterest_R_Concept_ID(), get_TrxName());	}

	/** Set Concept (Rate of Interest).
		@param Interest_R_Concept_ID Concept (Rate of Interest)	  */
	public void setInterest_R_Concept_ID (int Interest_R_Concept_ID)
	{
		if (Interest_R_Concept_ID < 1) 
			set_Value (COLUMNNAME_Interest_R_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Interest_R_Concept_ID, Integer.valueOf(Interest_R_Concept_ID));
	}

	/** Get Concept (Rate of Interest).
		@return Concept (Rate of Interest)	  */
	public int getInterest_R_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Interest_R_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getInterest_T_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getInterest_T_Concept_ID(), get_TrxName());	}

	/** Set Concept (Top Capital).
		@param Interest_T_Concept_ID Concept (Top Capital)	  */
	public void setInterest_T_Concept_ID (int Interest_T_Concept_ID)
	{
		if (Interest_T_Concept_ID < 1) 
			set_Value (COLUMNNAME_Interest_T_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Interest_T_Concept_ID, Integer.valueOf(Interest_T_Concept_ID));
	}

	/** Get Concept (Top Capital).
		@return Concept (Top Capital)	  */
	public int getInterest_T_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Interest_T_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getInterest_TI_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getInterest_TI_Concept_ID(), get_TrxName());	}

	/** Set Incidence (Total Interest).
		@param Interest_TI_Concept_ID Incidence (Total Interest)	  */
	public void setInterest_TI_Concept_ID (int Interest_TI_Concept_ID)
	{
		if (Interest_TI_Concept_ID < 1) 
			set_Value (COLUMNNAME_Interest_TI_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Interest_TI_Concept_ID, Integer.valueOf(Interest_TI_Concept_ID));
	}

	/** Get Incidence (Total Interest).
		@return Incidence (Total Interest)	  */
	public int getInterest_TI_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Interest_TI_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getInterest_TT_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getInterest_TT_Concept_ID(), get_TrxName());	}

	/** Set Incidence (Total Tax).
		@param Interest_TT_Concept_ID Incidence (Total Tax)	  */
	public void setInterest_TT_Concept_ID (int Interest_TT_Concept_ID)
	{
		if (Interest_TT_Concept_ID < 1) 
			set_Value (COLUMNNAME_Interest_TT_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Interest_TT_Concept_ID, Integer.valueOf(Interest_TT_Concept_ID));
	}

	/** Get Incidence (Total Tax).
		@return Incidence (Total Tax)	  */
	public int getInterest_TT_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Interest_TT_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getLoan_A_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getLoan_A_Concept_ID(), get_TrxName());	}

	/** Set Concept (Accumulated of Loan).
		@param Loan_A_Concept_ID Concept (Accumulated of Loan)	  */
	public void setLoan_A_Concept_ID (int Loan_A_Concept_ID)
	{
		if (Loan_A_Concept_ID < 1) 
			set_Value (COLUMNNAME_Loan_A_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Loan_A_Concept_ID, Integer.valueOf(Loan_A_Concept_ID));
	}

	/** Get Concept (Accumulated of Loan).
		@return Concept (Accumulated of Loan)	  */
	public int getLoan_A_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Loan_A_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getLoan_C_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getLoan_C_Concept_ID(), get_TrxName());	}

	/** Set Concept (Calculation of Loan).
		@param Loan_C_Concept_ID Concept (Calculation of Loan)	  */
	public void setLoan_C_Concept_ID (int Loan_C_Concept_ID)
	{
		if (Loan_C_Concept_ID < 1) 
			set_Value (COLUMNNAME_Loan_C_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Loan_C_Concept_ID, Integer.valueOf(Loan_C_Concept_ID));
	}

	/** Get Concept (Calculation of Loan).
		@return Concept (Calculation of Loan)	  */
	public int getLoan_C_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Loan_C_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getLoan_D_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getLoan_D_Concept_ID(), get_TrxName());	}

	/** Set Concept (Deduction of Loan).
		@param Loan_D_Concept_ID Concept (Deduction of Loan)	  */
	public void setLoan_D_Concept_ID (int Loan_D_Concept_ID)
	{
		if (Loan_D_Concept_ID < 1) 
			set_Value (COLUMNNAME_Loan_D_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Loan_D_Concept_ID, Integer.valueOf(Loan_D_Concept_ID));
	}

	/** Get Concept (Deduction of Loan).
		@return Concept (Deduction of Loan)	  */
	public int getLoan_D_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Loan_D_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getLoan_F_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getLoan_F_Concept_ID(), get_TrxName());	}

	/** Set Concept (Flag of Loan).
		@param Loan_F_Concept_ID Concept (Flag of Loan)	  */
	public void setLoan_F_Concept_ID (int Loan_F_Concept_ID)
	{
		if (Loan_F_Concept_ID < 1) 
			set_Value (COLUMNNAME_Loan_F_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Loan_F_Concept_ID, Integer.valueOf(Loan_F_Concept_ID));
	}

	/** Get Concept (Flag of Loan).
		@return Concept (Flag of Loan)	  */
	public int getLoan_F_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Loan_F_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getLoan_I_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getLoan_I_Concept_ID(), get_TrxName());	}

	/** Set Concept (Incidence of Loan).
		@param Loan_I_Concept_ID Concept (Incidence of Loan)	  */
	public void setLoan_I_Concept_ID (int Loan_I_Concept_ID)
	{
		if (Loan_I_Concept_ID < 1) 
			set_Value (COLUMNNAME_Loan_I_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Loan_I_Concept_ID, Integer.valueOf(Loan_I_Concept_ID));
	}

	/** Get Concept (Incidence of Loan).
		@return Concept (Incidence of Loan)	  */
	public int getLoan_I_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Loan_I_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getLoan_I_SP_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getLoan_I_SP_Concept_ID(), get_TrxName());	}

	/** Set Concept (Incidence Special Payment).
		@param Loan_I_SP_Concept_ID Concept (Incidence Special Payment)	  */
	public void setLoan_I_SP_Concept_ID (int Loan_I_SP_Concept_ID)
	{
		if (Loan_I_SP_Concept_ID < 1) 
			set_Value (COLUMNNAME_Loan_I_SP_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Loan_I_SP_Concept_ID, Integer.valueOf(Loan_I_SP_Concept_ID));
	}

	/** Get Concept (Incidence Special Payment).
		@return Concept (Incidence Special Payment)	  */
	public int getLoan_I_SP_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Loan_I_SP_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getLoan_P_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getLoan_P_Concept_ID(), get_TrxName());	}

	/** Set Concept (Payment Term).
		@param Loan_P_Concept_ID Concept (Payment Term)	  */
	public void setLoan_P_Concept_ID (int Loan_P_Concept_ID)
	{
		if (Loan_P_Concept_ID < 1) 
			set_Value (COLUMNNAME_Loan_P_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Loan_P_Concept_ID, Integer.valueOf(Loan_P_Concept_ID));
	}

	/** Get Concept (Payment Term).
		@return Concept (Payment Term)	  */
	public int getLoan_P_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Loan_P_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.eevolution.model.I_HR_Concept getLoan_T_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getLoan_T_Concept_ID(), get_TrxName());	}

	/** Set Concept (Top of Loan).
		@param Loan_T_Concept_ID Concept (Top of Loan)	  */
	public void setLoan_T_Concept_ID (int Loan_T_Concept_ID)
	{
		if (Loan_T_Concept_ID < 1) 
			set_Value (COLUMNNAME_Loan_T_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Loan_T_Concept_ID, Integer.valueOf(Loan_T_Concept_ID));
	}

	/** Get Concept (Top of Loan).
		@return Concept (Top of Loan)	  */
	public int getLoan_T_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Loan_T_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Loan Definition.
		@param LVE_HR_LoanDefinition_ID Loan Definition	  */
	public void setLVE_HR_LoanDefinition_ID (int LVE_HR_LoanDefinition_ID)
	{
		if (LVE_HR_LoanDefinition_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_LoanDefinition_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LVE_HR_LoanDefinition_ID, Integer.valueOf(LVE_HR_LoanDefinition_ID));
	}

	/** Get Loan Definition.
		@return Loan Definition	  */
	public int getLVE_HR_LoanDefinition_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LVE_HR_LoanDefinition_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Manages Interest.
		@param ManagesInterest Manages Interest	  */
	public void setManagesInterest (boolean ManagesInterest)
	{
		set_Value (COLUMNNAME_ManagesInterest, Boolean.valueOf(ManagesInterest));
	}

	/** Get Manages Interest.
		@return Manages Interest	  */
	public boolean isManagesInterest () 
	{
		Object oo = get_Value(COLUMNNAME_ManagesInterest);
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
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
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

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	public org.eevolution.model.I_HR_Concept getTax_C_Concept() throws RuntimeException
    {
		return (org.eevolution.model.I_HR_Concept)MTable.get(getCtx(), org.eevolution.model.I_HR_Concept.Table_Name)
			.getPO(getTax_C_Concept_ID(), get_TrxName());	}

	/** Set Concept (Calculation of Tax).
		@param Tax_C_Concept_ID Concept (Calculation of Tax)	  */
	public void setTax_C_Concept_ID (int Tax_C_Concept_ID)
	{
		if (Tax_C_Concept_ID < 1) 
			set_Value (COLUMNNAME_Tax_C_Concept_ID, null);
		else 
			set_Value (COLUMNNAME_Tax_C_Concept_ID, Integer.valueOf(Tax_C_Concept_ID));
	}

	/** Get Concept (Calculation of Tax).
		@return Concept (Calculation of Tax)	  */
	public int getTax_C_Concept_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_Tax_C_Concept_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
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