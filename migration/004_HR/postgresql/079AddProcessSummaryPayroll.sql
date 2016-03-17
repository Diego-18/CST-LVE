-- May 25, 2014 5:26:15 AM VET
-- LVE HR
UPDATE AD_Process SET JasperReport='attachment:inf_HR_ProcessDetail.jrxml',Updated=TO_TIMESTAMP('2014-05-25 05:26:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53478
;

-- May 25, 2014 5:26:30 AM VET
-- LVE HR
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-05-25 05:26:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54119
;

-- May 25, 2014 5:26:50 AM VET
-- LVE HR
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=1500053
;

-- May 25, 2014 5:26:50 AM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=1500053
;

-- May 25, 2014 5:27:31 AM VET
-- LVE HR
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=54109
;

-- May 25, 2014 5:27:31 AM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54109
;

-- May 25, 2014 5:27:36 AM VET
-- LVE HR
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=54110
;

-- May 25, 2014 5:27:36 AM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54110
;

-- May 25, 2014 5:27:40 AM VET
-- LVE HR
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=1500055
;

-- May 25, 2014 5:27:40 AM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=1500055
;

-- May 25, 2014 5:28:00 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57142,0,53478,54788,19,'LVE_HR_ProcessReport_ID',TO_TIMESTAMP('2014-05-25 05:27:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','HR Process Report',49,TO_TIMESTAMP('2014-05-25 05:27:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 25, 2014 5:28:00 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54788 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- May 25, 2014 5:29:20 AM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53632,'N',TO_TIMESTAMP('2014-05-25 05:29:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_ProcessSummary.jrxml','Process Summary','Y',0,0,TO_TIMESTAMP('2014-05-25 05:29:19','YYYY-MM-DD HH24:MI:SS'),100,'LVE_RV_HR_ProcessDetail ProcessSummary')
;

-- May 25, 2014 5:29:20 AM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53632 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- May 25, 2014 5:29:39 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Resumen de Nómina',Updated=TO_TIMESTAMP('2014-05-25 05:29:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53632 AND AD_Language='es_MX'
;

-- May 25, 2014 5:30:03 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53632,54789,19,'AD_Org_ID',TO_TIMESTAMP('2014-05-25 05:30:01','YYYY-MM-DD HH24:MI:SS'),100,'-1','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',10,TO_TIMESTAMP('2014-05-25 05:30:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 25, 2014 5:30:03 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54789 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- May 25, 2014 5:30:54 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53393,0,53632,54790,19,'HR_Payroll_ID',TO_TIMESTAMP('2014-05-25 05:30:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','Y','N','Payroll',20,TO_TIMESTAMP('2014-05-25 05:30:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 25, 2014 5:30:54 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54790 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- May 25, 2014 5:31:33 AM VET
-- LVE HR
UPDATE AD_Val_Rule SET Name='HR_Process in Payroll',Updated=TO_TIMESTAMP('2014-05-25 05:31:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52216
;

-- May 25, 2014 5:31:44 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53407,0,53632,54791,19,52216,'HR_Process_ID',TO_TIMESTAMP('2014-05-25 05:31:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll Process',30,TO_TIMESTAMP('2014-05-25 05:31:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 25, 2014 5:31:44 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54791 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- May 25, 2014 5:31:46 AM VET
-- LVE HR
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-05-25 05:31:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54791
;

-- May 25, 2014 5:31:58 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57142,0,53632,54792,19,'LVE_HR_ProcessReport_ID',TO_TIMESTAMP('2014-05-25 05:31:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','HR Process Report',40,TO_TIMESTAMP('2014-05-25 05:31:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 25, 2014 5:31:58 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54792 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- May 25, 2014 5:33:01 AM VET
-- LVE HR
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53831,0,53478,TO_TIMESTAMP('2014-05-25 05:33:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Process Summary',TO_TIMESTAMP('2014-05-25 05:33:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 25, 2014 5:33:01 AM VET
-- LVE HR
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53831 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- May 25, 2014 5:33:02 AM VET
-- LVE HR
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-05-25 05:33:01','YYYY-MM-DD HH24:MI:SS'),100,'Y',53831,0,999,TO_TIMESTAMP('2014-05-25 05:33:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 25, 2014 5:33:05 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=1,Updated=TO_TIMESTAMP('2014-05-25 05:33:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53818
;

-- May 25, 2014 5:33:05 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=8,Updated=TO_TIMESTAMP('2014-05-25 05:33:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53831
;

-- May 25, 2014 5:33:05 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=9,Updated=TO_TIMESTAMP('2014-05-25 05:33:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53634
;

-- May 25, 2014 5:33:11 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=2,Updated=TO_TIMESTAMP('2014-05-25 05:33:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53831
;

-- May 25, 2014 5:33:11 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=3,Updated=TO_TIMESTAMP('2014-05-25 05:33:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53642
;

-- May 25, 2014 5:33:11 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=4,Updated=TO_TIMESTAMP('2014-05-25 05:33:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53641
;

-- May 25, 2014 5:33:11 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=5,Updated=TO_TIMESTAMP('2014-05-25 05:33:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53632
;

-- May 25, 2014 5:33:11 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=6,Updated=TO_TIMESTAMP('2014-05-25 05:33:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53640
;

-- May 25, 2014 5:33:11 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=7,Updated=TO_TIMESTAMP('2014-05-25 05:33:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53635
;

-- May 25, 2014 5:33:11 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=8,Updated=TO_TIMESTAMP('2014-05-25 05:33:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53828
;

-- May 25, 2014 5:33:11 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=9,Updated=TO_TIMESTAMP('2014-05-25 05:33:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53831
;

-- May 25, 2014 5:33:11 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=10,Updated=TO_TIMESTAMP('2014-05-25 05:33:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53634
;

-- May 25, 2014 5:33:23 AM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Resumen de Nómina',Updated=TO_TIMESTAMP('2014-05-25 05:33:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53831 AND AD_Language='es_MX'
;

