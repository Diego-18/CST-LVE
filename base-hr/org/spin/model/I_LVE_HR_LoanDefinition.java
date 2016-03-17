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
package org.spin.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LVE_HR_LoanDefinition
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS (1252452765)
 */
public interface I_LVE_HR_LoanDefinition 
{

    /** TableName=LVE_HR_LoanDefinition */
    public static final String Table_Name = "LVE_HR_LoanDefinition";

    /** AD_Table_ID=53813 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name C_Tax_ID */
    public static final String COLUMNNAME_C_Tax_ID = "C_Tax_ID";

	/** Set Tax.
	  * Tax identifier
	  */
	public void setC_Tax_ID (int C_Tax_ID);

	/** Get Tax.
	  * Tax identifier
	  */
	public int getC_Tax_ID();

	public org.compiere.model.I_C_Tax getC_Tax() throws RuntimeException;

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Description.
	  * Optional short description of the record
	  */
	public void setDescription (String Description);

	/** Get Description.
	  * Optional short description of the record
	  */
	public String getDescription();

    /** Column name Interest_A_Concept_ID */
    public static final String COLUMNNAME_Interest_A_Concept_ID = "Interest_A_Concept_ID";

	/** Set Concept (Accumulated of Interest)	  */
	public void setInterest_A_Concept_ID (int Interest_A_Concept_ID);

	/** Get Concept (Accumulated of Interest)	  */
	public int getInterest_A_Concept_ID();

	public org.eevolution.model.I_HR_Concept getInterest_A_Concept() throws RuntimeException;

    /** Column name Interest_C_Concept_ID */
    public static final String COLUMNNAME_Interest_C_Concept_ID = "Interest_C_Concept_ID";

	/** Set Concept (Calculation of Interest)	  */
	public void setInterest_C_Concept_ID (int Interest_C_Concept_ID);

	/** Get Concept (Calculation of Interest)	  */
	public int getInterest_C_Concept_ID();

	public org.eevolution.model.I_HR_Concept getInterest_C_Concept() throws RuntimeException;

    /** Column name Interest_D_Concept_ID */
    public static final String COLUMNNAME_Interest_D_Concept_ID = "Interest_D_Concept_ID";

	/** Set Concept (Deduction of Interest)	  */
	public void setInterest_D_Concept_ID (int Interest_D_Concept_ID);

	/** Get Concept (Deduction of Interest)	  */
	public int getInterest_D_Concept_ID();

	public org.eevolution.model.I_HR_Concept getInterest_D_Concept() throws RuntimeException;

    /** Column name Interest_DM_Concept_ID */
    public static final String COLUMNNAME_Interest_DM_Concept_ID = "Interest_DM_Concept_ID";

	/** Set Concept (Days of Month of Interest)	  */
	public void setInterest_DM_Concept_ID (int Interest_DM_Concept_ID);

	/** Get Concept (Days of Month of Interest)	  */
	public int getInterest_DM_Concept_ID();

	public org.eevolution.model.I_HR_Concept getInterest_DM_Concept() throws RuntimeException;

    /** Column name Interest_ND_Concept_ID */
    public static final String COLUMNNAME_Interest_ND_Concept_ID = "Interest_ND_Concept_ID";

	/** Set Concept (Not Due of Interest)	  */
	public void setInterest_ND_Concept_ID (int Interest_ND_Concept_ID);

	/** Get Concept (Not Due of Interest)	  */
	public int getInterest_ND_Concept_ID();

	public org.eevolution.model.I_HR_Concept getInterest_ND_Concept() throws RuntimeException;

    /** Column name Interest_NDT_Concept_ID */
    public static final String COLUMNNAME_Interest_NDT_Concept_ID = "Interest_NDT_Concept_ID";

	/** Set Concept (Not Due of Interest Tax)	  */
	public void setInterest_NDT_Concept_ID (int Interest_NDT_Concept_ID);

	/** Get Concept (Not Due of Interest Tax)	  */
	public int getInterest_NDT_Concept_ID();

	public org.eevolution.model.I_HR_Concept getInterest_NDT_Concept() throws RuntimeException;

    /** Column name Interest_PB_Concept_ID */
    public static final String COLUMNNAME_Interest_PB_Concept_ID = "Interest_PB_Concept_ID";

	/** Set Concept (Previous Balance)	  */
	public void setInterest_PB_Concept_ID (int Interest_PB_Concept_ID);

	/** Get Concept (Previous Balance)	  */
	public int getInterest_PB_Concept_ID();

	public org.eevolution.model.I_HR_Concept getInterest_PB_Concept() throws RuntimeException;

    /** Column name Interest_R_Concept_ID */
    public static final String COLUMNNAME_Interest_R_Concept_ID = "Interest_R_Concept_ID";

	/** Set Concept (Rate of Interest)	  */
	public void setInterest_R_Concept_ID (int Interest_R_Concept_ID);

	/** Get Concept (Rate of Interest)	  */
	public int getInterest_R_Concept_ID();

	public org.eevolution.model.I_HR_Concept getInterest_R_Concept() throws RuntimeException;

    /** Column name Interest_T_Concept_ID */
    public static final String COLUMNNAME_Interest_T_Concept_ID = "Interest_T_Concept_ID";

	/** Set Concept (Top Capital)	  */
	public void setInterest_T_Concept_ID (int Interest_T_Concept_ID);

	/** Get Concept (Top Capital)	  */
	public int getInterest_T_Concept_ID();

	public org.eevolution.model.I_HR_Concept getInterest_T_Concept() throws RuntimeException;

    /** Column name Interest_TI_Concept_ID */
    public static final String COLUMNNAME_Interest_TI_Concept_ID = "Interest_TI_Concept_ID";

	/** Set Incidence (Total Interest)	  */
	public void setInterest_TI_Concept_ID (int Interest_TI_Concept_ID);

	/** Get Incidence (Total Interest)	  */
	public int getInterest_TI_Concept_ID();

	public org.eevolution.model.I_HR_Concept getInterest_TI_Concept() throws RuntimeException;

    /** Column name Interest_TT_Concept_ID */
    public static final String COLUMNNAME_Interest_TT_Concept_ID = "Interest_TT_Concept_ID";

	/** Set Incidence (Total Tax)	  */
	public void setInterest_TT_Concept_ID (int Interest_TT_Concept_ID);

	/** Get Incidence (Total Tax)	  */
	public int getInterest_TT_Concept_ID();

	public org.eevolution.model.I_HR_Concept getInterest_TT_Concept() throws RuntimeException;

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name Loan_A_Concept_ID */
    public static final String COLUMNNAME_Loan_A_Concept_ID = "Loan_A_Concept_ID";

	/** Set Concept (Accumulated of Loan)	  */
	public void setLoan_A_Concept_ID (int Loan_A_Concept_ID);

	/** Get Concept (Accumulated of Loan)	  */
	public int getLoan_A_Concept_ID();

	public org.eevolution.model.I_HR_Concept getLoan_A_Concept() throws RuntimeException;

    /** Column name Loan_C_Concept_ID */
    public static final String COLUMNNAME_Loan_C_Concept_ID = "Loan_C_Concept_ID";

	/** Set Concept (Calculation of Loan)	  */
	public void setLoan_C_Concept_ID (int Loan_C_Concept_ID);

	/** Get Concept (Calculation of Loan)	  */
	public int getLoan_C_Concept_ID();

	public org.eevolution.model.I_HR_Concept getLoan_C_Concept() throws RuntimeException;

    /** Column name Loan_D_Concept_ID */
    public static final String COLUMNNAME_Loan_D_Concept_ID = "Loan_D_Concept_ID";

	/** Set Concept (Deduction of Loan)	  */
	public void setLoan_D_Concept_ID (int Loan_D_Concept_ID);

	/** Get Concept (Deduction of Loan)	  */
	public int getLoan_D_Concept_ID();

	public org.eevolution.model.I_HR_Concept getLoan_D_Concept() throws RuntimeException;

    /** Column name Loan_F_Concept_ID */
    public static final String COLUMNNAME_Loan_F_Concept_ID = "Loan_F_Concept_ID";

	/** Set Concept (Flag of Loan)	  */
	public void setLoan_F_Concept_ID (int Loan_F_Concept_ID);

	/** Get Concept (Flag of Loan)	  */
	public int getLoan_F_Concept_ID();

	public org.eevolution.model.I_HR_Concept getLoan_F_Concept() throws RuntimeException;

    /** Column name Loan_I_Concept_ID */
    public static final String COLUMNNAME_Loan_I_Concept_ID = "Loan_I_Concept_ID";

	/** Set Concept (Incidence of Loan)	  */
	public void setLoan_I_Concept_ID (int Loan_I_Concept_ID);

	/** Get Concept (Incidence of Loan)	  */
	public int getLoan_I_Concept_ID();

	public org.eevolution.model.I_HR_Concept getLoan_I_Concept() throws RuntimeException;

    /** Column name Loan_I_SP_Concept_ID */
    public static final String COLUMNNAME_Loan_I_SP_Concept_ID = "Loan_I_SP_Concept_ID";

	/** Set Concept (Incidence Special Payment)	  */
	public void setLoan_I_SP_Concept_ID (int Loan_I_SP_Concept_ID);

	/** Get Concept (Incidence Special Payment)	  */
	public int getLoan_I_SP_Concept_ID();

	public org.eevolution.model.I_HR_Concept getLoan_I_SP_Concept() throws RuntimeException;

    /** Column name Loan_P_Concept_ID */
    public static final String COLUMNNAME_Loan_P_Concept_ID = "Loan_P_Concept_ID";

	/** Set Concept (Payment Term)	  */
	public void setLoan_P_Concept_ID (int Loan_P_Concept_ID);

	/** Get Concept (Payment Term)	  */
	public int getLoan_P_Concept_ID();

	public org.eevolution.model.I_HR_Concept getLoan_P_Concept() throws RuntimeException;

    /** Column name Loan_T_Concept_ID */
    public static final String COLUMNNAME_Loan_T_Concept_ID = "Loan_T_Concept_ID";

	/** Set Concept (Top of Loan)	  */
	public void setLoan_T_Concept_ID (int Loan_T_Concept_ID);

	/** Get Concept (Top of Loan)	  */
	public int getLoan_T_Concept_ID();

	public org.eevolution.model.I_HR_Concept getLoan_T_Concept() throws RuntimeException;

    /** Column name LVE_HR_LoanDefinition_ID */
    public static final String COLUMNNAME_LVE_HR_LoanDefinition_ID = "LVE_HR_LoanDefinition_ID";

	/** Set Loan Definition	  */
	public void setLVE_HR_LoanDefinition_ID (int LVE_HR_LoanDefinition_ID);

	/** Get Loan Definition	  */
	public int getLVE_HR_LoanDefinition_ID();

    /** Column name ManagesInterest */
    public static final String COLUMNNAME_ManagesInterest = "ManagesInterest";

	/** Set Manages Interest	  */
	public void setManagesInterest (boolean ManagesInterest);

	/** Get Manages Interest	  */
	public boolean isManagesInterest();

    /** Column name Name */
    public static final String COLUMNNAME_Name = "Name";

	/** Set Name.
	  * Alphanumeric identifier of the entity
	  */
	public void setName (String Name);

	/** Get Name.
	  * Alphanumeric identifier of the entity
	  */
	public String getName();

    /** Column name Processed */
    public static final String COLUMNNAME_Processed = "Processed";

	/** Set Processed.
	  * The document has been processed
	  */
	public void setProcessed (boolean Processed);

	/** Get Processed.
	  * The document has been processed
	  */
	public boolean isProcessed();

    /** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Process Now	  */
	public void setProcessing (boolean Processing);

	/** Get Process Now	  */
	public boolean isProcessing();

    /** Column name Tax_C_Concept_ID */
    public static final String COLUMNNAME_Tax_C_Concept_ID = "Tax_C_Concept_ID";

	/** Set Concept (Calculation of Tax)	  */
	public void setTax_C_Concept_ID (int Tax_C_Concept_ID);

	/** Get Concept (Calculation of Tax)	  */
	public int getTax_C_Concept_ID();

	public org.eevolution.model.I_HR_Concept getTax_C_Concept() throws RuntimeException;

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();

    /** Column name Value */
    public static final String COLUMNNAME_Value = "Value";

	/** Set Search Key.
	  * Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value);

	/** Get Search Key.
	  * Search key for the record in the format required - must be unique
	  */
	public String getValue();
}
