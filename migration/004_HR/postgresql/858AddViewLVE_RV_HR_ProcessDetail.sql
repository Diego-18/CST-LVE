--DROP VIEW LVE_RV_HR_ProcessDetail
CREATE OR REPLACE VIEW LVE_RV_HR_ProcessDetail AS
SELECT 
   mop.AD_Client_ID, 
   mop.AD_Org_ID, 
   mop.Created, 
   mop.CreatedBy, 
   mop.Updated, 
   mop.UpdatedBy,
   prl.IsActive,
   prc.HR_Process_ID, 
   prc.DateAcct DateAcct, 
   prc.DocumentNo, 
   bp.Value BPTaxID, 
   bp.Name,
   bp.Name2,
   (COALESCE(bp.Name2, '') || ' ' || bp.Name) BPName,
   mop.HR_Department_ID, 
   mop.HR_Job_ID,
   mop.HR_Concept_Category_ID, 
   mop.HR_Concept_ID, 
   CASE 
    WHEN mop.ColumnType = 'Q' 
    THEN mop.Qty 
    WHEN mop.ColumnType = 'A' 
    THEN mop.Amount 
   END Amt,
   mop.ColumnType,  
   cc.Value CategoryValue, 
   prc.HR_Payroll_ID, 
   pyr.Name Payroll, 
   bp.C_BPartner_ID, 
   mop.ValidFrom, 
   mop.ValidTo,
   prc.HR_Period_ID,
   c.Value,
   pr.Name ProcessReport,
   prl.PrintName,
   pr.Description DocumentNote,
   pr.LVE_HR_ProcessReport_ID,
   mop.ServiceDate,
   mop.TextMsg,
   mop.Description MovDescription, 
   pr.PrintName HeaderPrintName,
   pr.ReceiptFooterMsg,
   pyr.HR_Contract_ID,
   mop.HR_Movement_ID,
   CASE 
   	WHEN pr.IsOrderBy = 'Y' 
	THEN prl.SeqNo 
	ELSE mop.HR_Movement_ID 
   END SeqNo,
   mop.HR_Movement_ID LVE_RV_HR_ProcessDetail_ID, 
   prc.Name Process
   FROM HR_Process prc
   INNER JOIN HR_Payroll pyr ON(pyr.HR_Payroll_ID = prc.HR_Payroll_ID)
   INNER JOIN HR_Movement mop ON(mop.HR_Process_ID = prc.HR_Process_ID)
   INNER JOIN LVE_HR_ProcessReportLine prl ON(prl.HR_Concept_ID = mop.HR_Concept_ID)
   INNER JOIN LVE_HR_ProcessReport pr ON(pr.LVE_HR_ProcessReport_ID = prl.LVE_HR_ProcessReport_ID)
   INNER JOIN C_BPartner bp ON (bp.C_BPartner_ID = mop.C_BPartner_ID)
   INNER JOIN HR_Concept_Category cc ON(cc.HR_Concept_Category_ID = mop.HR_Concept_Category_ID)
   INNER JOIN HR_Concept c ON (c.HR_Concept_ID = mop.HR_Concept_ID)
WHERE prl.IsActive='Y'