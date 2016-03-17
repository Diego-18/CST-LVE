-- 22/07/2014 03:47:07 PM CEST
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53673,'N',TO_DATE('2014-07-22 15:46:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_ToysProcess_Receipt.jrxml','HR Toys Process Receipt','Y',0,0,TO_DATE('2014-07-22 15:46:04','YYYY-MM-DD HH24:MI:SS'),100,'inf_HR_ToysProcess_Receipt')
;

-- 22/07/2014 03:47:07 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53673 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 22/07/2014 03:47:07 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53673,0,TO_DATE('2014-07-22 15:47:07','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 15:47:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:47:08 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53673,102,TO_DATE('2014-07-22 15:47:07','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 15:47:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:47:08 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53673,103,TO_DATE('2014-07-22 15:47:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 15:47:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:47:08 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53673,50001,TO_DATE('2014-07-22 15:47:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 15:47:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:47:08 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53673,50002,TO_DATE('2014-07-22 15:47:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 15:47:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:47:24 PM CEST
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Recibo de Entrega de Juguetes',Updated=TO_DATE('2014-07-22 15:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53673 AND AD_Language='es_MX'
;

-- 22/07/2014 03:49:25 PM CEST
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53674,'N',TO_DATE('2014-07-22 15:49:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_ToysProcessDetail.jrxml','HR Toys Process Detail','Y',0,0,TO_DATE('2014-07-22 15:49:20','YYYY-MM-DD HH24:MI:SS'),100,'inf_HR_ToysProcessDetail')
;

-- 22/07/2014 03:49:25 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53674 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 22/07/2014 03:49:25 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53674,0,TO_DATE('2014-07-22 15:49:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 15:49:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:49:25 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53674,102,TO_DATE('2014-07-22 15:49:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 15:49:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:49:25 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53674,103,TO_DATE('2014-07-22 15:49:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 15:49:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:49:26 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53674,50001,TO_DATE('2014-07-22 15:49:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 15:49:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:49:26 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53674,50002,TO_DATE('2014-07-22 15:49:26','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 15:49:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:49:49 PM CEST
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Detalle de Entrega de Juguetes',Updated=TO_DATE('2014-07-22 15:49:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53674 AND AD_Language='es_MX'
;

-- 22/07/2014 03:51:16 PM CEST
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53675,'N',TO_DATE('2014-07-22 15:51:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_ProcessConceptAmtVend.jrxml','HR Process Concept Amount Vendor','Y',0,0,TO_DATE('2014-07-22 15:51:12','YYYY-MM-DD HH24:MI:SS'),100,'inf_HR_ProcessConceptAmtVend')
;

-- 22/07/2014 03:51:16 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53675 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 22/07/2014 03:51:16 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53675,0,TO_DATE('2014-07-22 15:51:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 15:51:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:51:16 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53675,102,TO_DATE('2014-07-22 15:51:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 15:51:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:51:16 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53675,103,TO_DATE('2014-07-22 15:51:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 15:51:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:51:16 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53675,50001,TO_DATE('2014-07-22 15:51:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 15:51:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:51:16 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53675,50002,TO_DATE('2014-07-22 15:51:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 15:51:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:51:53 PM CEST
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Monto de Concepto por Empleado',Updated=TO_DATE('2014-07-22 15:51:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53675 AND AD_Language='es_MX'
;

-- 22/07/2014 03:53:09 PM CEST
-- LVE-HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50244,100,100,53794,'N',TO_DATE('2014-07-22 15:52:47','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53673,'HR Toys Receipt',TO_DATE('2014-07-22 15:52:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:53:40 PM CEST
-- LVE-HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50245,100,100,53794,'N',TO_DATE('2014-07-22 15:53:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53674,'HR Toys Detail',TO_DATE('2014-07-22 15:53:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:54:04 PM CEST
-- LVE-HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50246,100,100,53794,'N',TO_DATE('2014-07-22 15:54:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53675,'HR Amount Employee',TO_DATE('2014-07-22 15:54:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:55:46 PM CEST
-- LVE-HR
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52385,'AD_PrintFormat.AD_Process_ID IS NOT NULL',TO_DATE('2014-07-22 15:55:45','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','AD_PrintFormat from Jasper Process','S',TO_DATE('2014-07-22 15:55:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 03:56:16 PM CEST
-- LVE-HR
UPDATE AD_Column SET AD_Val_Rule_ID=52385,Updated=TO_DATE('2014-07-22 15:56:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73423
;

-- 22/07/2014 03:56:53 PM CEST
-- LVE-HR
DELETE  FROM  AD_Menu_Trl WHERE AD_Menu_ID=53608
;

-- 22/07/2014 03:56:53 PM CEST
-- LVE-HR
DELETE FROM AD_Menu WHERE AD_Menu_ID=53608
;

-- 22/07/2014 03:56:53 PM CEST
-- LVE-HR
DELETE FROM AD_TreeNodeMM WHERE AD_Tree_ID=10 AND Node_ID=53608
;

-- 22/07/2014 03:57:05 PM CEST
-- LVE-HR
UPDATE AD_Process SET IsActive='N',Updated=TO_DATE('2014-07-22 15:57:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53442
;

-- 22/07/2014 03:57:07 PM CEST
-- LVE-HR
DELETE  FROM  AD_Process_Trl WHERE AD_Process_ID=53442
;

-- 22/07/2014 03:57:07 PM CEST
-- LVE-HR
DELETE FROM AD_Process WHERE AD_Process_ID=53442
;

-- 22/07/2014 03:57:33 PM CEST
-- LVE-HR
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52385,Updated=TO_DATE('2014-07-22 15:57:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54880
;

