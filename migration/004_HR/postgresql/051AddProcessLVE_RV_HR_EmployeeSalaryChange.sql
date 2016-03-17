-- 30/09/2013 09:37:53 AM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53476,53070,'N',TO_TIMESTAMP('2013-09-30 09:37:50','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','N','N','Y','N','Employee Salary Change','Y',0,0,TO_TIMESTAMP('2013-09-30 09:37:50','YYYY-MM-DD HH24:MI:SS'),100,'LVE_RV_HR_EmployeeSalaryChange EmpSalCha')
;

-- 30/09/2013 09:37:53 AM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53476 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 30/09/2013 09:37:54 AM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53476,0,TO_TIMESTAMP('2013-09-30 09:37:53','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2013-09-30 09:37:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:37:54 AM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53476,102,TO_TIMESTAMP('2013-09-30 09:37:54','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2013-09-30 09:37:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:37:54 AM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53476,103,TO_TIMESTAMP('2013-09-30 09:37:54','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2013-09-30 09:37:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:37:54 AM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53476,50001,TO_TIMESTAMP('2013-09-30 09:37:54','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2013-09-30 09:37:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:37:55 AM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53476,50002,TO_TIMESTAMP('2013-09-30 09:37:54','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2013-09-30 09:37:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:38:05 AM VET
-- LVE HR
UPDATE AD_Process SET EntityType='ECA02',Updated=TO_TIMESTAMP('2013-09-30 09:38:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53476
;

-- 30/09/2013 09:38:16 AM VET
-- LVE HR
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=NULL, AD_ReportView_ID=53070, AD_Workflow_ID=NULL, Classname=NULL, Description=NULL, Help=NULL, IsBetaFunctionality='N', IsDirectPrint='N', IsReport='Y', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_TIMESTAMP('2013-09-30 09:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53476
;

-- 30/09/2013 09:38:16 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53476
;

-- 30/09/2013 09:38:18 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53476,54094,19,'AD_Org_ID',TO_TIMESTAMP('2013-09-30 09:38:16','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',10,TO_TIMESTAMP('2013-09-30 09:38:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:38:18 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54094 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/09/2013 09:38:19 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53476,54095,30,252,'C_BPartner_ID',TO_TIMESTAMP('2013-09-30 09:38:18','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',20,TO_TIMESTAMP('2013-09-30 09:38:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:38:19 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54095 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/09/2013 09:38:21 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53476,54096,30,252,'C_BPartner_ID',TO_TIMESTAMP('2013-09-30 09:38:19','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',30,TO_TIMESTAMP('2013-09-30 09:38:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:38:21 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54096 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/09/2013 09:38:22 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53393,0,53476,54097,19,'HR_Payroll_ID',TO_TIMESTAMP('2013-09-30 09:38:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll',40,TO_TIMESTAMP('2013-09-30 09:38:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:38:22 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54097 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/09/2013 09:38:25 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53390,0,53476,54098,19,'HR_Department_ID',TO_TIMESTAMP('2013-09-30 09:38:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll Department',50,TO_TIMESTAMP('2013-09-30 09:38:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:38:25 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54098 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/09/2013 09:38:26 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56356,0,53476,54099,17,319,'IsCAPTA',TO_TIMESTAMP('2013-09-30 09:38:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Contribute C.A.P.T.A.',60,TO_TIMESTAMP('2013-09-30 09:38:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:38:26 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54099 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/09/2013 09:38:28 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56357,0,53476,54100,17,319,'IsGrowthPlan',TO_TIMESTAMP('2013-09-30 09:38:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Has Growth Plan',70,TO_TIMESTAMP('2013-09-30 09:38:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:38:28 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54100 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/09/2013 09:38:29 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56355,0,53476,54101,17,319,'IsJubilate',TO_TIMESTAMP('2013-09-30 09:38:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Is Jubilate',80,TO_TIMESTAMP('2013-09-30 09:38:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:38:29 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54101 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/09/2013 09:38:30 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56358,0,53476,54102,17,319,'IsUnionized',TO_TIMESTAMP('2013-09-30 09:38:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Is Unionized',90,TO_TIMESTAMP('2013-09-30 09:38:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:38:30 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54102 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/09/2013 09:38:32 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,574,0,53476,54103,15,'StartDate',TO_TIMESTAMP('2013-09-30 09:38:30','YYYY-MM-DD HH24:MI:SS'),100,'First effective day (inclusive)','ECA02',7,'The Start Date indicates the first or starting date','Y','Y','N','Y','Start Date',100,TO_TIMESTAMP('2013-09-30 09:38:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:38:32 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54103 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 30/09/2013 09:38:51 AM VET
-- LVE HR
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53071,53605,TO_TIMESTAMP('2013-09-30 09:38:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_RV_HR_EmployeeSalaryChange',TO_TIMESTAMP('2013-09-30 09:38:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:39:07 AM VET
-- LVE HR
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=54096
;

-- 30/09/2013 09:39:07 AM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54096
;

-- 30/09/2013 09:39:19 AM VET
-- LVE HR
UPDATE AD_Process SET AD_ReportView_ID=53071,Updated=TO_TIMESTAMP('2013-09-30 09:39:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53476
;

-- 30/09/2013 09:39:33 AM VET
-- LVE HR
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=54083
;

-- 30/09/2013 09:39:33 AM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54083
;

-- 30/09/2013 09:40:26 AM VET
-- LVE HR
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=54069
;

-- 30/09/2013 09:40:26 AM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54069
;

-- 30/09/2013 09:41:43 AM VET
-- LVE HR
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53641,0,53476,TO_TIMESTAMP('2013-09-30 09:41:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Employee Salary Change',TO_TIMESTAMP('2013-09-30 09:41:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:41:43 AM VET
-- LVE HR
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53641 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 30/09/2013 09:41:43 AM VET
-- LVE HR
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2013-09-30 09:41:43','YYYY-MM-DD HH24:MI:SS'),100,'Y',53641,0,999,TO_TIMESTAMP('2013-09-30 09:41:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/09/2013 09:42:14 AM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Cambio de Salario de Empleados',Updated=TO_TIMESTAMP('2013-09-30 09:42:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53641 AND AD_Language='es_MX'
;

-- 30/09/2013 09:42:22 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Cambio de Salario de Empleados',Updated=TO_TIMESTAMP('2013-09-30 09:42:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53476 AND AD_Language='es_MX'
;

