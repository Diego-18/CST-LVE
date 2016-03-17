-- 11/07/2014 04:20:47 PM VET
-- LVE-EFT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73333,73996,0,167,TO_TIMESTAMP('2014-07-11 16:20:46','YYYY-MM-DD HH24:MI:SS'),100,4,'ECA02','Y','Y','Y','N','N','N','N','N','Request Type',TO_TIMESTAMP('2014-07-11 16:20:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/07/2014 04:20:47 PM VET
-- LVE-EFT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73996 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 11/07/2014 04:22:01 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=310,Updated=TO_TIMESTAMP('2014-07-11 16:22:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73996
;

-- 11/07/2014 04:22:01 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=320,Updated=TO_TIMESTAMP('2014-07-11 16:22:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3125
;

-- 11/07/2014 04:22:01 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=330,Updated=TO_TIMESTAMP('2014-07-11 16:22:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73995
;

-- 11/07/2014 04:23:05 PM VET
-- LVE-EFT
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''PRQ''',Updated=TO_TIMESTAMP('2014-07-11 16:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73996
;

-- 11/07/2014 04:23:35 PM VET
-- LVE-EFT
UPDATE AD_Field_Trl SET Name='Tipo de Orden',Updated=TO_TIMESTAMP('2014-07-11 16:23:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73996 AND AD_Language='es_MX'
;

