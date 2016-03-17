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
import org.eevolution.model.MHRAttribute;
import org.eevolution.model.MHREmployee;
import org.spin.model.X_I_HR_Employee;

/**
 *	Import Employee from I_HR_Employee
 *
 * 	@author 	Carlos Parada
 * 	@version 	$Id: ImportEmployee.java,v 1.1 2013/08/00 00:00:00
 * 
 */
public class ImportPayrollEmployee extends SvrProcess implements ImportProcess
{
	/**	Client to be imported to		*/
	private int				m_AD_Client_ID = 0;
	
	/**	Org to be imported to		*/
	private int				m_AD_Org_ID = 0;
	
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
			else if (name.equals("AD_Org_ID"))
				m_AD_Org_ID = ((BigDecimal)para[i].getParameter()).intValue();
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
			sql = new StringBuffer ("DELETE I_HR_Employee "
				+ "WHERE I_IsImported='Y'").append(clientCheck);
			no = DB.executeUpdate(sql.toString(), get_TrxName());
			log.info("Delete Old Imported =" + no);
		}

		//	Set Client, Org, IaActive, Created/Updated
		sql = new StringBuffer ("UPDATE I_HR_Employee "
			+ "SET AD_Client_ID = COALESCE (AD_Client_ID, ").append(m_AD_Client_ID).append("),"
			+ " AD_Org_ID =  ").append(m_AD_Org_ID).append(","
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
		
		
		//	****	Find Business Partner
		//	Value
		sql = new StringBuffer ("UPDATE I_HR_Employee i "
			+ "SET C_BPartner_ID =(SELECT C_BPartner_ID FROM C_BPartner bp"
			+ " WHERE i.BPartnerValue=bp.Value AND i.AD_Client_ID=bp.AD_Client_ID) "
			+ "WHERE C_BPartner_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Business Partner Existing Value=" + no);
		
		//	****	Find Employee
		//	Value
		sql = new StringBuffer ("UPDATE I_HR_Employee i "
			+ "SET HR_Employee_ID =(SELECT e.HR_Employee_ID FROM HR_Employee e "
			+ " WHERE i.C_BPartner_ID=e.C_BPartner_ID AND i.AD_Client_ID=e.AD_Client_ID) "
			+ "WHERE HR_Employee_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Employee Existing Value=" + no);
			
		//	****	Find HR Department
		//	Value
		sql = new StringBuffer ("UPDATE I_HR_Employee i "
			+ "SET HR_Department_ID =(SELECT HR_Department_ID FROM HR_Department hrd"
			+ " WHERE i.HR_Department_Value=hrd.Value AND i.AD_Client_ID=hrd.AD_Client_ID) "
			+ "WHERE HR_Department_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("HR Department Existing Value=" + no);
			
		//	****	Find HR Job
		//	Value
		sql = new StringBuffer ("UPDATE I_HR_Employee i "
			+ "SET HR_Job_ID =(SELECT HR_Job_ID FROM HR_Job hrj"
			+ " WHERE i.HR_Job_Value=hrj.Value AND i.AD_Client_ID=hrj.AD_Client_ID) "
			+ "WHERE HR_Job_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("HR Job Existing Value=" + no);

		//	****	Find HR Payroll
		//	Value
		sql = new StringBuffer ("UPDATE I_HR_Employee i "
			+ "SET HR_Payroll_ID =(SELECT HR_Payroll_ID FROM HR_Payroll hrp"
			+ " WHERE i.HR_PayRoll_Value=hrp.Value AND i.AD_Client_ID=hrp.AD_Client_ID) "
			+ "WHERE HR_Payroll_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("HR Payroll Existing Value=" + no);

		//	****	Find Activity
		//	Value
		sql = new StringBuffer ("UPDATE I_HR_Employee i "
			+ "SET C_Activity_ID =(SELECT C_Activity_ID FROM C_Activity a"
			+ " WHERE i.ActivityValue=a.Value AND i.AD_Client_ID=a.AD_Client_ID) "
			+ "WHERE C_Activity_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Activity Existing Value=" + no);

		//	****	Find Concept
		//	Value
		sql = new StringBuffer ("UPDATE I_HR_Employee i "
			+ "SET (HR_Concept_ID,ColumnType) =(SELECT HR_Concept_ID,ColumnType FROM HR_Concept c"
			+ " WHERE i.ConceptValue=c.Value AND i.AD_Client_ID=c.AD_Client_ID) "
			+ "WHERE HR_Concept_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Concept Existing Value=" + no);

		//	****	Find Attribute
		//	Value
		sql = new StringBuffer ("UPDATE I_HR_Employee i "
			+ "SET HR_Attribute_ID =(SELECT HR_Attribute_ID FROM HR_Attribute a"
			+ " WHERE i.HR_Concept_ID=a.HR_Concept_ID AND i.ValidFrom=a.ValidFrom AND i.AD_Client_ID=a.AD_Client_ID AND i.C_BPartner_ID=a.C_BPartner_ID) "
			+ "WHERE HR_Attribute_ID IS NULL"
			+ " AND I_IsImported='N'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		log.info("Attribute Existing =" + no);
		
		//Error Invalid Business Partner
		sql = new StringBuffer ("UPDATE I_HR_Employee "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Invalid BPartner,' "
			+ "WHERE C_BPartner_ID IS NULL AND BPartnerValue IS NOT NULL"
			+ " AND I_IsImported<>'Y'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		if (no != 0)
			log.warning("Invalid BPartner=" + no);
		
		//Error Invalid HR Department
		sql = new StringBuffer ("UPDATE I_HR_Employee "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Invalid HRDepartment,' "
			+ "WHERE HR_Department_ID IS NULL AND HR_Department_Value IS NOT NULL"
			+ " AND I_IsImported<>'Y'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		if (no != 0)
			log.warning("Invalid HR Department=" + no);
		
		//Error Invalid HR Job
		sql = new StringBuffer ("UPDATE I_HR_Employee "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Invalid HRJob,' "
			+ "WHERE HR_Job_ID IS NULL AND HR_Job_Value IS NOT NULL"
			+ " AND I_IsImported<>'Y'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		if (no != 0)
			log.warning("Invalid HR Job=" + no);

		//Error Invalid HR PayRoll
		sql = new StringBuffer ("UPDATE I_HR_Employee "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Invalid HRPayRoll,' "
			+ "WHERE HR_PayRoll_ID IS NULL AND HR_PayRoll_Value IS NOT NULL"
			+ " AND I_IsImported<>'Y'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		if (no != 0)
			log.warning("Invalid HR PayRoll=" + no);
		
		//Error Invalid Activity
		sql = new StringBuffer ("UPDATE I_HR_Employee "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Invalid Activity,' "
			+ "WHERE C_Activity_ID IS NULL AND ActivityValue IS NOT NULL"
			+ " AND I_IsImported<>'Y'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		if (no != 0)
			log.warning("Invalid Activity=" + no);
		
		//Error Invalid Concept
		sql = new StringBuffer ("UPDATE I_HR_Employee "
			+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||'ERR=Invalid Concept,' "
			+ "WHERE HR_Concept_ID IS NULL AND ConceptValue IS NOT NULL"
			+ " AND I_IsImported<>'Y'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		if (no != 0)
			log.warning("Invalid Concept=" + no);
		
		ModelValidationEngine.get().fireImportValidate(this, null, null, ImportValidator.TIMING_AFTER_VALIDATE);

		commitEx();
		
		//	-------------------------------------------------------------------
		int noInsert = 0;
		int noUpdate = 0;
		
		//	Go through Records
		log.fine("start inserting/updating ...");
		sql = new StringBuffer ("SELECT * FROM I_HR_Employee WHERE I_IsImported='N' ")
			.append(clientCheck)
			.append(" Order By BPartnerValue,ConceptValue");
		try
		{
			//	Set Imported = Y
			PreparedStatement pstmt_setImported = DB.prepareStatement
				("UPDATE I_HR_Employee SET I_IsImported='Y', HR_Employee_ID=?, "
				+ "Updated=SysDate, Processed='Y' WHERE I_HR_Employee_ID=?", get_TrxName());

			//
			PreparedStatement pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
				X_I_HR_Employee imp = new X_I_HR_Employee(getCtx(), rs, get_TrxName());
				int I_HR_Employee_ID = imp.getI_HR_Employee_ID();
				int HR_Employee_ID = imp.getHR_Employee_ID();
				
				boolean newHREmployee = HR_Employee_ID == 0;
				log.fine("I_HR_Employee_ID=" + I_HR_Employee_ID + ", HR_Employee_ID=" + HR_Employee_ID );

				//	Employee
				if (newHREmployee)			//	Insert new Employee
				{
					MHREmployee employee = new MHREmployee(getCtx(), 0, get_TrxName());
					
					employee.setAD_Org_ID(imp.getAD_Org_ID());
					employee.setC_BPartner_ID(imp.getC_BPartner_ID());
					employee.setNationalCode(imp.getNationalCode());
					employee.setSSCode(imp.getSSCode());
					employee.setStartDate(imp.getStartDate());
					employee.setEndDate(imp.getEndDate());
					employee.setHR_Department_ID(imp.getHR_Department_ID());
					employee.setHR_Job_ID(imp.getHR_Job_ID());
					employee.setHR_Payroll_ID(imp.getHR_Payroll_ID());
					employee.setC_Activity_ID(imp.getC_Activity_ID());
					employee.setCode(imp.getCode());
					employee.setImageURL(imp.getImageURL());
					
					ModelValidationEngine.get().fireImportValidate(this, imp, employee, ImportValidator.TIMING_AFTER_IMPORT);
					if (employee.save())
					{
						HR_Employee_ID = employee.getHR_Employee_ID();
						imp.setHR_Employee_ID(HR_Employee_ID);
						log.finer("Insert Employee");
						noInsert++;
					}
					else
					{
						StringBuffer sql0 = new StringBuffer ("UPDATE I_HR_Employee i "
							+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||").append(DB.TO_STRING("Insert Employee failed"))
							.append("WHERE I_HR_Employee_ID=").append(I_HR_Employee_ID);
						DB.executeUpdate(sql0.toString(), get_TrxName());
						continue;
					}
				}
				else//	Update Employee		
				{
					String sqlt = "UPDATE HR_Employee "
						+ "SET (C_BPartner_ID,NationalCode,SSCode,StartDate,EndDate,HR_Department_ID,HR_Job_ID,HR_PayRoll_ID,C_Activity_ID,Code,ImageURL,AD_Org_ID)= "
						+ "(SELECT C_BPartner_ID,NationalCode,SSCode,StartDate,EndDate,HR_Department_ID,HR_Job_ID,HR_PayRoll_ID,C_Activity_ID,Code,ImageURL,AD_Org_ID "
						+ " FROM I_HR_Employee WHERE I_HR_Employee_ID="+I_HR_Employee_ID+") "
						+ "WHERE HR_Employee_ID="+HR_Employee_ID;
					PreparedStatement pstmt_updateProduct = DB.prepareStatement
						(sqlt, get_TrxName());

					try
					{
						no = pstmt_updateProduct.executeUpdate();
						log.finer("Update Employee= " + no);
						noUpdate++;
					}
					catch (SQLException ex)
					{
						log.warning("Update Employee- " + ex.toString());
						StringBuffer sql0 = new StringBuffer ("UPDATE I_HR_Employee i "
							+ "SET I_IsImported='E', I_ErrorMsg=I_ErrorMsg||").append(DB.TO_STRING("Update Employee: " + ex.toString()))
							.append("WHERE I_HR_Employee_ID=").append(I_HR_Employee_ID);
						DB.executeUpdate(sql0.toString(), get_TrxName());
						continue;
					}
					pstmt_updateProduct.close();
				}
				
				//Create Attribute
				if (imp.getHR_Employee_ID()!=0 && imp.getHR_Concept_ID()!=0)
				{
					MHRAttribute att = new MHRAttribute(getCtx(), imp.getHR_Attribute_ID(), get_TrxName());
					att.setC_BPartner_ID(imp.getC_BPartner_ID());
					att.setHR_Concept_ID(imp.getHR_Concept_ID());
					att.setColumnType(imp.getColumnType());
					att.setDescription(imp.getDescription());
					att.setAmount(imp.getAmount());
					att.setQty(imp.getQty());
					att.setServiceDate(imp.getServiceDate());
					att.setTextMsg(imp.getTextMsg());
					att.setIsPrinted(imp.isPrinted());
					att.setMaxValue(imp.getMaxValue());
					att.setMinValue(imp.getMinValue());
					att.setValidFrom(imp.getValidFrom());
					att.setValidTo(imp.getValidTo());
						
					att.save(get_TrxName());
					
				}
				else
					log.warning("No Attribute Employee");

				//	Update I_Product
				pstmt_setImported.setInt(1, HR_Employee_ID);
				pstmt_setImported.setInt(2, I_HR_Employee_ID);
				no = pstmt_setImported.executeUpdate();
				//
				commitEx();
			}	//	for all I_HR_Employee
			rs.close();
			pstmt.close();

			pstmt_setImported.close();
			//
		}
		catch (SQLException e)
		{
		}

		//	Set Error to indicator to not imported
		sql = new StringBuffer ("UPDATE I_HR_Employee "
			+ "SET I_IsImported='N', Updated=SysDate "
			+ "WHERE I_IsImported<>'Y'").append(clientCheck);
		no = DB.executeUpdate(sql.toString(), get_TrxName());
		addLog (0, null, new BigDecimal (no), "@Errors@");
		addLog (0, null, new BigDecimal (noInsert), "@HR_Employee_ID@: @Inserted@");
		addLog (0, null, new BigDecimal (noUpdate), "@HR_Employee_ID@: @Updated@");
		
		return "";
	}	//	doIt


	@Override
	public String getImportTableName() {
		return X_I_HR_Employee.Table_Name;
	}


	@Override
	public String getWhereClause() {
		return " AND AD_Client_ID=" + m_AD_Client_ID;
	}

}	//	ImportEmployee
