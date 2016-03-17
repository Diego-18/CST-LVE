-- 15/07/2014 04:11:48 PM CEST
-- LVE-HR
UPDATE AD_Process SET IsReport='N',Updated=TO_TIMESTAMP('2014-07-15 16:11:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53478
;

-- 15/07/2014 04:12:46 PM CEST
-- LVE-HR
UPDATE AD_Process SET Classname='org.spin.process.PrintProcessReport', IsReport='N',Updated=TO_TIMESTAMP('2014-07-15 16:12:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53442
;

-- 15/07/2014 04:13:35 PM CEST
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53656,NULL,'N',TO_TIMESTAMP('2014-07-15 16:13:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_Payment_Receipt.jasper','HR Standard Payment Receipt','Y',0,0,TO_TIMESTAMP('2014-07-15 16:13:30','YYYY-MM-DD HH24:MI:SS'),100,'rpt_HR_PaymentReceiptStd')
;

-- 15/07/2014 04:13:35 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53656 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 15/07/2014 04:13:35 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53656,0,TO_TIMESTAMP('2014-07-15 16:13:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-15 16:13:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 04:13:35 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53656,102,TO_TIMESTAMP('2014-07-15 16:13:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-15 16:13:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 04:13:35 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53656,103,TO_TIMESTAMP('2014-07-15 16:13:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-15 16:13:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 04:13:36 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53656,50001,TO_TIMESTAMP('2014-07-15 16:13:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-15 16:13:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 04:13:36 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53656,50002,TO_TIMESTAMP('2014-07-15 16:13:36','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-15 16:13:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 04:14:17 PM CEST
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Recibo de Pago (Estándar)',Updated=TO_TIMESTAMP('2014-07-15 16:14:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53656 AND AD_Language='es_MX'
;

-- 15/07/2014 04:14:26 PM CEST
-- LVE-HR
UPDATE AD_Process SET JasperReport=NULL,Updated=TO_TIMESTAMP('2014-07-15 16:14:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53442
;

-- 15/07/2014 04:17:17 PM CEST
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53657,53072,NULL,'N',TO_TIMESTAMP('2014-07-15 16:17:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_ProcessSummary.jrxml','Process Detail','Y',0,0,TO_TIMESTAMP('2014-07-15 16:17:07','YYYY-MM-DD HH24:MI:SS'),100,'LVE_RV_HR_ProcessDetail ProcessDetail')
;

-- 15/07/2014 04:17:17 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53657 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 15/07/2014 04:17:17 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53657,0,TO_TIMESTAMP('2014-07-15 16:17:17','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-15 16:17:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 04:17:17 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53657,102,TO_TIMESTAMP('2014-07-15 16:17:17','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-15 16:17:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 04:17:17 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53657,103,TO_TIMESTAMP('2014-07-15 16:17:17','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-15 16:17:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 04:17:18 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53657,50001,TO_TIMESTAMP('2014-07-15 16:17:17','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-15 16:17:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 04:17:18 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53657,50002,TO_TIMESTAMP('2014-07-15 16:17:18','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-15 16:17:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 04:17:36 PM CEST
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Detalle de Nómina',Updated=TO_TIMESTAMP('2014-07-15 16:17:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53657 AND AD_Language='es_MX'
;

-- 15/07/2014 04:18:04 PM CEST
-- LVE-HR
UPDATE AD_Process SET JasperReport='attachment:inf_HR_ProcessDetail.jrxml',Updated=TO_TIMESTAMP('2014-07-15 16:18:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53657
;

-- 15/07/2014 04:21:21 PM CEST
-- LVE-HR
UPDATE AD_Process SET JasperReport='attachment:inf_HR_Payment_Receipt.jrxml',Updated=TO_TIMESTAMP('2014-07-15 16:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53656
;

-- 15/07/2014 04:33:48 PM CEST
-- LVE-HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50232,100,100,53794,'N',TO_TIMESTAMP('2014-07-15 16:33:38','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53656,'HR Standard Payment Receipt',TO_TIMESTAMP('2014-07-15 16:33:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 04:34:46 PM CEST
-- LVE-HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50233,100,100,53794,'N',TO_TIMESTAMP('2014-07-15 16:34:45','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53657,'Process Detail',TO_TIMESTAMP('2014-07-15 16:34:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 04:35:11 PM CEST
-- LVE-HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50234,100,100,53794,'N',TO_TIMESTAMP('2014-07-15 16:35:10','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53632,'Process Summary',TO_TIMESTAMP('2014-07-15 16:35:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 04:36:28 PM CEST
-- LVE-HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50235,100,100,53794,'N',TO_TIMESTAMP('2014-07-15 16:36:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53642,'Employee Concept Summary',TO_TIMESTAMP('2014-07-15 16:36:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 04:37:29 PM CEST
-- LVE-HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50236,100,100,53794,'N',TO_TIMESTAMP('2014-07-15 16:37:28','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53641,'Department Concept Summary',TO_TIMESTAMP('2014-07-15 16:37:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 05:05:07 PM CEST
-- LVE-HR
UPDATE AD_PrintFormat SET Name='HR Process Detail',Updated=TO_TIMESTAMP('2014-07-15 17:05:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50233
;

-- 15/07/2014 05:05:12 PM CEST
-- LVE-HR
UPDATE AD_PrintFormat SET Name='HR Process Summary',Updated=TO_TIMESTAMP('2014-07-15 17:05:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50234
;

-- 15/07/2014 05:05:17 PM CEST
-- LVE-HR
UPDATE AD_PrintFormat SET Name='HR Employee Concept Summary',Updated=TO_TIMESTAMP('2014-07-15 17:05:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50235
;

-- 15/07/2014 05:05:22 PM CEST
-- LVE-HR
UPDATE AD_PrintFormat SET Name='HR Department Concept Summary',Updated=TO_TIMESTAMP('2014-07-15 17:05:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50236
;

