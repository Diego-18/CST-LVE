-- 18/07/2014 11:43:31 AM VET
-- LVE-EFT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=74031
;

-- 18/07/2014 11:43:31 AM VET
-- LVE-EFT
DELETE FROM AD_Field WHERE AD_Field_ID=74031
;

-- 18/07/2014 11:43:51 AM VET
-- LVE-EFT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73418
;

-- 18/07/2014 11:43:51 AM VET
-- LVE-EFT
DELETE FROM AD_Column WHERE AD_Column_ID=73418
;

-- 18/07/2014 11:45:23 AM VET
-- LVE-EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73693,1533,0,19,53828,'C_PaySelectionLine_ID',TO_TIMESTAMP('2014-07-18 11:45:15','YYYY-MM-DD HH24:MI:SS'),100,'Payment Selection Line','ECA02',22,'The Payment Selection Line identifies a unique line in a payment','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Payment Selection Line',0,TO_TIMESTAMP('2014-07-18 11:45:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 18/07/2014 11:45:23 AM VET
-- LVE-EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73693 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 18/07/2014 11:45:48 AM VET
-- LVE-EFT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73693,74090,0,53979,TO_TIMESTAMP('2014-07-18 11:45:45','YYYY-MM-DD HH24:MI:SS'),100,'Payment Selection Line',22,'ECA02','The Payment Selection Line identifies a unique line in a payment','Y','Y','Y','N','N','N','N','N','Payment Selection Line',TO_TIMESTAMP('2014-07-18 11:45:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/07/2014 11:45:48 AM VET
-- LVE-EFT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74090 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/07/2014 11:47:03 AM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-07-18 11:47:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74090
;

-- 18/07/2014 11:47:28 AM VET
-- LVE-EFT
UPDATE AD_Tab SET AD_Column_ID=73414,Updated=TO_TIMESTAMP('2014-07-18 11:47:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53979
;

-- 18/07/2014 11:47:49 AM VET
-- LVE-EFT
UPDATE AD_Tab SET Parent_Column_ID=73310,Updated=TO_TIMESTAMP('2014-07-18 11:47:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53979
;

-- 18/07/2014 11:50:10 AM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-07-18 11:50:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74024
;

-- 18/07/2014 11:50:10 AM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-07-18 11:50:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74027
;

-- 18/07/2014 11:50:10 AM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-07-18 11:50:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74023
;

-- 18/07/2014 11:50:10 AM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-07-18 11:50:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74029
;

-- 18/07/2014 11:50:31 AM VET
-- LVE-EFT
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='N',Updated=TO_TIMESTAMP('2014-07-18 11:50:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74032
;

-- 18/07/2014 11:50:44 AM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-07-18 11:50:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74027
;

-- 18/07/2014 11:50:57 AM VET
-- LVE-EFT
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2014-07-18 11:50:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74090
;

-- 18/07/2014 11:51:41 AM VET
-- LVE-EFT
UPDATE AD_Column SET IsIdentifier='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2014-07-18 11:51:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73414
;

-- 18/07/2014 11:52:04 AM VET
-- LVE-EFT
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_TIMESTAMP('2014-07-18 11:52:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73419
;

-- 18/07/2014 11:52:57 AM VET
-- LVE-EFT
UPDATE AD_Tab SET Parent_Column_ID=NULL,Updated=TO_TIMESTAMP('2014-07-18 11:52:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53979
;

-- 18/07/2014 11:53:46 AM VET
-- LVE-EFT
UPDATE AD_Column SET IsParent='N',Updated=TO_TIMESTAMP('2014-07-18 11:53:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73414
;

-- 18/07/2014 11:55:44 AM VET
-- LVE-EFT
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2014-07-18 11:55:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73414
;

-- 18/07/2014 11:55:58 AM VET
-- LVE-EFT
UPDATE AD_Tab SET AD_Column_ID=NULL,Updated=TO_TIMESTAMP('2014-07-18 11:55:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53979
;

