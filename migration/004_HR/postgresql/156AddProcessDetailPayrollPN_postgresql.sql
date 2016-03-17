-- 7/08/2014 01:14:30 PM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53689,53072,'N',TO_TIMESTAMP('2014-08-07 13:14:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_ProcessDetailcpy.jrxml','Process Detail Payment Net','Y',0,0,TO_TIMESTAMP('2014-08-07 13:14:21','YYYY-MM-DD HH24:MI:SS'),100,'LVE_RV_HR_ProcessDetail ProcessDetail_PN')
;

-- 7/08/2014 01:14:30 PM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53689 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 7/08/2014 01:14:30 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53689,0,TO_TIMESTAMP('2014-08-07 13:14:30','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-08-07 13:14:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/08/2014 01:14:31 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53689,102,TO_TIMESTAMP('2014-08-07 13:14:31','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-08-07 13:14:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/08/2014 01:14:31 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53689,103,TO_TIMESTAMP('2014-08-07 13:14:31','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-08-07 13:14:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/08/2014 01:14:31 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53689,50001,TO_TIMESTAMP('2014-08-07 13:14:31','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-08-07 13:14:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/08/2014 01:14:31 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53689,50002,TO_TIMESTAMP('2014-08-07 13:14:31','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-08-07 13:14:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/08/2014 01:16:20 PM VET
-- LVE HR
INSERT INTO AD_UserQuery (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_User_ID,AD_UserQuery_ID,Created,CreatedBy,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,110,116,100,50015,TO_TIMESTAMP('2014-08-07 13:16:19','YYYY-MM-DD HH24:MI:SS'),100,'Y','** Last Query **',TO_TIMESTAMP('2014-08-07 13:16:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/08/2014 01:18:02 PM VET
-- LVE HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50253,100,100,53794,'N',TO_TIMESTAMP('2014-08-07 13:18:01','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53689,'HR Process Detail Payment Net',TO_TIMESTAMP('2014-08-07 13:18:01','YYYY-MM-DD HH24:MI:SS'),100)
;

