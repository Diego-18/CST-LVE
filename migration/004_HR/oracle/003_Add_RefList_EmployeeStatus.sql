-- Sep 17, 2013 11:56:07 AM VET
-- LVE-Import
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53557,TO_DATE('2013-09-17 11:56:05','YYYY-MM-DD HH24:MI:SS'),100,'Employee Status','ECA02','Y','N','LVE_HR EmployeeStatus',TO_DATE('2013-09-17 11:56:05','YYYY-MM-DD HH24:MI:SS'),100,'L','LL')
;

-- Sep 17, 2013 11:56:07 AM VET
-- LVE-Import
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53557 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Sep 17, 2013 11:56:31 AM VET
-- LVE-Import
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53557,54060,TO_DATE('2013-09-17 11:56:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Active',TO_DATE('2013-09-17 11:56:30','YYYY-MM-DD HH24:MI:SS'),100,'AC')
;

-- Sep 17, 2013 11:56:31 AM VET
-- LVE-Import
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54060 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 11:56:36 AM VET
-- LVE-Import
UPDATE AD_Ref_List_Trl SET Name='Activo',Updated=TO_DATE('2013-09-17 11:56:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54060 AND AD_Language='es_MX'
;

-- Sep 17, 2013 11:57:16 AM VET
-- LVE-Import
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53557,54061,TO_DATE('2013-09-17 11:57:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Vacations',TO_DATE('2013-09-17 11:57:11','YYYY-MM-DD HH24:MI:SS'),100,'VC')
;

-- Sep 17, 2013 11:57:16 AM VET
-- LVE-Import
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54061 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 11:57:28 AM VET
-- LVE-Import
UPDATE AD_Ref_List_Trl SET Name='Vacaciones',Updated=TO_DATE('2013-09-17 11:57:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54061 AND AD_Language='es_MX'
;

-- Sep 17, 2013 11:58:32 AM VET
-- LVE-Import
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53557,54062,TO_DATE('2013-09-17 11:58:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Test Period',TO_DATE('2013-09-17 11:58:30','YYYY-MM-DD HH24:MI:SS'),100,'TP')
;

-- Sep 17, 2013 11:58:32 AM VET
-- LVE-Import
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54062 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 12:00:36 PM VET
-- LVE-Import
UPDATE AD_Ref_List_Trl SET Name='Período de Prueba',Updated=TO_DATE('2013-09-17 12:00:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54062 AND AD_Language='es_MX'
;

-- Sep 17, 2013 12:01:41 PM VET
-- LVE-Import
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53557,54063,TO_DATE('2013-09-17 12:01:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Repose',TO_DATE('2013-09-17 12:01:35','YYYY-MM-DD HH24:MI:SS'),100,'RP')
;

-- Sep 17, 2013 12:01:41 PM VET
-- LVE-Import
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54063 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 12:01:45 PM VET
-- LVE-Import
UPDATE AD_Ref_List_Trl SET Name='Reposo',Updated=TO_DATE('2013-09-17 12:01:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54063 AND AD_Language='es_MX'
;

-- Sep 17, 2013 12:02:12 PM VET
-- LVE-Import
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53557,54064,TO_DATE('2013-09-17 12:02:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Retired',TO_DATE('2013-09-17 12:02:10','YYYY-MM-DD HH24:MI:SS'),100,'RT')
;

-- Sep 17, 2013 12:02:12 PM VET
-- LVE-Import
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54064 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 12:02:17 PM VET
-- LVE-Import
UPDATE AD_Ref_List_Trl SET Name='Retirado',Updated=TO_DATE('2013-09-17 12:02:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54064 AND AD_Language='es_MX'
;

-- Sep 17, 2013 12:03:11 PM VET
-- LVE-Import
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53557,54065,TO_DATE('2013-09-17 12:03:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Suspended',TO_DATE('2013-09-17 12:03:10','YYYY-MM-DD HH24:MI:SS'),100,'SP')
;

-- Sep 17, 2013 12:03:11 PM VET
-- LVE-Import
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54065 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 12:03:21 PM VET
-- LVE-Import
UPDATE AD_Ref_List_Trl SET Name='Suspendido',Updated=TO_DATE('2013-09-17 12:03:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54065 AND AD_Language='es_MX'
;

-- Sep 17, 2013 12:03:46 PM VET
-- LVE-Import
UPDATE AD_Column SET AD_Reference_Value_ID=53557,Updated=TO_DATE('2013-09-17 12:03:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67818
;

