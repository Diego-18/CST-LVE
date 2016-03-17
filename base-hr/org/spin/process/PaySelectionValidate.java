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
 * Copyright (C) 2003-2014 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.process;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.eevolution.model.MHRPaySelection;
import org.eevolution.model.MHRPaySelectionLine;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class PaySelectionValidate extends SvrProcess {

	/**	Record Identifier	*/
	private int 	p_Record_ID		= 0;
	/**	Is Valid			*/
	private String	p_IsValid		= null;
	
	
	@Override
	protected void prepare() {
		
		for (ProcessInfoParameter para : getParameter()) {
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if(name.equals("IsValid"))
				p_IsValid = (String) para.getParameter();
		}
		//	Get Record Identifier
		p_Record_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception {
		//	Valid Record
		if(p_Record_ID == 0)
			throw new AdempiereException("@HR_PaySelection_ID@ @NotFound@");
		//	Valid Parameter
		if(p_IsValid == null)
			throw new AdempiereException("@IsValid@ @NotFound@");
		//	Change
		MHRPaySelection paySelection = new MHRPaySelection(getCtx(), p_Record_ID, get_TrxName());
		//	Valid "Is Valid"
		String m_IsValid = paySelection.get_ValueAsString("IsValid");
		//	
		if(m_IsValid != null
				&& m_IsValid.equals("N"))
			return "Ok";
		//	Valid Payment
		int m_C_Payment_ID = DB.getSQLValue(get_TrxName(), "SELECT MAX(p.C_Payment_ID) " +
				"FROM HR_PaySelection ps " +
				"INNER JOIN HR_PaySelectionCheck psc ON(psc.HR_PaySelection_ID = ps.HR_PaySelection_ID) " +
				"INNER JOIN C_Payment p ON(p.C_Payment_ID = psc.C_Payment_ID) " +
				"WHERE ps.HR_PaySelection_ID = ? " +
				"AND p.DocStatus IN('CO', 'CL')", p_Record_ID);
		//	
		if(m_C_Payment_ID <= 0) {
			paySelection.set_ValueOfColumn("IsValid", p_IsValid);
			paySelection.setProcessed(true);
			paySelection.saveEx();
			//	Processed Lines
			for(MHRPaySelectionLine line : paySelection.getLines(false)) {
				line.setProcessed(true);
				line.saveEx();
			}
		} else {
			throw new AdempiereException("@IsPaid@");
		}
		//	
		return "Ok";
	}

}
