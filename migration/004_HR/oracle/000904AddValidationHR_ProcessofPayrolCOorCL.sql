-- 2/10/2013 04:12:17 PM VET
-- LVE HR
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52216,'HR_Process.HR_Payroll_ID = @HR_Payroll_ID@  AND HR_Process.DocStatus IN(''CO'',''CL'')',TO_DATE('2013-10-02 16:12:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','HR_Process of Payroll CO or CL','S',TO_DATE('2013-10-02 16:12:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2/10/2013 04:12:26 PM VET
-- LVE HR
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52216,Updated=TO_DATE('2013-10-02 16:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54117
;

