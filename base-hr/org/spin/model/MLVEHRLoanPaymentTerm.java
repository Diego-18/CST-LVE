/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * Copyright (C) 2003-2015 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MLVEHRLoanPaymentTerm extends X_LVE_HR_LoanPaymentTerm {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3128352147854959698L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jan 18, 2015, 5:31:46 PM
	 * @param ctx
	 * @param LVE_HR_LoanPaymentTerm_ID
	 * @param trxName
	 */
	public MLVEHRLoanPaymentTerm(Properties ctx, int LVE_HR_LoanPaymentTerm_ID,
			String trxName) {
		super(ctx, LVE_HR_LoanPaymentTerm_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jan 18, 2015, 5:31:46 PM
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MLVEHRLoanPaymentTerm(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	@Override
	protected boolean beforeSave(boolean newRecord) {
		MLVEHRLoan loan = (MLVEHRLoan) getLVE_HR_Loan();
		//	
		if(loan.getDateDoc().after(getValidFrom()))
				throw new AdempiereException("@Invalid@ @ValidFrom@");
		return super.beforeSave(newRecord);
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "MLVEHRLoanPaymentTerm [getValidFrom()=" + getValidFrom()
				+ ", getValidTo()=" + getValidTo() + "]";
	}
}
