-- 29/08/2014 02:40:00 PM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53694,'N',TO_DATE('2014-08-29 14:39:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_Loan_Receiptcpy.jrxml','Loan Receipt','Y',0,0,TO_DATE('2014-08-29 14:39:57','YYYY-MM-DD HH24:MI:SS'),100,'inf_LoanReceipt')
;

-- 29/08/2014 02:40:00 PM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53694 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 29/08/2014 02:40:00 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53694,0,TO_DATE('2014-08-29 14:40:00','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-08-29 14:40:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/08/2014 02:40:01 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53694,102,TO_DATE('2014-08-29 14:40:00','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-08-29 14:40:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/08/2014 02:40:01 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53694,103,TO_DATE('2014-08-29 14:40:01','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-08-29 14:40:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/08/2014 02:40:01 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53694,50001,TO_DATE('2014-08-29 14:40:01','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-08-29 14:40:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/08/2014 02:40:02 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53694,50002,TO_DATE('2014-08-29 14:40:01','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-08-29 14:40:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/08/2014 02:40:40 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Recibo de Prestamo',Updated=TO_DATE('2014-08-29 14:40:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53694 AND AD_Language='es_MX'
;

-- 29/08/2014 02:49:57 PM VET
-- LVE HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50256,100,100,53794,'N',TO_DATE('2014-08-29 14:49:47','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53694,'HR Payment Receipt Loan',TO_DATE('2014-08-29 14:49:47','YYYY-MM-DD HH24:MI:SS'),100)
;

