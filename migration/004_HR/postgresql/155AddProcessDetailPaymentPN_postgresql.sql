-- 6/08/2014 09:46:53 PM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53687,'N',TO_TIMESTAMP('2014-08-06 21:46:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_SpecialPayment_Receiptcpy.jrxml','HR Special Payment Receipt Payment Net','Y',0,0,TO_TIMESTAMP('2014-08-06 21:46:51','YYYY-MM-DD HH24:MI:SS'),100,'inf_HR_SpecialPayment_Receipt_PN')
;

-- 6/08/2014 09:46:53 PM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53687 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 6/08/2014 09:46:53 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53687,0,TO_TIMESTAMP('2014-08-06 21:46:53','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-08-06 21:46:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 6/08/2014 09:46:54 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53687,102,TO_TIMESTAMP('2014-08-06 21:46:53','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-08-06 21:46:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 6/08/2014 09:46:54 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53687,103,TO_TIMESTAMP('2014-08-06 21:46:54','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-08-06 21:46:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 6/08/2014 09:46:54 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53687,50001,TO_TIMESTAMP('2014-08-06 21:46:54','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-08-06 21:46:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 6/08/2014 09:46:55 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53687,50002,TO_TIMESTAMP('2014-08-06 21:46:54','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-08-06 21:46:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 6/08/2014 09:50:19 PM VET
-- LVE HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50252,100,100,53794,'N',TO_TIMESTAMP('2014-08-06 21:50:18','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53687,'HR Special Payment Receipt Payment Net',TO_TIMESTAMP('2014-08-06 21:50:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 6/08/2014 09:51:32 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Neto a Pagar de Recibos Especiales',Updated=TO_TIMESTAMP('2014-08-06 21:51:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53687 AND AD_Language='es_MX'
;

