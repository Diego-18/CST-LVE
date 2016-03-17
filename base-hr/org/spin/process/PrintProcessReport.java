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

import java.io.File;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.apps.ADialog;
import org.compiere.apps.ProcessCtl;
import org.compiere.model.MQuery;
import org.compiere.model.PrintInfo;
import org.compiere.print.MPrintFormat;
import org.compiere.print.ReportCtl;
import org.compiere.print.ReportEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.swing.CPanel;
import org.compiere.util.Env;
import org.compiere.util.Ini;
import org.compiere.util.Msg;
import org.eevolution.model.I_HR_Process;
import org.eevolution.model.MHRPayroll;
import org.eevolution.model.MHRProcess;
import org.spin.model.I_LVE_HR_ProcessReport;
import org.spin.model.MLVEHRProcessReport;
import org.spin.model.MLVERVHRProcessDetail;
import org.spin.util.HRReportExport;


/**
 * 
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class PrintProcessReport extends SvrProcess {

	/**	Organization							*/
	private int 							p_AD_Org_ID					= 0;
	/**	Contract								*/
	private int 							p_HR_Contract_ID			= 0;
	/**	Payroll									*/
	private int 							p_HR_Payroll_ID				= 0;
	/**	Process 								*/
	private int 							p_HR_Process_ID				= 0;
	/**	Department							*/
	private int 							p_HR_Department_ID			= 0;
	/**	Job										*/
	private int 							p_HR_Job_ID					= 0;
	/**	Business Partner						*/
	private int 							p_C_BPartner_ID				= 0;
	/**	Accounting Date							*/
	private Timestamp 						p_DateAcct					= null;
	/**	Accounting Date To						*/
	private Timestamp 						p_DateAcct_To				= null;
	/**	Process Report							*/
	private int 							p_LVE_HR_ProcessReport_ID	= 0;
	/**	Print Format							*/
	private int 							p_AD_PrintFormat_ID			= 0;
	/**	File Name								*/
	private String 							p_FileName 					= null;
	
	/**	Jasper Print Parameters					*/
	private Vector<ProcessInfoParameter> 	jasperPrintParams 			= null;
	/**	Is File Export							*/
	private String 							m_FileExportClass			= null;
	/**	Window No								*/
	public int         		                m_WindowNo                  = 0;
	private CPanel panel = new CPanel();
	@Override
	
	
	
	protected void prepare() {
		//	Instance Jasper Parameters
		jasperPrintParams = new Vector<ProcessInfoParameter>();
		for (ProcessInfoParameter para : getParameter()) {
			String name = para.getParameterName();
			//	Set Parameter
			if (para.getParameter() != null) {				
				if(name.equals("AD_Org_ID"))
					p_AD_Org_ID = para.getParameterAsInt();
				else if(name.equals("HR_Contract_ID"))
					p_HR_Contract_ID = para.getParameterAsInt();
				else if(name.equals("HR_Payroll_ID"))
					p_HR_Payroll_ID = para.getParameterAsInt();
				else if(name.equals("HR_Department_ID"))
					p_HR_Department_ID = para.getParameterAsInt();
				else if(name.equals("HR_Job_ID"))
					p_HR_Job_ID = para.getParameterAsInt();
				else if(name.equals("C_BPartner_ID"))
					p_C_BPartner_ID = para.getParameterAsInt();
				//	Process Report
				else if(name.equals("LVE_HR_ProcessReport_ID"))
					p_LVE_HR_ProcessReport_ID = para.getParameterAsInt();
				else if(name.equals("AD_PrintFormat_ID"))
					p_AD_PrintFormat_ID = para.getParameterAsInt();
				else if(name.equals("FileName"))
					p_FileName = (String) para.getParameter();
				else if(name.equals("DateAcct")) { 
					p_DateAcct = (Timestamp) para.getParameter();
					p_DateAcct_To = (Timestamp) para.getParameter_To();
				}
				//	Set Parameter to Jasper
				ProcessInfoParameter pip = new ProcessInfoParameter(name, para.getParameter(), 
						para.getParameter_To(), para.getInfo(), para.getInfo_To());
				//	Add to Jasper Report
				jasperPrintParams.add(pip);
				//	Get Standard Parameters
			}
		}
		//	For Rpt Process
		if(p_HR_Process_ID == 0
				&& getTable_ID() == I_HR_Process.Table_ID
				&& getRecord_ID() > 0) {
			p_HR_Process_ID = getRecord_ID();
			//	Set Parameter to Jasper
			ProcessInfoParameter pip = new ProcessInfoParameter(
					I_HR_Process.COLUMNNAME_HR_Process_ID, new BigDecimal(p_HR_Process_ID), 
					null, "", "");
			//	Add to Jasper Report
			jasperPrintParams.add(pip);
		}
		//	
	}

	@Override
	
	protected String doIt() throws Exception 
	{
		//	Valid Process Report
		if(p_LVE_HR_ProcessReport_ID == 0)
			throw new AdempiereException("@LVE_HR_ProcessReport_ID@ @NotFound@");
		//	Set direct print of properties
		boolean directPrint = Ini.isPropertyBool(Ini.P_PRINTPREVIEW);
		//	Get Print Format
		MLVEHRProcessReport pReport = MLVEHRProcessReport.get(getCtx(), p_LVE_HR_ProcessReport_ID);
		//	Action Export File
		if(pReport.isFileExport()) {
//			//	Validate File Name
//			if(p_FileName == null
//					|| p_FileName.length() == 0)
//				throw new AdempiereException("@FileName@ @NotFound@");
			//	Do It
			return exportToFile(pReport);
		}
		//	Valid from Parameter
		if(p_AD_PrintFormat_ID == 0)
			p_AD_PrintFormat_ID = pReport.getAD_PrintFormat_ID();
		//	Get from Payroll
		if(p_AD_PrintFormat_ID == 0) {
			//	Valid Payroll
			if(p_HR_Payroll_ID != 0) {
				MHRPayroll payroll = MHRPayroll.get(getCtx(), p_HR_Payroll_ID);
				p_AD_PrintFormat_ID = payroll.getAD_PrintFormat_ID();
				//	Log
				log.info("Print Format from Payroll");
			}
		}
		//	Get From Process
		if(p_AD_PrintFormat_ID == 0) {
			//	Valid Process
			if(p_HR_Process_ID != 0) { 
				//	Get Process
				MHRProcess process = new MHRProcess(getCtx(), p_HR_Process_ID, get_TrxName());
				//	Get Payroll from Process
				MHRPayroll payroll = MHRPayroll.get(getCtx(), process.getHR_Payroll_ID());
				//	Get Print Format
				p_AD_PrintFormat_ID = payroll.getAD_PrintFormat_ID();
				//	Log
				log.info("Print Format from Process");
			}
		}
		//	Valid Print Format
		if(p_AD_PrintFormat_ID == 0)
			throw new AdempiereException("@AD_PrintFormat_ID@ @NotFound@");
		//	Get Format & Data
		MPrintFormat format = 
				MPrintFormat.get (getCtx(), p_AD_PrintFormat_ID, false);
		//	Get Print Format
		MQuery q = new MQuery(I_LVE_HR_ProcessReport.Table_Name);
			
		q.addRestriction(I_LVE_HR_ProcessReport.COLUMNNAME_LVE_HR_ProcessReport_ID, "=", p_LVE_HR_ProcessReport_ID);
			
		//	Create object Print Info 
		PrintInfo i = 
				new PrintInfo(Msg.translate(getCtx(), I_LVE_HR_ProcessReport.COLUMNNAME_LVE_HR_ProcessReport_ID), 
						getTable_ID(), p_LVE_HR_ProcessReport_ID);
			
		i.setAD_Table_ID(getTable_ID());
			
		//	If exists Print Format 
		if(format != null)	{
			//	Engine
			ReportEngine re = new ReportEngine(getCtx(), format, q , i, get_TrxName()); //	Instance report Engine 
			//	If report engine is not null
			if(format.getJasperProcess_ID() > 0) { 
				//		
				ProcessInfo pi = new ProcessInfo (getProcessInfo().getTitle(), format.getJasperProcess_ID());
				pi.setPrintPreview(!directPrint);
				pi.setRecord_ID (p_LVE_HR_ProcessReport_ID);
				ProcessInfoParameter pip;
				//
				pip = new ProcessInfoParameter(ReportCtl.PARAM_PRINT_FORMAT, format, null, null, null);
				jasperPrintParams.add(pip);
				pip = new ProcessInfoParameter(ReportCtl.PARAM_PRINT_INFO, re.getPrintInfo(), null, null, null);
				jasperPrintParams.add(pip);
				//
				pi.setParameter(jasperPrintParams.toArray(new ProcessInfoParameter[]{}));
				//	Execute Process
				ProcessCtl.process(null, 0, null, pi, null);
			}
		}
		//	
		return "Ok";
	}
	
	/**
	 * Export to file
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 07/08/2014, 22:27:02
	 * @param pReport
	 * @return
	 * @return String
	 */
	private String exportToFile(MLVEHRProcessReport pReport) {
		if(pReport.getFileExportClass() == null
				|| pReport.getFileExportClass().length() == 0)
			throw new AdempiereException("@FileExportClass@ @NotFound@");	
		//	Do It
		int no = 0;
		StringBuffer err = new StringBuffer("");
		m_FileExportClass=pReport.getFileExportClass();
		if (m_FileExportClass == null) 
		{
			m_FileExportClass = "org.spin.util.GenericReportExport";
		}
		//	Add Where Clause
		ArrayList<Object> params = new ArrayList<Object>();
		StringBuffer whereClause = new StringBuffer();
		//	Add Process Report
		whereClause.append("LVE_HR_ProcessReport_ID = ?");
		params.add(p_LVE_HR_ProcessReport_ID);
		//	Add Organization
		if(p_AD_Org_ID != 0) {
			whereClause.append(" AND AD_Org_ID = ?");
			params.add(p_AD_Org_ID);
		}
		//	Add Contract
		if(p_HR_Contract_ID != 0) {
			whereClause.append(" AND HR_Contract_ID = ?");
			params.add(p_HR_Contract_ID);
		}
		//	Add Payroll
		if(p_HR_Payroll_ID != 0) {
			whereClause.append(" AND HR_Payroll_ID = ?");
			params.add(p_HR_Payroll_ID);
		}		
		//	Add Process
		if(p_HR_Process_ID != 0) {
			whereClause.append(" AND HR_Process_ID = ?");
			params.add(p_HR_Process_ID);
		}
		//	Add Department
		if(p_HR_Department_ID != 0) {
			whereClause.append(" AND HR_Department_ID = ?");
			params.add(p_HR_Department_ID);
		}
		//	Add Job
		if(p_HR_Job_ID != 0) {
			whereClause.append(" AND HR_Job_ID = ?");
			params.add(p_HR_Job_ID);
		}
		//	Add Employee
		if(p_C_BPartner_ID != 0) {
			whereClause.append(" AND C_BPartner_ID = ?");
			params.add(p_C_BPartner_ID);
		}
		//	Add Accounting Date
		if(p_DateAcct != null) {
			whereClause.append(" AND DateAcct >= ?");
			params.add(p_DateAcct);
		}
		//	Add Accounting Date To
		if(p_DateAcct_To != null) {
			whereClause.append(" AND DateAcct <= ?");
			params.add(p_DateAcct_To);
		}
		
		//	Get Payment Export Class
		HRReportExport custom = null;
		MLVERVHRProcessDetail [] m_details = MLVERVHRProcessDetail
				.getArray(getCtx(), whereClause.toString(), params, get_TrxName());
		//	Valid Array
		if(m_details == null
				|| m_details.length == 0)
			return "Ok";
		//	
		try
		{
			//	
			Class<?> clazz = Class.forName(m_FileExportClass);
			custom = (HRReportExport)clazz.newInstance();
			//	Generate File
			no = custom.exportToFile(m_details, new File(p_FileName), err);
		}
		catch (ClassNotFoundException e)
		{
			no = -1;
			err.append("No custom ReportExport class " + m_FileExportClass + " - " + e.toString());
			log.log(Level.SEVERE, err.toString(), e);
		}
		catch (Exception e)
		{
			no = -1;
			err.append("Error in " + m_FileExportClass + " check log, " + e.toString());
			log.log(Level.SEVERE, err.toString(), e);
		}
		//	
		if (no >= 0) {
			ADialog.info(m_WindowNo, panel, "Saved",
					p_FileName + "\n"
					+ Msg.getMsg(Env.getCtx(), "NoOfLines") + "=" + no);
		} else {
			ADialog.error(m_WindowNo, panel, "Error", err.toString());
		}
		//	Return
		return err.toString();
	}

}
