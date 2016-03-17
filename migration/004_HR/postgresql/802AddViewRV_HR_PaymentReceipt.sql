--DROP VIEW RV_HR_PaymentReceipt
CREATE OR REPLACE VIEW RV_HR_PaymentReceipt AS
SELECT oi.TaxID, o.Name Org, COALESCE(oil.Address1 || ', ', '')
   || COALESCE(oil.Address2 || ', ', '') || COALESCE(oil.Address3 || ', ', '')
   || COALESCE(oil.Address4 || ', ', '') || COALESCE(oil.City, '') Org_Location,
   pm.DocumentNo,
   bpg.Greeting, bp.TaxID BP_TaxID, bp.Name, BP.Name2, COALESCE(bpl.Address1 || ', ', '')
   || COALESCE(bpl.Address2 || ', ', '') || COALESCE(bpl.Address3 || ', ', '')
   || COALESCE(bpl.Address4 || ', ', '') || COALESCE(bpl.City, '') BP_Location,
   dp.Name Department, dp.HR_Department_ID, jb.Name Job, jb.HR_Job_ID, oil.City P_Location,
   mop.HR_Concept_Category_ID, mop.HR_Concept_ID, 
   pyc.SeqNo, pm.DateAcct PayDate, pm.C_Payment_ID, 
   CASE WHEN mop.ColumnType = 'Q' THEN mop.Qty WHEN mop.ColumnType = 'A' THEN mop.Amount END Amt,
   mop.ColumnType, prc.HR_Process_ID, pm.C_PaySelectionCheck_ID, pm.HR_PaySelectionCheck_ID,
   mop.AD_Client_ID, mop.AD_Org_ID, mop.Created, mop.CreatedBy, mop.IsActive, mop.Updated, mop.UpdatedBy,
   cc.Value CategoryValue, pyr.HR_Payroll_ID, bp.C_BPartner_ID, prc.DateAcct, mop.ValidFrom, mop.ValidTo
   FROM HR_Payroll pyr
   INNER JOIN HR_PayrollConcept pyc ON(pyc.HR_Payroll_ID = pyr.HR_Payroll_ID)
   INNER JOIN HR_Process prc ON(prc.HR_Payroll_ID = pyr.HR_Payroll_ID)
   INNER JOIN HR_Movement mop ON(mop.HR_Process_ID = prc.HR_Process_ID AND mop.HR_Concept_ID = pyc.HR_Concept_ID)
   INNER JOIN C_BPartner bp ON (bp.C_BPartner_ID = mop.C_BPartner_ID)
   INNER JOIN AD_Org o ON(o.AD_Org_ID = prc.AD_Org_ID)
   INNER JOIN AD_OrgInfo oi ON (oi.AD_Org_ID = o.AD_Org_ID)
   INNER JOIN HR_Department dp ON(dp.HR_Department_ID = mop.HR_Department_ID)
   INNER JOIN HR_Job jb ON(jb.HR_Job_ID = mop.HR_Job_ID)
   INNER JOIN HR_Concept_Category cc ON(cc.HR_Concept_Category_ID = mop.HR_Concept_Category_ID)
   LEFT JOIN (SELECT p.C_BPartner_ID, MAX(mo.HR_Process_ID) HR_Process_ID,
			MAX(psc.DocumentNo) DocumentNo, p.C_BankAccount_ID, p.DateAcct, p.C_Payment_ID, 
			MAX(pscs.C_PaySelectionCheck_ID) C_PaySelectionCheck_ID, MAX(psc.HR_PaySelectionCheck_ID) HR_PaySelectionCheck_ID
			FROM C_Payment p
			INNER JOIN HR_PaySelectionCheck psc ON(psc.C_Payment_ID = p.C_Payment_ID)
			LEFT JOIN C_PaySelectionCheck pscs ON(pscs.C_Payment_ID = p.C_Payment_ID)
			INNER JOIN HR_PaySelection ps ON (psc.HR_PaySelection_ID = ps.HR_PaySelection_ID)
			INNER JOIN HR_PaySelectionLine psl ON(psl.HR_PayselectionCheck_ID = psc.HR_PayselectionCheck_ID)
			INNER JOIN HR_Movement mo ON(mo.HR_Movement_ID = psl.HR_Movement_ID)
			GROUP BY p.C_BPartner_ID, p.C_BankAccount_ID, p.DateAcct, p.C_Payment_ID
   ) pm ON(pm.C_BPartner_ID = mop.C_BPartner_ID AND pm.HR_Process_ID = prc.HR_Process_ID)
   LEFT JOIN C_Greeting bpg ON (bp.C_Greeting_ID = bpg.C_Greeting_ID)
   LEFT JOIN C_Location oil ON(oil.C_Location_ID = oi.C_Location_ID)
   LEFT JOIN C_Location bpl ON(bpl.C_Location_ID = BPartnerRemitLocation(bp.C_BPartner_ID))
   WHERE mop.IsPrinted = 'Y' AND pyc.IsPrinted = 'Y'