-- 17/07/2014 09:23:59 PM CEST
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53665,'N',TO_TIMESTAMP('2014-07-17 21:23:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_SpecialPayment_Receipt.jrxml','HR Special Payment Receipt','Y',0,0,TO_TIMESTAMP('2014-07-17 21:23:58','YYYY-MM-DD HH24:MI:SS'),100,'inf_HR_SpecialPayment_Receipt')
;

-- 17/07/2014 09:23:59 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53665 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 17/07/2014 09:23:59 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53665,0,TO_TIMESTAMP('2014-07-17 21:23:59','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-17 21:23:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:24:00 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53665,102,TO_TIMESTAMP('2014-07-17 21:23:59','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-17 21:23:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:24:00 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53665,103,TO_TIMESTAMP('2014-07-17 21:24:00','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-17 21:24:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:24:00 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53665,50001,TO_TIMESTAMP('2014-07-17 21:24:00','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-17 21:24:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:24:00 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53665,50002,TO_TIMESTAMP('2014-07-17 21:24:00','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-17 21:24:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:24:14 PM CEST
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Recibo de Pagos Especiales',Updated=TO_TIMESTAMP('2014-07-17 21:24:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53665 AND AD_Language='es_MX'
;

-- 17/07/2014 09:25:08 PM CEST
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53666,'N',TO_TIMESTAMP('2014-07-17 21:25:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_VacationPayment_Receipt.jrxml','HR Vacation Payment Receipt','Y',0,0,TO_TIMESTAMP('2014-07-17 21:25:07','YYYY-MM-DD HH24:MI:SS'),100,'inf_HR_VacationPayment_Receipt')
;

-- 17/07/2014 09:25:08 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53666 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 17/07/2014 09:25:08 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53666,0,TO_TIMESTAMP('2014-07-17 21:25:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-17 21:25:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:25:08 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53666,102,TO_TIMESTAMP('2014-07-17 21:25:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-17 21:25:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:25:08 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53666,103,TO_TIMESTAMP('2014-07-17 21:25:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-17 21:25:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:25:09 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53666,50001,TO_TIMESTAMP('2014-07-17 21:25:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-17 21:25:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:25:09 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53666,50002,TO_TIMESTAMP('2014-07-17 21:25:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-17 21:25:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:25:45 PM CEST
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Recibo de Pago de Vacaciones',Updated=TO_TIMESTAMP('2014-07-17 21:25:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53666 AND AD_Language='es_MX'
;

-- 17/07/2014 09:31:45 PM CEST
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53667,'N',TO_TIMESTAMP('2014-07-17 21:31:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_ProcessConceptAmtEmp.jrxml','HR Process Concept Amount Employee','Y',0,0,TO_TIMESTAMP('2014-07-17 21:31:44','YYYY-MM-DD HH24:MI:SS'),100,'inf_HR_ProcessConceptAmtEmp')
;

-- 17/07/2014 09:31:45 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53667 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 17/07/2014 09:31:45 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53667,0,TO_TIMESTAMP('2014-07-17 21:31:45','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-17 21:31:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:31:45 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53667,102,TO_TIMESTAMP('2014-07-17 21:31:45','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-17 21:31:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:31:45 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53667,103,TO_TIMESTAMP('2014-07-17 21:31:45','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-17 21:31:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:31:45 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53667,50001,TO_TIMESTAMP('2014-07-17 21:31:45','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-17 21:31:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:31:45 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53667,50002,TO_TIMESTAMP('2014-07-17 21:31:45','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-17 21:31:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:32:39 PM CEST
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Reporte de Ticket de Alimentación',Updated=TO_TIMESTAMP('2014-07-17 21:32:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53667 AND AD_Language='es_MX'
;

-- 17/07/2014 09:34:45 PM CEST
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Reporte de Monto por Empleado',Updated=TO_TIMESTAMP('2014-07-17 21:34:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53667 AND AD_Language='es_MX'
;

-- 17/07/2014 09:38:15 PM CEST
-- LVE-HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50238,100,100,53794,'N',TO_TIMESTAMP('2014-07-17 21:38:14','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53666,'HR Vacation Payment Receipt',TO_TIMESTAMP('2014-07-17 21:38:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:38:32 PM CEST
-- LVE-HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50239,100,100,53794,'N',TO_TIMESTAMP('2014-07-17 21:38:31','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53665,'HR Special Payment Receipt',TO_TIMESTAMP('2014-07-17 21:38:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 09:41:04 PM CEST
-- LVE-HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50240,100,100,53794,'N',TO_TIMESTAMP('2014-07-17 21:41:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53667,'HR Process Detail Employee Amount',TO_TIMESTAMP('2014-07-17 21:41:03','YYYY-MM-DD HH24:MI:SS'),100)
;

