-- 27/06/2014 05:17:13 PM VET
-- HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53389,0,53641,54853,19,'HR_Contract_ID',TO_TIMESTAMP('2014-06-27 17:17:11','YYYY-MM-DD HH24:MI:SS'),1013258,'ECA02',10,'Y','Y','N','N','Payroll Contract',61,TO_TIMESTAMP('2014-06-27 17:17:11','YYYY-MM-DD HH24:MI:SS'),1013258)
;

-- 27/06/2014 05:17:14 PM VET
-- HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54853 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/06/2014 05:21:11 PM VET
-- HR
UPDATE AD_Process_Para SET SeqNo=11,Updated=TO_TIMESTAMP('2014-06-27 17:21:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013258 WHERE AD_Process_Para_ID=54853
;

-- 27/06/2014 05:21:27 PM VET
-- HR
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-06-27 17:21:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013258 WHERE AD_Process_Para_ID=54811
;

-- 27/06/2014 05:21:33 PM VET
-- HR
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-06-27 17:21:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013258 WHERE AD_Process_Para_ID=54812
;

-- 27/06/2014 05:22:49 PM VET
-- HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53389,0,53642,54854,19,'HR_Contract_ID',TO_TIMESTAMP('2014-06-27 17:22:48','YYYY-MM-DD HH24:MI:SS'),1013258,'ECA02',10,'Y','Y','N','N','Payroll Contract',62,TO_TIMESTAMP('2014-06-27 17:22:48','YYYY-MM-DD HH24:MI:SS'),1013258)
;

-- 27/06/2014 05:22:49 PM VET
-- HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54854 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/06/2014 05:22:53 PM VET
-- HR
UPDATE AD_Process_Para SET SeqNo=11,Updated=TO_TIMESTAMP('2014-06-27 17:22:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013258 WHERE AD_Process_Para_ID=54854
;

-- 27/06/2014 05:23:03 PM VET
-- HR
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-06-27 17:23:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013258 WHERE AD_Process_Para_ID=54816
;

-- 27/06/2014 05:23:08 PM VET
-- HR
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-06-27 17:23:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013258 WHERE AD_Process_Para_ID=54817
;

-- 27/06/2014 05:23:44 PM VET
-- HR
UPDATE AD_Process_Para SET SeqNo=11,Updated=TO_TIMESTAMP('2014-06-27 17:23:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013258 WHERE AD_Process_Para_ID=54855
;

-- 27/06/2014 05:23:56 PM VET
-- HR
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-06-27 17:23:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013258 WHERE AD_Process_Para_ID=3000384
;

-- 27/06/2014 05:24:00 PM VET
-- HR
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-06-27 17:24:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013258 WHERE AD_Process_Para_ID=3000385
;

-- 27/06/2014 05:25:02 PM VET
-- HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53389,0,53478,54856,19,'HR_Contract_ID',TO_TIMESTAMP('2014-06-27 17:25:01','YYYY-MM-DD HH24:MI:SS'),1013258,'ECA02',10,'Y','Y','N','N','Payroll Contract',11,TO_TIMESTAMP('2014-06-27 17:25:01','YYYY-MM-DD HH24:MI:SS'),1013258)
;

-- 27/06/2014 05:25:02 PM VET
-- HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54856 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/06/2014 05:25:19 PM VET
-- HR
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-06-27 17:25:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013258 WHERE AD_Process_Para_ID=1500053
;

-- 27/06/2014 05:25:24 PM VET
-- HR
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-06-27 17:25:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013258 WHERE AD_Process_Para_ID=1500055
;

