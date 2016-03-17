-- 28/09/2013 12:16:42 PM VET
-- LVE HR
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53070,53604,TO_TIMESTAMP('2013-09-28 12:16:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_RV_HR_EmployeeAccount',TO_TIMESTAMP('2013-09-28 12:16:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:17:09 PM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53474,53070,'N',TO_TIMESTAMP('2013-09-28 12:17:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Employee Account Bank','Y',0,0,TO_TIMESTAMP('2013-09-28 12:17:08','YYYY-MM-DD HH24:MI:SS'),100,'LVE_RV_HR_EmployeeAccoun EmployeeAccount')
;

-- 28/09/2013 12:17:09 PM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53474 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 28/09/2013 12:17:09 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53474,0,TO_TIMESTAMP('2013-09-28 12:17:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2013-09-28 12:17:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:17:10 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53474,102,TO_TIMESTAMP('2013-09-28 12:17:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2013-09-28 12:17:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:17:10 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53474,103,TO_TIMESTAMP('2013-09-28 12:17:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2013-09-28 12:17:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:17:10 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53474,50001,TO_TIMESTAMP('2013-09-28 12:17:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2013-09-28 12:17:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:17:10 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53474,50002,TO_TIMESTAMP('2013-09-28 12:17:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2013-09-28 12:17:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:17:31 PM VET
-- LVE HR
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=NULL, AD_ReportView_ID=53066, AD_Workflow_ID=NULL, Classname=NULL, Description=NULL, Help=NULL, IsBetaFunctionality='N', IsDirectPrint='N', IsReport='Y', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_TIMESTAMP('2013-09-28 12:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53474
;

-- 28/09/2013 12:17:31 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53474
;

-- 28/09/2013 12:17:43 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53474,54081,19,'AD_Org_ID',TO_TIMESTAMP('2013-09-28 12:17:31','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',10,TO_TIMESTAMP('2013-09-28 12:17:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:17:43 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54081 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 28/09/2013 12:17:45 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53474,54082,30,252,'C_BPartner_ID',TO_TIMESTAMP('2013-09-28 12:17:43','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',20,TO_TIMESTAMP('2013-09-28 12:17:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:17:45 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54082 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 28/09/2013 12:17:46 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53474,54083,30,252,'C_BPartner_ID',TO_TIMESTAMP('2013-09-28 12:17:45','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',30,TO_TIMESTAMP('2013-09-28 12:17:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:17:46 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54083 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 28/09/2013 12:17:47 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53393,0,53474,54084,19,'HR_Payroll_ID',TO_TIMESTAMP('2013-09-28 12:17:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll',40,TO_TIMESTAMP('2013-09-28 12:17:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:17:47 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54084 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 28/09/2013 12:17:48 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53390,0,53474,54085,19,'HR_Department_ID',TO_TIMESTAMP('2013-09-28 12:17:47','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll Department',50,TO_TIMESTAMP('2013-09-28 12:17:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:17:48 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54085 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 28/09/2013 12:17:50 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56356,0,53474,54086,17,319,'IsCAPTA',TO_TIMESTAMP('2013-09-28 12:17:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Contribute C.A.P.T.A.',60,TO_TIMESTAMP('2013-09-28 12:17:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:17:50 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54086 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 28/09/2013 12:17:51 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56357,0,53474,54087,17,319,'IsGrowthPlan',TO_TIMESTAMP('2013-09-28 12:17:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Has Growth Plan',70,TO_TIMESTAMP('2013-09-28 12:17:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:17:51 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54087 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 28/09/2013 12:17:52 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56355,0,53474,54088,17,319,'IsJubilate',TO_TIMESTAMP('2013-09-28 12:17:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Is Jubilate',80,TO_TIMESTAMP('2013-09-28 12:17:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:17:52 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54088 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 28/09/2013 12:17:53 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56358,0,53474,54089,17,319,'IsUnionized',TO_TIMESTAMP('2013-09-28 12:17:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Is Unionized',90,TO_TIMESTAMP('2013-09-28 12:17:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:17:53 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54089 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 28/09/2013 12:17:55 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,574,0,53474,54090,15,'StartDate',TO_TIMESTAMP('2013-09-28 12:17:54','YYYY-MM-DD HH24:MI:SS'),100,'First effective day (inclusive)','ECA02',7,'The Start Date indicates the first or starting date','Y','Y','N','Y','Start Date',100,TO_TIMESTAMP('2013-09-28 12:17:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:17:55 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54090 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 28/09/2013 12:18:21 PM VET
-- LVE HR
UPDATE AD_Process SET AD_ReportView_ID=53070, Value='LVE_RV_HR_EmployeeAccount EmployeeAccoun',Updated=TO_TIMESTAMP('2013-09-28 12:18:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53474
;

-- 28/09/2013 12:18:56 PM VET
-- LVE HR
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53640,0,53474,TO_TIMESTAMP('2013-09-28 12:18:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Employee Account Bank',TO_TIMESTAMP('2013-09-28 12:18:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:18:56 PM VET
-- LVE HR
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53640 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 28/09/2013 12:18:56 PM VET
-- LVE HR
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2013-09-28 12:18:56','YYYY-MM-DD HH24:MI:SS'),100,'Y',53640,0,999,TO_TIMESTAMP('2013-09-28 12:18:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 12:19:02 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53108, SeqNo=0,Updated=TO_TIMESTAMP('2013-09-28 12:19:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53640
;

-- 28/09/2013 12:19:05 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=0,Updated=TO_TIMESTAMP('2013-09-28 12:19:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53640
;

-- 28/09/2013 12:19:07 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=0,Updated=TO_TIMESTAMP('2013-09-28 12:19:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53640
;

-- 28/09/2013 12:19:07 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=1,Updated=TO_TIMESTAMP('2013-09-28 12:19:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53635
;

-- 28/09/2013 12:19:08 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=2,Updated=TO_TIMESTAMP('2013-09-28 12:19:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53634
;

-- 28/09/2013 12:19:08 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=3,Updated=TO_TIMESTAMP('2013-09-28 12:19:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53632
;

-- 28/09/2013 12:19:08 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=4,Updated=TO_TIMESTAMP('2013-09-28 12:19:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53608
;

-- 28/09/2013 12:19:22 PM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Cuenta Bancaria de Empleados',Updated=TO_TIMESTAMP('2013-09-28 12:19:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53640 AND AD_Language='es_MX'
;

