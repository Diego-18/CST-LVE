-- 30/07/2014 02:53:53 PM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53681,'N',TO_DATE('2014-07-30 14:53:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_ARC.jrxml','ARC','Y',0,0,TO_DATE('2014-07-30 14:53:48','YYYY-MM-DD HH24:MI:SS'),100,'LVE_HR_ARC')
;

-- 30/07/2014 02:53:53 PM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53681 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 30/07/2014 02:53:53 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53681,0,TO_DATE('2014-07-30 14:53:53','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-30 14:53:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/07/2014 02:53:53 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53681,102,TO_DATE('2014-07-30 14:53:53','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-30 14:53:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/07/2014 02:53:53 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53681,103,TO_DATE('2014-07-30 14:53:53','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-30 14:53:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/07/2014 02:53:53 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53681,50001,TO_DATE('2014-07-30 14:53:53','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-30 14:53:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/07/2014 02:53:54 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53681,50002,TO_DATE('2014-07-30 14:53:53','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-07-30 14:53:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/07/2014 03:08:06 PM VET
-- LVE HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50249,100,100,53794,'N',TO_DATE('2014-07-30 15:08:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53681,'HR ARC',TO_DATE('2014-07-30 15:08:02','YYYY-MM-DD HH24:MI:SS'),100)
;

