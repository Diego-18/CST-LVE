/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
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
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.spin.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempiere.model.ImportValidator;
import org.adempiere.process.ImportProcess;
import org.compiere.model.ModelValidationEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.eevolution.model.MHRDepartment;
import org.spin.model.X_I_HR_Department;

/**
 *	Import Products Category from I_HR_Department
 *
 * 	@author 	Carlos Parada
 * 	@version 	$Id: ImportPayrollDepartment.java,v 1.0 2013/08/08 00:00:00
 */
public class ImportPayrollDepartment extends SvrProcess implements ImportProcess
{
	/**	Client to be imported to		*/
	private int				m_AD_Client_ID = 0;
	/**	Delete old Imported				*/
	private boolean			m_deleteOldImported = false;

	/** Effective						*/
	private Timestamp		m_DateValue = null;

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (name.equals("AD_Client_ID"))
				m_AD_Client_ID = ((BigDecimal)para[i].getParameter()).intValue();
			else if (name.equals("DeleteOldImported"))
				m_deleteOldImported = "Y".equals(para[i].getParameter());
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		if (m_DateValue == null)
			m_DateValue = new Timestamp (System.currentTimeMillis());
	}	//	prepare


	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception
	 */
	protected String doIt() throws java.lang.Exception
	{
		StringBuffer sql = null;
		int no = 0;
		String clientCheck = getWhereClause();

		//	****	Prepare	****

		//	Delete Old Imported
		if (m_deleteOldImported)
		{
			sql = new StringBuffer ("DELETE I_HR_Department "
				+ "WHERE I_IsImported='Y'").append(clientCheck);
			no = DB.executeUpdate(sql.toString(), get_TrxName());
			log.info("Delete Old Imported =" + no);
		}

		//	Set Client, Org, IaActive, Created/Updated, 
		sql = new StringBuffer ("UPDATE I_HR_Department "
			+ "SET AD_Client_ID = COALESCE (AD_Client_ID, ").append(m_AD_Client_ID).append("),"
			+ " AD_Org_ID = COALESCE (AD_Org_ID, 0),"
			+ " IsActive = COALESCE (IsActive, 'Y'),"
			+ " Created = COALESCE (Created, SysDate),"
			+ " CreatedBy = COALESCE (CreatedBy, 0),"
			+ " Updated = COALESCE (Updated, SysDate),"
			+ " UpdatedBy = COALESCE (UpdatedBy, 0),"
			+ " I_ErrorMsg = ' ',"
			+ " I_IsImported = 'N' "
			+ "WHERE I_IsImported<>'Y' OR I_IsImported IS NULL");
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Reset=" + no);

		ModelValidationEngine.get().fireImportValidate(this, null, null, ImportValidator.TIMING_BEFORE_VALIDATE);
		

		
		//	****	Find Payroll Department
		//	Value
		sql = new StringBuffer ("UPDATE I_HR_Department i "
			+ "SET HR_Department_ID=(SELECT HR_Department_ID FROM HR_Department d"
			+ " WHERE i.Value=d.Value AND i.AD_Client_ID=d.AD_Client_ID) "
			+ "WHERE HR_Department_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("HR_Department Existing =" + no);

		//	Activity
		sql = new StringBuffer ("UPDATE I_HR_Department i "
			  + "SET C_Activity_ID=(SELECT C_Activity_ID FROM C_Activity p"
			  + " WHERE i.ActivityValue=p.Value AND i.AD_Client_ID=p.AD_Client_ID) "
			  + "WHERE C_Activity_ID IS NULL AND ActivityValue IS NOT NULL AND I_IsImported<>'Y'").append (clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.fine("Set Activity=" + no);
		sql = new StringBuffer ("UPDATE I_HR_Department "
				  + "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Invalid Activity, ' "
				  + "WHERE C_Activity_ID IS NULL AND (ActivityValue IS NOT NULL)"
				  + " AND I_IsImported<>'Y'").append (clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());


		//	Unique UHRD/Value
		sql = new StringBuffer ("UPDATE I_HR_Department i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Value not unique,' "
			+ "WHERE I_IsImported<>'Y'"
			+ " AND Value IN (SELECT Value FROM I_HR_Department ii WHERE i.AD_Client_ID=ii.AD_Client_ID GROUP BY Value HAVING COUNT(*) > 1)").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		if (no != 0)
			log.warning("Not Unique Value=" + no);

		
		ModelValidationEngine.get().fireImportValidate(this, null, null, ImportValidator.TIMING_AFTER_VALIDATE);

		commitEx();
		
		//	-------------------------------------------------------------------
		int noInsert = 0;
		int noUpdate = 0;
		
		//	Go through Records
		log.fine("start inserting/updating ...");
		sql = new StringBuffer ("SELECT * FROM I_HR_Department WHERE I_IsImported='N'")
			.append(clientCheck)
			.append(" Order By I_HR_Department_ID");
		try
		{
			//	Set Imported = Y
			PreparedStatement pstmt_setImported = DB.prepareStatement
				("UPDATE I_HR_Department SET I_IsImported='Y', HR_Department_ID=?, "
				+ "Updated=SysDate, Processed='Y' WHERE I_HR_Department_ID=?", get_TrxName());

			//
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				X_I_HR_Department imp = new X_I_HR_Department(getCtx(), rs, get_TrxName());
				int I_HR_Department_ID = imp.getI_HR_Department_ID();
				int HR_Department_ID = imp.getHR_Department_ID();
				
				boolean newRecord = HR_Department_ID == 0;
				log.fine("I_HR_Department_ID=" + I_HR_Department_ID + ", HR_Department_ID=" + HR_Department_ID );

				//	Payroll Department
				if (newRecord)			//	Insert new Payroll Department
				{
					MHRDepartment newPO = new MHRDepartment(getCtx(), 0, get_TrxName());
					newPO.setValue(imp.getValue());
					newPO.setName(imp.getName());
					newPO.setDescription(imp.getDescription());
					newPO.setC_Activity_ID(imp.getC_Activity_ID());
					ModelValidationEngine.get().fireImportValidate(this, imp, newPO, ImportValidator.TIMING_AFTER_IMPORT);
					if (newPO.save(get_TrxName()))
					{
						HR_Department_ID = newPO.getHR_Department_ID();
						log.finer("Insert Payroll Department");
						noInsert++;
					}
					else
					{
						StringBuffer sql0 = new StringBuffer ("UPDATE I_HR_Department i "
							+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||").append(DB.TO_STRING("Insert Payroll Department failed"))
							.append("WHERE I_HR_Department_ID=").append(I_HR_Department_ID);
						DB.executeUpdate(sql0.toString(), get_TrxName());
						continue;
					}
				}
				else//	Update Payroll Department		
				{
					String sqlt = "UPDATE HR_Department "
						+ "SET (Value,Name,C_Activity_ID,Description)= "
						+ "(SELECT Value,Name,C_Activity_ID,Description "
						+ " FROM I_HR_Department WHERE I_HR_Department_ID="+I_HR_Department_ID+") "
						+ "WHERE HR_Department_ID="+HR_Department_ID;
					PreparedStatement pstmt_updateProduct = DB.prepareStatement
						(sqlt, get_TrxName());

					try
					{
						no = pstmt_updateProduct.executeUpdate();
						log.finer("Update Payroll Department= " + no);
						noUpdate++;
					}
					catch (SQLException ex)
					{
						log.warning("Update Payroll Department- " + ex.toString());
						StringBuffer sql0 = new StringBuffer ("UPDATE I_HR_Department i "
							+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||").append(DB.TO_STRING("Update Payroll Department: " + ex.toString()))
							.append("WHERE I_HR_Department_ID=").append(I_HR_Department_ID);
						DB.executeUpdate(sql0.toString(), get_TrxName());
						continue;
					}
					pstmt_updateProduct.close();
				}


				//	Update I_HR_Department
				pstmt_setImported.setInt(1, HR_Department_ID);
				pstmt_setImported.setInt(2, I_HR_Department_ID);
				no = pstmt_setImported.executeUpdate();
				//
				commitEx();
			}	//	for all I_HR_Department
			rs.close();
			pstmt.close();

			pstmt_setImported.close();
			//
		}
		catch (SQLException e)
		{
		}

		//	Set Error to indicator to not imported
		sql = new StringBuffer ("UPDATE I_HR_Department "
			+ "SET I_IsImported='N', Updated=SysDate "
			+ "WHERE I_IsImported<>'Y'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		addLog (0, null, new BigDecimal (no), "@Errors@");
		addLog (0, null, new BigDecimal (noInsert), "@HR_Department_ID@: @Inserted@");
		addLog (0, null, new BigDecimal (noUpdate), "@HR_Department_ID@: @Updated@");
		
		return "";
	}	//	doIt


	@Override
	public String getImportTableName() {
		return X_I_HR_Department.Table_Name;
	}


	@Override
	public String getWhereClause() {
		return " AND AD_Client_ID=" + m_AD_Client_ID;
	}

}	//	ImportPayrollDepartment
