-- 16/07/2014 10:16:46 AM CEST
-- LVE-HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57289,0,20,'IsSameBank',TO_TIMESTAMP('2014-07-16 10:16:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Same Bank','Same Bank',TO_TIMESTAMP('2014-07-16 10:16:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 10:16:46 AM CEST
-- LVE-HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57289 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 16/07/2014 10:16:59 AM CEST
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Mismo Banco',PrintName='Mismo Banco',Updated=TO_TIMESTAMP('2014-07-16 10:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57289 AND AD_Language='es_MX'
;

-- 16/07/2014 10:17:27 AM CEST
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57289,0,53190,54879,20,'IsSameBank',TO_TIMESTAMP('2014-07-16 10:17:26','YYYY-MM-DD HH24:MI:SS'),100,'N','ECA02',1,'Y','Y','N','N','Same Bank',70,TO_TIMESTAMP('2014-07-16 10:17:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 10:17:27 AM CEST
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54879 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 16/07/2014 10:19:25 AM CEST
-- LVE-HR
UPDATE AD_Table SET AD_Window_ID=53103,Updated=TO_TIMESTAMP('2014-07-16 10:19:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53248
;

-- 16/07/2014 10:19:43 AM CEST
-- LVE-HR
UPDATE AD_Table SET AD_Window_ID=53103,Updated=TO_TIMESTAMP('2014-07-16 10:19:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53250
;

-- 16/07/2014 10:19:49 AM CEST
-- LVE-HR
UPDATE AD_Table SET AD_Window_ID=53103,Updated=TO_TIMESTAMP('2014-07-16 10:19:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53249
;

-- 16/07/2014 10:26:41 AM CEST
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53660,'N',TO_TIMESTAMP('2014-07-16 10:26:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','HR Payment Selection Print','Y',0,0,TO_TIMESTAMP('2014-07-16 10:26:40','YYYY-MM-DD HH24:MI:SS'),100,'Rpt HR_PaySelection')
;

-- 16/07/2014 10:26:41 AM CEST
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53660 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 16/07/2014 10:26:41 AM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53660,0,TO_TIMESTAMP('2014-07-16 10:26:41','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-16 10:26:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 10:26:41 AM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53660,102,TO_TIMESTAMP('2014-07-16 10:26:41','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-16 10:26:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 10:26:41 AM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53660,103,TO_TIMESTAMP('2014-07-16 10:26:41','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-16 10:26:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 10:26:42 AM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53660,50001,TO_TIMESTAMP('2014-07-16 10:26:41','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-16 10:26:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 10:26:42 AM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53660,50002,TO_TIMESTAMP('2014-07-16 10:26:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-16 10:26:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 10:42:41 AM CEST
-- LVE-HR
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53133,53248,TO_TIMESTAMP('2014-07-16 10:42:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','HR_PaySelection View',TO_TIMESTAMP('2014-07-16 10:42:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 10:42:54 AM CEST
-- LVE-HR
UPDATE AD_Process SET AD_ReportView_ID=53133,Updated=TO_TIMESTAMP('2014-07-16 10:42:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53660
;

-- 16/07/2014 10:43:19 AM CEST
-- LVE-HR
UPDATE AD_Tab SET AD_Process_ID=53660,Updated=TO_TIMESTAMP('2014-07-16 10:43:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53293
;

