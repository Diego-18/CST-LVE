-- 17/07/2014 09:40:35 AM VET
-- LVE-EFT
INSERT INTO AD_Process (AccessLevel,AD_Browse_ID,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',50039,0,0,53663,'N',TO_TIMESTAMP('2014-07-17 09:40:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Open Payment','Y',0,0,TO_TIMESTAMP('2014-07-17 09:40:33','YYYY-MM-DD HH24:MI:SS'),100,'PR_SB_OP')
;

-- 17/07/2014 09:40:35 AM VET
-- LVE-EFT
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53663 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 17/07/2014 09:40:45 AM VET
-- LVE-EFT
UPDATE AD_Process_Trl SET Name='Pagos Abiertos',Updated=TO_TIMESTAMP('2014-07-17 09:40:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53663 AND AD_Language='es_MX'
;

