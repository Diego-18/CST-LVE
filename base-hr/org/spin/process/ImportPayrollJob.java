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
import org.eevolution.model.X_HR_Job;
import org.spin.model.X_I_HR_Job;

/**
 *	Import Products Category from I_HR_Job
 *
 * 	@author 	Carlos Parada
 * 	@version 	$Id: ImportPayrollJob.java,v 1.0 2013/08/08 00:00:00
 */
public class ImportPayrollJob extends SvrProcess implements ImportProcess
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
			sql = new StringBuffer ("DELETE I_HR_Job "
				+ "WHERE I_IsImported='Y'").append(clientCheck);
			no = DB.executeUpdate(sql.toString(), get_TrxName());
			log.info("Delete Old Imported =" + no);
		}

		//	Set Client, Org, IaActive, Created/Updated, 
		sql = new StringBuffer ("UPDATE I_HR_Job "
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
		

		
		//	****	Find Payroll Job
		//	Value
		sql = new StringBuffer ("UPDATE I_HR_Job i "
			+ "SET HR_Job_ID=(SELECT HR_Job_ID FROM HR_Job j"
			+ " WHERE i.Value=j.Value AND i.AD_Client_ID=j.AD_Client_ID) "
			+ "WHERE HR_Job_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("HR_Job Existing =" + no);

		//	Payroll Department
		sql = new StringBuffer ("UPDATE I_HR_Job i "
			  + "SET HR_Department_ID=(SELECT HR_Department_ID FROM HR_Department d"
			  + " WHERE i.HR_Department_Value=d.Value AND i.AD_Client_ID=d.AD_Client_ID) "
			  + "WHERE HR_Department_ID IS NULL AND HR_Department_Value IS NOT NULL AND I_IsImported<>'Y'").append (clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.fine("Set Payroll Department=" + no);
		
		sql = new StringBuffer ("UPDATE I_HR_Job "
				  + "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Invalid Payroll Department, ' "
				  + "WHERE HR_Department_ID IS NULL AND (HR_Department_Value IS NOT NULL)"
				  + " AND I_IsImported<>'Y'").append (clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());


		//	Unique UHRD/Value
		sql = new StringBuffer ("UPDATE I_HR_Job i "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Value not unique,' "
			+ "WHERE I_IsImported<>'Y'"
			+ " AND Value IN (SELECT Value FROM I_HR_Job ii WHERE i.AD_Client_ID=ii.AD_Client_ID GROUP BY Value HAVING COUNT(*) > 1)").append(clientCheck);
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
		sql = new StringBuffer ("SELECT * FROM I_HR_Job WHERE I_IsImported='N'")
			.append(clientCheck)
			.append(" Order By I_HR_Job_ID");
		try
		{
			//	Set Imported = Y
			PreparedStatement pstmt_setImported = DB.prepareStatement
				("UPDATE I_HR_Job SET I_IsImported='Y', HR_Job_ID=?, "
				+ "Updated=SysDate, Processed='Y' WHERE I_HR_Job_ID=?", get_TrxName());

			//
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				X_I_HR_Job imp = new X_I_HR_Job(getCtx(), rs, get_TrxName());
				int I_HR_Job_ID = imp.getI_HR_Job_ID();
				int HR_Job_ID = imp.getHR_Job_ID();
				
				boolean newRecord = HR_Job_ID == 0;
				log.fine("I_HR_Job_ID=" + I_HR_Job_ID + ", HR_Job_ID=" + HR_Job_ID );

				//	Payroll Job
				if (newRecord)			//	Insert new Payroll Job
				{
					X_HR_Job newPO = new X_HR_Job(getCtx(), 0, get_TrxName());
					newPO.setValue(imp.getValue());
					newPO.setName(imp.getName());
					newPO.setHR_Department_ID(imp.getHR_Department_ID());
					newPO.setDescription(imp.getDescription());
					ModelValidationEngine.get().fireImportValidate(this, imp, newPO, ImportValidator.TIMING_AFTER_IMPORT);
					if (newPO.save(get_TrxName()))
					{
						HR_Job_ID = newPO.getHR_Job_ID();
						log.finer("Insert Payroll Job");
						noInsert++;
					}
					else
					{
						StringBuffer sql0 = new StringBuffer ("UPDATE I_HR_Job i "
							+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||").append(DB.TO_STRING("Insert Payroll Job failed"))
							.append("WHERE I_HR_Job_ID=").append(I_HR_Job_ID);
						DB.executeUpdate(sql0.toString(), get_TrxName());
						continue;
					}
				}
				else//	Update Payroll Job		
				{
					String sqlt = "UPDATE HR_Job "
						+ "SET (Value,Name,HR_Department_ID,Description)= "
						+ "(SELECT Value,Name,HR_Department_ID,Description "
						+ " FROM I_HR_Job WHERE I_HR_Job_ID="+I_HR_Job_ID+") "
						+ "WHERE HR_Job_ID="+HR_Job_ID;
					PreparedStatement pstmt_update = DB.prepareStatement
						(sqlt, get_TrxName());

					try
					{
						no = pstmt_update.executeUpdate();
						log.finer("Update Payroll Job= " + no);
						noUpdate++;
					}
					catch (SQLException ex)
					{
						log.warning("Update Payroll Job- " + ex.toString());
						StringBuffer sql0 = new StringBuffer ("UPDATE I_HR_Job i "
							+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||").append(DB.TO_STRING("Update Payroll Job: " + ex.toString()))
							.append("WHERE I_HR_Job_ID=").append(I_HR_Job_ID);
						DB.executeUpdate(sql0.toString(), get_TrxName());
						continue;
					}
					pstmt_update.close();
				}


				//	Update I_HR_Job
				pstmt_setImported.setInt(1, HR_Job_ID);
				pstmt_setImported.setInt(2, I_HR_Job_ID);
				no = pstmt_setImported.executeUpdate();
				//
				commitEx();
			}	//	for all I_HR_Job
			rs.close();
			pstmt.close();

			pstmt_setImported.close();
			//
		}
		catch (SQLException e)
		{
		}

		//	Set Error to indicator to not imported
		sql = new StringBuffer ("UPDATE I_HR_Job "
			+ "SET I_IsImported='N', Updated=SysDate "
			+ "WHERE I_IsImported<>'Y'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		addLog (0, null, new BigDecimal (no), "@Errors@");
		addLog (0, null, new BigDecimal (noInsert), "@HR_Job_ID@: @Inserted@");
		addLog (0, null, new BigDecimal (noUpdate), "@HR_Job_ID@: @Updated@");
		
		return "";
	}	//	doIt


	@Override
	public String getImportTableName() {
		return X_I_HR_Job.Table_Name;
	}


	@Override
	public String getWhereClause() {
		return " AND AD_Client_ID=" + m_AD_Client_ID;
	}

}	//	ImportPayrollJob
