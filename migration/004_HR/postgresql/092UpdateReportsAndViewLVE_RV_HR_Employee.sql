-- Jun 17, 2014 9:15:35 AM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73111,56699,0,12,53596,'MonthlySalary','(CASE WHEN LVE_RV_HR_Employee.Amount IS NULL 0 ELSE LVE_RV_HR_Employee.Amount END * 30)',TO_TIMESTAMP('2014-06-17 09:15:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Monthly Salary',0,TO_TIMESTAMP('2014-06-17 09:15:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 17, 2014 9:15:35 AM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73111 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 17, 2014 9:17:27 AM VET
-- LVE HR
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,53842,0,TO_TIMESTAMP('2014-06-17 09:17:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','Y','Reports',TO_TIMESTAMP('2014-06-17 09:17:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 17, 2014 9:17:27 AM VET
-- LVE HR
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53842 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jun 17, 2014 9:17:28 AM VET
-- LVE HR
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-06-17 09:17:27','YYYY-MM-DD HH24:MI:SS'),100,'Y',53842,0,999,TO_TIMESTAMP('2014-06-17 09:17:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 17, 2014 9:17:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=2,Updated=TO_TIMESTAMP('2014-06-17 09:17:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53842
;

-- Jun 17, 2014 9:17:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=3,Updated=TO_TIMESTAMP('2014-06-17 09:17:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53113
;

-- Jun 17, 2014 9:17:31 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=4,Updated=TO_TIMESTAMP('2014-06-17 09:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53111
;

-- Jun 17, 2014 9:17:33 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=0,Updated=TO_TIMESTAMP('2014-06-17 09:17:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53842
;

-- Jun 17, 2014 9:17:33 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=1,Updated=TO_TIMESTAMP('2014-06-17 09:17:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53110
;

-- Jun 17, 2014 9:17:33 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=2,Updated=TO_TIMESTAMP('2014-06-17 09:17:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53112
;

-- Jun 17, 2014 9:17:33 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=3,Updated=TO_TIMESTAMP('2014-06-17 09:17:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53842
;

-- Jun 17, 2014 9:17:33 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=4,Updated=TO_TIMESTAMP('2014-06-17 09:17:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53113
;

-- Jun 17, 2014 9:17:33 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=5,Updated=TO_TIMESTAMP('2014-06-17 09:17:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53111
;

-- Jun 17, 2014 9:17:47 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=0,Updated=TO_TIMESTAMP('2014-06-17 09:17:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53641
;

-- Jun 17, 2014 9:20:17 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=0,Updated=TO_TIMESTAMP('2014-06-17 09:20:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53640
;

-- Jun 17, 2014 9:20:17 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=1,Updated=TO_TIMESTAMP('2014-06-17 09:20:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53641
;

-- Jun 17, 2014 9:20:20 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=1,Updated=TO_TIMESTAMP('2014-06-17 09:20:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53828
;

-- Jun 17, 2014 9:20:20 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=2,Updated=TO_TIMESTAMP('2014-06-17 09:20:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53641
;

-- Jun 17, 2014 9:20:22 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=1,Updated=TO_TIMESTAMP('2014-06-17 09:20:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53635
;

-- Jun 17, 2014 9:20:23 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=2,Updated=TO_TIMESTAMP('2014-06-17 09:20:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53828
;

-- Jun 17, 2014 9:20:23 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=3,Updated=TO_TIMESTAMP('2014-06-17 09:20:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53641
;

-- Jun 17, 2014 9:20:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=3,Updated=TO_TIMESTAMP('2014-06-17 09:20:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53634
;

-- Jun 17, 2014 9:20:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=4,Updated=TO_TIMESTAMP('2014-06-17 09:20:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53641
;

-- Jun 17, 2014 9:20:40 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=3,Updated=TO_TIMESTAMP('2014-06-17 09:20:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53840
;

-- Jun 17, 2014 9:20:40 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=4,Updated=TO_TIMESTAMP('2014-06-17 09:20:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53634
;

-- Jun 17, 2014 9:20:40 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=5,Updated=TO_TIMESTAMP('2014-06-17 09:20:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53641
;

-- Jun 17, 2014 9:20:55 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=4,Updated=TO_TIMESTAMP('2014-06-17 09:20:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53839
;

-- Jun 17, 2014 9:20:55 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=5,Updated=TO_TIMESTAMP('2014-06-17 09:20:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53634
;

-- Jun 17, 2014 9:20:55 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=6,Updated=TO_TIMESTAMP('2014-06-17 09:20:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53641
;

-- Jun 17, 2014 9:21:19 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=4,Updated=TO_TIMESTAMP('2014-06-17 09:21:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53632
;

-- Jun 17, 2014 9:21:19 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=5,Updated=TO_TIMESTAMP('2014-06-17 09:21:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53839
;

-- Jun 17, 2014 9:21:19 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=6,Updated=TO_TIMESTAMP('2014-06-17 09:21:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53634
;

-- Jun 17, 2014 9:21:19 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=7,Updated=TO_TIMESTAMP('2014-06-17 09:21:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53641
;

-- Jun 17, 2014 9:22:20 AM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Reportes',Updated=TO_TIMESTAMP('2014-06-17 09:22:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53842 AND AD_Language='es_MX'
;

-- Jun 17, 2014 9:22:28 AM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Reportes',Updated=TO_TIMESTAMP('2014-06-17 09:22:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53842 AND AD_Language='es_VE'
;

-- Jun 17, 2014 9:24:45 AM VET
-- LVE HR
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-06-17 09:24:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54743
;

-- Jun 17, 2014 9:24:56 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53392,0,53471,54821,19,'HR_Job_ID',TO_TIMESTAMP('2014-06-17 09:24:55','YYYY-MM-DD HH24:MI:SS'),100,'-1','ECA02',10,'Y','Y','N','N','Payroll Job',100,TO_TIMESTAMP('2014-06-17 09:24:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 17, 2014 9:24:56 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54821 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 17, 2014 9:25:00 AM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=45,Updated=TO_TIMESTAMP('2014-06-17 09:25:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54821
;

-- Jun 17, 2014 9:25:57 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56701,0,53469,54822,17,53557,'EmployeeStatus',TO_TIMESTAMP('2014-06-17 09:25:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Employee Status',100,TO_TIMESTAMP('2014-06-17 09:25:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 17, 2014 9:25:57 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54822 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 17, 2014 9:26:06 AM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=110,Updated=TO_TIMESTAMP('2014-06-17 09:26:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54057
;

-- Jun 17, 2014 9:26:32 AM VET
-- LVE HR
UPDATE AD_Element SET AD_Reference_ID=17, AD_Reference_Value_ID=53557, FieldLength=2,Updated=TO_TIMESTAMP('2014-06-17 09:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56359
;

-- Jun 17, 2014 9:26:43 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56701,0,53471,54823,17,53557,'EmployeeStatus',TO_TIMESTAMP('2014-06-17 09:26:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',2,'Y','Y','N','N','Employee Status',100,TO_TIMESTAMP('2014-06-17 09:26:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 17, 2014 9:26:43 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54823 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 17, 2014 9:26:57 AM VET
-- LVE HR
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-06-17 09:26:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54822
;

-- Jun 17, 2014 9:26:59 AM VET
-- LVE HR
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-06-17 09:26:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54823
;

-- Jun 17, 2014 9:27:09 AM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=110,Updated=TO_TIMESTAMP('2014-06-17 09:27:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54067
;

-- Jun 17, 2014 9:28:06 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,DefaultValue2,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1367,0,53471,54824,12,'Amount',TO_TIMESTAMP('2014-06-17 09:28:03','YYYY-MM-DD HH24:MI:SS'),100,'-99999999','99999999','Amount in a defined currency','ECA02',22,'The Amount indicates the amount for this document line.','Y','Y','N','Y','Amount',120,TO_TIMESTAMP('2014-06-17 09:28:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 17, 2014 9:28:06 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54824 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 17, 2014 9:28:24 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56699,0,53471,54825,12,'MonthlySalary',TO_TIMESTAMP('2014-06-17 09:28:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','Y','Monthly Salary',130,TO_TIMESTAMP('2014-06-17 09:28:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 17, 2014 9:28:24 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54825 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 17, 2014 9:28:29 AM VET
-- LVE HR
UPDATE AD_Process_Para SET DefaultValue='-99999999',Updated=TO_TIMESTAMP('2014-06-17 09:28:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54825
;

-- Jun 17, 2014 9:28:34 AM VET
-- LVE HR
UPDATE AD_Process_Para SET DefaultValue2='99999999',Updated=TO_TIMESTAMP('2014-06-17 09:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54825
;

-- Jun 17, 2014 9:28:42 AM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=140,Updated=TO_TIMESTAMP('2014-06-17 09:28:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54067
;

-- Jun 17, 2014 9:30:31 AM VET
-- LVE HR
UPDATE AD_Column SET ColumnSQL=NULL,Updated=TO_TIMESTAMP('2014-06-17 09:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73111
;

-- Jun 17, 2014 9:32:45 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=0,Updated=TO_TIMESTAMP('2014-06-17 09:32:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53842
;

-- Jun 17, 2014 9:32:45 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=2,Updated=TO_TIMESTAMP('2014-06-17 09:32:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53842
;

-- Jun 17, 2014 9:32:45 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=3,Updated=TO_TIMESTAMP('2014-06-17 09:32:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53112
;

-- Jun 17, 2014 9:32:46 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=0,Updated=TO_TIMESTAMP('2014-06-17 09:32:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53842
;

-- Jun 17, 2014 9:32:46 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=2,Updated=TO_TIMESTAMP('2014-06-17 09:32:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53842
;

-- Jun 17, 2014 9:33:27 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=0,Updated=TO_TIMESTAMP('2014-06-17 09:33:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53110
;

-- Jun 17, 2014 9:33:27 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=1,Updated=TO_TIMESTAMP('2014-06-17 09:33:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53640
;

-- Jun 17, 2014 9:33:27 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=2,Updated=TO_TIMESTAMP('2014-06-17 09:33:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53635
;

-- Jun 17, 2014 9:33:27 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=3,Updated=TO_TIMESTAMP('2014-06-17 09:33:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53828
;

-- Jun 17, 2014 9:33:27 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=4,Updated=TO_TIMESTAMP('2014-06-17 09:33:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53840
;

-- Jun 17, 2014 9:33:27 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=5,Updated=TO_TIMESTAMP('2014-06-17 09:33:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53632
;

-- Jun 17, 2014 9:33:27 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=6,Updated=TO_TIMESTAMP('2014-06-17 09:33:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53839
;

-- Jun 17, 2014 9:33:28 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=7,Updated=TO_TIMESTAMP('2014-06-17 09:33:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53634
;

-- Jun 17, 2014 9:33:28 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53842, SeqNo=8,Updated=TO_TIMESTAMP('2014-06-17 09:33:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53641
;

-- Jun 17, 2014 9:33:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=0,Updated=TO_TIMESTAMP('2014-06-17 09:33:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53842
;

-- Jun 17, 2014 9:33:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=1,Updated=TO_TIMESTAMP('2014-06-17 09:33:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53110
;

-- Jun 17, 2014 9:33:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=2,Updated=TO_TIMESTAMP('2014-06-17 09:33:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53112
;

-- Jun 17, 2014 9:33:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=3,Updated=TO_TIMESTAMP('2014-06-17 09:33:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53113
;

-- Jun 17, 2014 9:33:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=4,Updated=TO_TIMESTAMP('2014-06-17 09:33:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53111
;

-- Jun 17, 2014 9:36:20 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,275,0,53628,54826,10,'Description',TO_TIMESTAMP('2014-06-17 09:36:18','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02',255,'A description is limited to 255 characters.','Y','Y','N','N','Description',90,TO_TIMESTAMP('2014-06-17 09:36:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 17, 2014 9:36:20 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54826 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 17, 2014 9:38:19 AM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Language,IsActive,IsTranslated,Name,Description,Help,Created,CreatedBy,Updated,UpdatedBy) VALUES ( 0,0,53628,'es_VE','Y','N','Cambio de Atributo en Conceptos',NULL,NULL,TO_TIMESTAMP('2014-06-17 09:38:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2014-06-17 09:38:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 17, 2014 9:39:03 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Cambio de Atributo en Conceptos ',Updated=TO_TIMESTAMP('2014-06-17 09:39:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53628 AND AD_Language='es_VE'
;

-- Jun 17, 2014 9:40:14 AM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=100,Updated=TO_TIMESTAMP('2014-06-17 09:40:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54751
;

-- Jun 17, 2014 9:40:21 AM VET
-- LVE HR
UPDATE AD_Process_Para SET AD_Reference_ID=14,Updated=TO_TIMESTAMP('2014-06-17 09:40:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54826
;

