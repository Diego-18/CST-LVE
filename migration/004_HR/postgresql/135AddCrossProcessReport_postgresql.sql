-- 16/07/2014 11:01:05 PM CEST
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53662,'N',TO_TIMESTAMP('2014-07-16 23:01:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_ProcessDetail_Cross.jrxml','HR Process Detail Cross','Y',0,0,TO_TIMESTAMP('2014-07-16 23:01:04','YYYY-MM-DD HH24:MI:SS'),100,'inf_ProcessDetailCross')
;

-- 16/07/2014 11:01:05 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53662 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 16/07/2014 11:01:06 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53662,0,TO_TIMESTAMP('2014-07-16 23:01:05','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-16 23:01:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 11:01:06 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53662,102,TO_TIMESTAMP('2014-07-16 23:01:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-16 23:01:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 11:01:06 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53662,103,TO_TIMESTAMP('2014-07-16 23:01:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-16 23:01:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 11:01:06 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53662,50001,TO_TIMESTAMP('2014-07-16 23:01:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-16 23:01:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 11:01:06 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53662,50002,TO_TIMESTAMP('2014-07-16 23:01:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-16 23:01:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 11:01:37 PM CEST
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Detalle de Nómina por Columna',Updated=TO_TIMESTAMP('2014-07-16 23:01:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53662 AND AD_Language='es_MX'
;

-- 16/07/2014 11:02:26 PM CEST
-- LVE-HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50237,100,100,53794,'N',TO_TIMESTAMP('2014-07-16 23:02:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53662,'HR Process Detail Cross',TO_TIMESTAMP('2014-07-16 23:02:24','YYYY-MM-DD HH24:MI:SS'),100)
;

