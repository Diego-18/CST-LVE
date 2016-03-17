-- 21/07/2014 08:48:12 PM CEST
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53669,'N',TO_DATE('2014-07-21 20:48:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_ProvisionProcessDetail.jrxml','HR Provision Process Detail','Y',0,0,TO_DATE('2014-07-21 20:48:10','YYYY-MM-DD HH24:MI:SS'),100,'inf_HR_ProvisionProcessDetail')
;

-- 21/07/2014 08:48:12 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53669 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 21/07/2014 08:48:12 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53669,0,TO_DATE('2014-07-21 20:48:12','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-21 20:48:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:48:12 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53669,102,TO_DATE('2014-07-21 20:48:12','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-21 20:48:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:48:12 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53669,103,TO_DATE('2014-07-21 20:48:12','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-21 20:48:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:48:12 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53669,50001,TO_DATE('2014-07-21 20:48:12','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-21 20:48:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:48:13 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53669,50002,TO_DATE('2014-07-21 20:48:12','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-21 20:48:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:48:38 PM CEST
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Detalle de Dotación',Updated=TO_DATE('2014-07-21 20:48:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53669 AND AD_Language='es_MX'
;

-- 21/07/2014 08:50:25 PM CEST
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53670,'N',TO_DATE('2014-07-21 20:50:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_ProvisionPayment_Receipt.jrxml','HR Provision Receipt','Y',0,0,TO_DATE('2014-07-21 20:50:24','YYYY-MM-DD HH24:MI:SS'),100,'inf_HR_ProvisionPayment_Receipt')
;

-- 21/07/2014 08:50:25 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53670 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 21/07/2014 08:50:25 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53670,0,TO_DATE('2014-07-21 20:50:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-21 20:50:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:50:25 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53670,102,TO_DATE('2014-07-21 20:50:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-21 20:50:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:50:25 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53670,103,TO_DATE('2014-07-21 20:50:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-21 20:50:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:50:26 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53670,50001,TO_DATE('2014-07-21 20:50:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-21 20:50:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:50:26 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53670,50002,TO_DATE('2014-07-21 20:50:26','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-21 20:50:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:51:14 PM CEST
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Recibo de Dotación',Updated=TO_DATE('2014-07-21 20:51:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53670 AND AD_Language='es_MX'
;

-- 21/07/2014 08:51:57 PM CEST
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53671,'N',TO_DATE('2014-07-21 20:51:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_PPEPayment_Receipt.jrxml','HR PPEPayment Receipt','Y',0,0,TO_DATE('2014-07-21 20:51:55','YYYY-MM-DD HH24:MI:SS'),100,'inf_HR_PPEPayment_Receipt')
;

-- 21/07/2014 08:51:57 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53671 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 21/07/2014 08:51:57 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53671,0,TO_DATE('2014-07-21 20:51:57','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-21 20:51:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:51:57 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53671,102,TO_DATE('2014-07-21 20:51:57','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-21 20:51:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:51:57 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53671,103,TO_DATE('2014-07-21 20:51:57','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-21 20:51:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:51:57 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53671,50001,TO_DATE('2014-07-21 20:51:57','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-21 20:51:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:51:57 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53671,50002,TO_DATE('2014-07-21 20:51:57','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-21 20:51:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:52:27 PM CEST
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Recibo de Dotación de Seguridad',Updated=TO_DATE('2014-07-21 20:52:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53671 AND AD_Language='es_MX'
;

-- 21/07/2014 08:53:31 PM CEST
-- LVE-HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50241,100,100,53794,'N',TO_DATE('2014-07-21 20:53:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53669,'HR Provision Detail',TO_DATE('2014-07-21 20:53:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:53:46 PM CEST
-- LVE-HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50242,100,100,53794,'N',TO_DATE('2014-07-21 20:53:45','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53670,'HR Provision Receipt',TO_DATE('2014-07-21 20:53:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:54:24 PM CEST
-- LVE-HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50243,100,100,53794,'N',TO_DATE('2014-07-21 20:54:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53671,'HR Safe Provision Receipt',TO_DATE('2014-07-21 20:54:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:55:08 PM CEST
-- LVE-HR
UPDATE AD_Column SET AD_Val_Rule_ID=270,Updated=TO_DATE('2014-07-21 20:55:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73423
;

-- 21/07/2014 08:58:48 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1790,0,53478,54880,19,'AD_PrintFormat_ID',TO_DATE('2014-07-21 20:58:47','YYYY-MM-DD HH24:MI:SS'),100,'Data Print Format','ECA02',22,'The print format determines how data is rendered for print.','Y','Y','N','N','Print Format',69,TO_DATE('2014-07-21 20:58:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:58:48 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54880 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 21/07/2014 08:59:09 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1790,0,53442,54881,19,'AD_PrintFormat_ID',TO_DATE('2014-07-21 20:59:08','YYYY-MM-DD HH24:MI:SS'),100,'Data Print Format','ECA02',22,'The print format determines how data is rendered for print.','Y','Y','N','N','Print Format',40,TO_DATE('2014-07-21 20:59:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/07/2014 08:59:09 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54881 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 21/07/2014 08:59:41 PM CEST
-- LVE-HR
UPDATE AD_Column SET AD_Val_Rule_ID=NULL,Updated=TO_DATE('2014-07-21 20:59:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73423
;

