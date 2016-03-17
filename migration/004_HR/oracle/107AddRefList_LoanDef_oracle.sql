-- 28/06/2014 04:12:12 PM CEST
-- LVE-HR
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53704,TO_DATE('2014-06-28 16:12:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','LVE_HR_LoanDefinition PaymentTerm List',TO_DATE('2014-06-28 16:12:11','YYYY-MM-DD HH24:MI:SS'),100,'L','L')
;

-- 28/06/2014 04:12:12 PM CEST
-- LVE-HR
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53704 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 28/06/2014 04:13:20 PM CEST
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53704,54412,TO_DATE('2014-06-28 16:13:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Stard',TO_DATE('2014-06-28 16:13:19','YYYY-MM-DD HH24:MI:SS'),100,'S')
;

-- 28/06/2014 04:13:20 PM CEST
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54412 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/06/2014 04:13:26 PM CEST
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Inicio',Updated=TO_DATE('2014-06-28 16:13:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54412 AND AD_Language='es_MX'
;

-- 28/06/2014 04:13:32 PM CEST
-- LVE-HR
UPDATE AD_Ref_List SET Name='Start',Updated=TO_DATE('2014-06-28 16:13:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54412
;

-- 28/06/2014 04:13:32 PM CEST
-- LVE-HR
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54412
;

-- 28/06/2014 04:13:44 PM CEST
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53704,54413,TO_DATE('2014-06-28 16:13:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','End',TO_DATE('2014-06-28 16:13:43','YYYY-MM-DD HH24:MI:SS'),100,'E')
;

-- 28/06/2014 04:13:44 PM CEST
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54413 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/06/2014 04:13:49 PM CEST
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Final',Updated=TO_DATE('2014-06-28 16:13:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54413 AND AD_Language='es_MX'
;

-- 28/06/2014 04:14:07 PM CEST
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53704,54414,TO_DATE('2014-06-28 16:14:06','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Always',TO_DATE('2014-06-28 16:14:06','YYYY-MM-DD HH24:MI:SS'),100,'A')
;

-- 28/06/2014 04:14:07 PM CEST
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54414 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/06/2014 04:14:11 PM CEST
-- LVE-HR
UPDATE AD_Ref_List SET EntityType='ECA02',Updated=TO_DATE('2014-06-28 16:14:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54414
;

-- 28/06/2014 04:14:16 PM CEST
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Siempre',Updated=TO_DATE('2014-06-28 16:14:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54414 AND AD_Language='es_MX'
;

