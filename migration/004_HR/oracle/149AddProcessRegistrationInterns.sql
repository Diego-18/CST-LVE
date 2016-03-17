-- Aug 5, 2014 5:52:51 PM UTC
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53686,'N',TO_DATE('2014-08-05 17:52:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_LVE_HR_RegistrationInterns.jrxml','Registration Interns','Y',0,0,TO_DATE('2014-08-05 17:52:50','YYYY-MM-DD HH24:MI:SS'),100,'inf_LVE_HR_RegistrationInterns')
;

-- Aug 5, 2014 5:52:52 PM UTC
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53686 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 5, 2014 5:52:52 PM UTC
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53686,0,TO_DATE('2014-08-05 17:52:52','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-08-05 17:52:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2014 5:52:52 PM UTC
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53686,102,TO_DATE('2014-08-05 17:52:52','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-08-05 17:52:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2014 5:52:52 PM UTC
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53686,103,TO_DATE('2014-08-05 17:52:52','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-08-05 17:52:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2014 5:52:52 PM UTC
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53686,50001,TO_DATE('2014-08-05 17:52:52','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-08-05 17:52:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2014 5:52:52 PM UTC
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53686,50002,TO_DATE('2014-08-05 17:52:52','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2014-08-05 17:52:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 5, 2014 5:53:09 PM UTC
-- LVE HR
UPDATE AD_Process_Trl SET Name='Registro de Pasantes',Updated=TO_DATE('2014-08-05 17:53:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53686 AND AD_Language='es_MX'
;

-- Aug 5, 2014 5:54:19 PM UTC
-- LVE HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50251,100,100,53090,'N',TO_DATE('2014-08-05 17:54:18','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53686,'Registration Interns',TO_DATE('2014-08-05 17:54:18','YYYY-MM-DD HH24:MI:SS'),100)
;

