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
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Carlos Parada www.erpcya.com               				  *
 *****************************************************************************/
package org.spin.process;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.compiere.model.MRequisitionLine;
import org.compiere.model.MRfQ;
import org.compiere.model.MRfQLine;
import org.compiere.model.MRfQLineQty;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
/**
 * Create
 * @author <a href="mailto:dixon22ma@gmail.com">Dixon Martinez</a>
 *
 */
public class CreateFromRequisition extends SvrProcess{

	/**	Sql 					*/
	StringBuffer 	sql 		= new StringBuffer();
	/**	Lines					*/
	private int 	lines 		= 0;
	/**	Request for Quotation	 */
	MRfQLine [] 	rfqLines 	= null;
	
	@Override
	protected void prepare() {
		sql.append("SELECT ts.AD_PInstance_ID, \n" +
							"ts.T_Selection_ID AS M_RequisitionLine_ID, \n" +
							"COALESCE(tsb.QtyAvailable,0) QtyAvailable \n" +
					"FROM T_Selection ts \n" +
					"INNER JOIN (SELECT tsb.AD_PInstance_ID, \n" +
									"tsb.T_Selection_ID, \n" +
									"Max(Case When tsb.ColumnName = 'MR_QtyAvailable' \n" +
										"Then tsb.Value_Number Else Null End) As QtyAvailable \n" +
								"FROM T_Selection_Browse tsb \n" +
								"GROUP BY tsb.AD_PInstance_ID, tsb.T_Selection_ID) tsb On ts.AD_PInstance_ID=tsb.AD_PInstance_ID \n" +
					"AND ts.T_Selection_ID=tsb.T_Selection_ID ");
	     
	     sql.append("WHERE ts.AD_PInstance_ID=? \n");
	     sql.append("ORDER BY ts.T_Selection_ID ");
	     log.fine(sql.toString());
		//sql.append("Select T_Selection_ID From T_Selection Where AD_PInstance_ID=?");
	}

	@Override
	protected String doIt() throws Exception {
		PreparedStatement ps = null;
		ResultSet rs = null;
		MRequisitionLine rl = null;
		ps = DB.prepareStatement(sql.toString(), get_TrxName());
		ps.setInt(1, getAD_PInstance_ID());
		rs = ps.executeQuery();
		int line = 10;
		
//		2015-07-07 Dixon Martinez
//		Set Value Number Line
		MRfQ rfq = new MRfQ(getCtx(),getRecord_ID(),get_TrxName());
		rfqLines = rfq.getLines();
		if(rfqLines.length > 0)
			lines = rfqLines.length; 
//		End Dixon Martinez
		while (rs.next()){
			lines++;
			rl = new MRequisitionLine(getCtx(), rs.getInt("M_RequisitionLine_ID"), get_TrxName());
			MRfQLine rfqline = new MRfQLine(rfq);
			rfqline.setM_Product_ID(rl.getM_Product_ID());
			rfqline.setDescription(rl.getDescription());
			rfqline.setLine(line*lines);
			rfqline.setM_AttributeSetInstance_ID(rl.getM_AttributeSetInstance_ID());;
			rfqline.saveEx(get_TrxName());
			
			MRfQLineQty rfqlineqty = new MRfQLineQty(rfqline);
			//rfqlineqty.setQty(rl.getQty());
			rfqlineqty.setQty(rs.getBigDecimal("QtyAvailable"));
			rfqlineqty.setC_UOM_ID(rl.getC_UOM_ID());
			rfqlineqty.setIsPurchaseQty(true);
			rfqlineqty.set_ValueOfColumn("M_RequisitionLine_ID", rl.get_ID());
			rfqlineqty.saveEx(get_TrxName());
			
		}
		
		DB.close(rs, ps);
		
		return "@Ok@";
	}

}
