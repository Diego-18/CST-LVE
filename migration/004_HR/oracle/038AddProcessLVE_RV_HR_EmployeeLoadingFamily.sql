-- 27/09/2013 04:03:42 PM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53472,'N',TO_DATE('2013-09-27 16:03:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Employee Loading Family ','Y',0,0,TO_DATE('2013-09-27 16:03:39','YYYY-MM-DD HH24:MI:SS'),100,'LVE_HR_EmployeeLoadingFamily LoadFamily')
;

-- 27/09/2013 04:03:42 PM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53472 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 27/09/2013 04:03:42 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53472,0,TO_DATE('2013-09-27 16:03:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2013-09-27 16:03:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:03:43 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53472,102,TO_DATE('2013-09-27 16:03:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2013-09-27 16:03:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:03:43 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53472,103,TO_DATE('2013-09-27 16:03:43','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2013-09-27 16:03:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:03:43 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53472,50001,TO_DATE('2013-09-27 16:03:43','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2013-09-27 16:03:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:03:43 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53472,50002,TO_DATE('2013-09-27 16:03:43','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2013-09-27 16:03:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:04:56 PM VET
-- LVE HR
UPDATE AD_Process SET IsReport='Y',Updated=TO_DATE('2013-09-27 16:04:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53472
;

-- 27/09/2013 04:05:05 PM VET
-- LVE HR
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=50134, AD_ReportView_ID=NULL, AD_Workflow_ID=NULL, Classname=NULL, Description=NULL, Help=NULL, IsBetaFunctionality='N', IsDirectPrint='N', IsReport='Y', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_DATE('2013-09-27 16:05:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53472
;

-- 27/09/2013 04:05:05 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53472
;

-- 27/09/2013 04:05:08 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53472,54038,30,252,'C_BPartner_ID',TO_DATE('2013-09-27 16:05:05','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',10,TO_DATE('2013-09-27 16:05:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:05:08 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54038 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:05:09 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53393,0,53472,54039,19,'HR_Payroll_ID',TO_DATE('2013-09-27 16:05:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll',20,TO_DATE('2013-09-27 16:05:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:05:09 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54039 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:05:10 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53390,0,53472,54040,19,'HR_Department_ID',TO_DATE('2013-09-27 16:05:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll Department',30,TO_DATE('2013-09-27 16:05:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:05:10 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54040 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:05:38 PM VET
-- LVE HR
UPDATE AD_Process SET AD_PrintFormat_ID=NULL,Updated=TO_DATE('2013-09-27 16:05:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53472
;

-- 27/09/2013 04:05:47 PM VET
-- LVE HR
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=NULL, AD_ReportView_ID=53065, AD_Workflow_ID=NULL, Classname=NULL, Description=NULL, Help=NULL, IsBetaFunctionality='N', IsDirectPrint='N', IsReport='Y', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_DATE('2013-09-27 16:05:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53472
;

-- 27/09/2013 04:05:47 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53472
;

-- 27/09/2013 04:06:08 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=100,Updated=TO_DATE('2013-09-27 16:06:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54038
;

-- 27/09/2013 04:06:13 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=200,Updated=TO_DATE('2013-09-27 16:06:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54039
;

-- 27/09/2013 04:06:18 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=300,Updated=TO_DATE('2013-09-27 16:06:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54040
;

-- 27/09/2013 04:06:36 PM VET
-- LVE HR
UPDATE AD_Process SET Name='Employee Loading Family',Updated=TO_DATE('2013-09-27 16:06:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53472
;

-- 27/09/2013 04:06:36 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53472
;

-- 27/09/2013 04:06:43 PM VET
-- LVE HR
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=NULL, AD_ReportView_ID=53065, AD_Workflow_ID=NULL, Classname=NULL, Description=NULL, Help=NULL, IsBetaFunctionality='N', IsDirectPrint='N', IsReport='Y', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_DATE('2013-09-27 16:06:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53472
;

-- 27/09/2013 04:06:43 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53472
;

-- 27/09/2013 04:06:48 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53472,54042,30,252,'C_BPartner_ID',TO_DATE('2013-09-27 16:06:43','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',10,TO_DATE('2013-09-27 16:06:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:06:48 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54042 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:06:50 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53393,0,53472,54043,19,'HR_Payroll_ID',TO_DATE('2013-09-27 16:06:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll',20,TO_DATE('2013-09-27 16:06:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:06:50 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54043 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:06:52 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53390,0,53472,54044,19,'HR_Department_ID',TO_DATE('2013-09-27 16:06:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll Department',30,TO_DATE('2013-09-27 16:06:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:06:52 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54044 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:06:54 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56356,0,53472,54045,20,'IsCAPTA',TO_DATE('2013-09-27 16:06:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Contribute C.A.P.T.A.',40,TO_DATE('2013-09-27 16:06:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:06:54 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54045 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:06:57 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56357,0,53472,54046,20,'IsGrowthPlan',TO_DATE('2013-09-27 16:06:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Has Growth Plan',50,TO_DATE('2013-09-27 16:06:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:06:57 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54046 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:06:59 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56355,0,53472,54047,20,'IsJubilate',TO_DATE('2013-09-27 16:06:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Is Jubilate',60,TO_DATE('2013-09-27 16:06:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:06:59 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54047 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:07:01 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56358,0,53472,54048,20,'IsUnionized',TO_DATE('2013-09-27 16:06:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Is Unionized',70,TO_DATE('2013-09-27 16:06:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:07:01 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54048 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:07:02 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,574,0,53472,54049,15,'StartDate',TO_DATE('2013-09-27 16:07:01','YYYY-MM-DD HH24:MI:SS'),100,'First effective day (inclusive)','ECA02',7,'The Start Date indicates the first or starting date','Y','Y','N','Y','Start Date',80,TO_DATE('2013-09-27 16:07:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:07:02 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54049 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:07:21 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54038
;

-- 27/09/2013 04:07:21 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54038
;

-- 27/09/2013 04:07:25 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54039
;

-- 27/09/2013 04:07:25 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54039
;

-- 27/09/2013 04:07:29 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54040
;

-- 27/09/2013 04:07:29 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54040
;

-- 27/09/2013 04:08:05 PM VET
-- LVE HR
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53635,0,53472,TO_DATE('2013-09-27 16:08:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Employee Loading Family',TO_DATE('2013-09-27 16:08:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:08:05 PM VET
-- LVE HR
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53635 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 27/09/2013 04:08:06 PM VET
-- LVE HR
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2013-09-27 16:08:05','YYYY-MM-DD HH24:MI:SS'),100,'Y',53635,0,999,TO_DATE('2013-09-27 16:08:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:08:12 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53108, SeqNo=0,Updated=TO_DATE('2013-09-27 16:08:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53635
;

-- 27/09/2013 04:08:15 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=0,Updated=TO_DATE('2013-09-27 16:08:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53635
;

-- 27/09/2013 04:08:18 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=0,Updated=TO_DATE('2013-09-27 16:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53635
;

-- 27/09/2013 04:08:18 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=1,Updated=TO_DATE('2013-09-27 16:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53634
;

-- 27/09/2013 04:08:18 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=2,Updated=TO_DATE('2013-09-27 16:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53632
;

-- 27/09/2013 04:08:18 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=3,Updated=TO_DATE('2013-09-27 16:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53608
;

-- 27/09/2013 04:08:32 PM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Carga Familiar del Empleado',Updated=TO_DATE('2013-09-27 16:08:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53635 AND AD_Language='es_MX'
;

-- 27/09/2013 04:08:40 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Carga Familiar del Empleado',Updated=TO_DATE('2013-09-27 16:08:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53472 AND AD_Language='es_MX'
;

-- 27/09/2013 04:10:46 PM VET
-- LVE HR
UPDATE AD_Table SET TableName='LVE_RV_HR_EmployeeLoadingFamily',Updated=TO_DATE('2013-09-27 16:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53601
;

-- 27/09/2013 04:10:48 PM VET
-- LVE HR
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53745,TO_DATE('2013-09-27 16:10:46','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LVE_RV_HR_EmployeeLoadingFamily',1,'Y','N','Y','Y','LVE_RV_HR_EmployeeLoadingFamily','N',1000000,TO_DATE('2013-09-27 16:10:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:11:03 PM VET
-- LVE HR
UPDATE AD_Table SET TableName='LVE_RV_HR_EmployeeDetail',Updated=TO_DATE('2013-09-27 16:11:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53595
;

-- 27/09/2013 04:11:04 PM VET
-- LVE HR
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53746,TO_DATE('2013-09-27 16:11:03','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LVE_RV_HR_EmployeeDetail',1,'Y','N','Y','Y','LVE_RV_HR_EmployeeDetail','N',1000000,TO_DATE('2013-09-27 16:11:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:11:21 PM VET
-- LVE HR
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53066,53601,TO_DATE('2013-09-27 16:11:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_HR_EmployeeLoadingFamily',TO_DATE('2013-09-27 16:11:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:11:38 PM VET
-- LVE HR
UPDATE AD_Process SET AD_ReportView_ID=53066,Updated=TO_DATE('2013-09-27 16:11:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53472
;

