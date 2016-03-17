-- 22/07/2014 09:42:42 PM CEST
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53677,'N',TO_DATE('2014-07-22 21:42:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_ProcessSummary_Cross.jrxml','HR Process Summary Cross','Y',0,0,TO_DATE('2014-07-22 21:42:40','YYYY-MM-DD HH24:MI:SS'),100,'inf_HR_ProcessSummary_Cross')
;

-- 22/07/2014 09:42:42 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53677 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 22/07/2014 09:42:42 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53677,0,TO_DATE('2014-07-22 21:42:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 21:42:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 09:42:42 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53677,102,TO_DATE('2014-07-22 21:42:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 21:42:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 09:42:43 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53677,103,TO_DATE('2014-07-22 21:42:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 21:42:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 09:42:43 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53677,50001,TO_DATE('2014-07-22 21:42:43','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 21:42:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 09:42:43 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53677,50002,TO_DATE('2014-07-22 21:42:43','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-22 21:42:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2014 09:43:21 PM CEST
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Resumen de Nómina por Fecha',Updated=TO_DATE('2014-07-22 21:43:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53677 AND AD_Language='es_MX'
;

-- 22/07/2014 09:44:04 PM CEST
-- LVE-HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50248,100,100,53794,'N',TO_DATE('2014-07-22 21:44:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53677,'HR Process Summary Cross',TO_DATE('2014-07-22 21:44:03','YYYY-MM-DD HH24:MI:SS'),100)
;

