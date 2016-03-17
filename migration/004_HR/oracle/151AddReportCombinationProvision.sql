-- Aug 7, 2014 10:07:52 AM UTC
-- LVE HR
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53137,53821,TO_DATE('2014-08-07 10:07:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_HR_P_Combination',TO_DATE('2014-08-07 10:07:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 7, 2014 10:08:05 AM UTC
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53688,53137,'N',TO_DATE('2014-08-07 10:08:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Provision Combination','Y',0,0,TO_DATE('2014-08-07 10:08:04','YYYY-MM-DD HH24:MI:SS'),100,'inf_LVE_HR_P_Combination')
;

-- Aug 7, 2014 10:08:05 AM UTC
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53688 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 7, 2014 10:08:06 AM UTC
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53688,0,TO_DATE('2014-08-07 10:08:05','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-08-07 10:08:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 7, 2014 10:08:06 AM UTC
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53688,102,TO_DATE('2014-08-07 10:08:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-08-07 10:08:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 7, 2014 10:08:06 AM UTC
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53688,103,TO_DATE('2014-08-07 10:08:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-08-07 10:08:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 7, 2014 10:08:06 AM UTC
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53688,50001,TO_DATE('2014-08-07 10:08:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-08-07 10:08:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 7, 2014 10:08:06 AM UTC
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53688,50002,TO_DATE('2014-08-07 10:08:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-08-07 10:08:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 7, 2014 10:09:54 AM UTC
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57245,0,53688,54917,19,'LVE_HR_ProvisionType_ID',TO_DATE('2014-08-07 10:09:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Provision Type',10,TO_DATE('2014-08-07 10:09:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 7, 2014 10:09:54 AM UTC
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54917 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 7, 2014 10:10:38 AM UTC
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57246,0,53688,54918,19,'LVE_HR_Provision_ID',TO_DATE('2014-08-07 10:10:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Provision',20,TO_DATE('2014-08-07 10:10:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 7, 2014 10:10:38 AM UTC
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54918 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 7, 2014 10:11:36 AM UTC
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53390,0,53688,54919,19,'HR_Department_ID',TO_DATE('2014-08-07 10:10:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll Department',30,TO_DATE('2014-08-07 10:10:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 7, 2014 10:11:36 AM UTC
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54919 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 7, 2014 10:14:00 AM UTC
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53392,0,53688,54920,19,'HR_Job_ID',TO_DATE('2014-08-07 10:13:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll Job',40,TO_DATE('2014-08-07 10:13:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 7, 2014 10:14:00 AM UTC
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54920 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 7, 2014 10:15:38 AM UTC
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53688,54921,30,252,'C_BPartner_ID',TO_DATE('2014-08-07 10:15:28','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',50,TO_DATE('2014-08-07 10:15:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 7, 2014 10:15:38 AM UTC
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54921 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 7, 2014 10:15:59 AM UTC
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,526,0,53688,54922,12,'Qty',TO_DATE('2014-08-07 10:15:55','YYYY-MM-DD HH24:MI:SS'),100,'Quantity','ECA02',22,'The Quantity indicates the number of a specific product or item for this document.','Y','Y','N','N','Quantity',60,TO_DATE('2014-08-07 10:15:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 7, 2014 10:15:59 AM UTC
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54922 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 7, 2014 10:19:59 AM UTC
-- LVE HR
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53869,0,53688,TO_DATE('2014-08-07 10:19:58','YYYY-MM-DD HH24:MI:SS'),100,'Provision Combination','ECA02','Y','Y','N','N','N','Provision Combination',TO_DATE('2014-08-07 10:19:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 7, 2014 10:19:59 AM UTC
-- LVE HR
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53869 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Aug 7, 2014 10:19:59 AM UTC
-- LVE HR
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2014-08-07 10:19:59','YYYY-MM-DD HH24:MI:SS'),100,'Y',53869,0,999,TO_DATE('2014-08-07 10:19:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 7, 2014 10:20:21 AM UTC
-- LVE HR
UPDATE AD_Process_Trl SET Name='Detalle de Dotaciones',Updated=TO_DATE('2014-08-07 10:20:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53688 AND AD_Language='es_MX'
;

-- Aug 7, 2014 10:20:42 AM UTC
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Detalle de Dotaciones',Description='Detalle de Dotaciones',Updated=TO_DATE('2014-08-07 10:20:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53869 AND AD_Language='es_MX'
;

-- Aug 7, 2014 10:20:47 AM UTC
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53848, SeqNo=0,Updated=TO_DATE('2014-08-07 10:20:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53869
;

-- Aug 7, 2014 10:20:47 AM UTC
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53848, SeqNo=1,Updated=TO_DATE('2014-08-07 10:20:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53851
;

-- Aug 7, 2014 10:20:47 AM UTC
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53848, SeqNo=2,Updated=TO_DATE('2014-08-07 10:20:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53850
;

-- Aug 7, 2014 10:20:47 AM UTC
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53848, SeqNo=3,Updated=TO_DATE('2014-08-07 10:20:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53849
;

-- Aug 7, 2014 10:23:22 AM UTC
-- LVE HR
UPDATE AD_Process_Para SET DefaultValue='NULL',Updated=TO_DATE('2014-08-07 10:23:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54922
;

-- Aug 7, 2014 10:32:47 AM UTC
-- LVE HR
UPDATE AD_Process_Para SET DefaultValue='-9999999999999', DefaultValue2='9999999999999', IsRange='Y',Updated=TO_DATE('2014-08-07 10:32:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54922
;

