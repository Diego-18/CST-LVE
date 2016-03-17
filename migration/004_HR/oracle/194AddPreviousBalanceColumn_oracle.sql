-- 14/01/2015 10:06:42 AM CET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,75416,75295,0,53966,TO_DATE('2015-01-14 10:06:39','YYYY-MM-DD HH24:MI:SS'),100,10,'@ManagesInterest@=''Y','ECA02','N','Y','Y','Y','N','N','N','Y','N','Concept (Previous Balance)',260,TO_DATE('2015-01-14 10:06:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/01/2015 10:06:42 AM CET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75295 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/01/2015 10:07:00 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2015-01-14 10:07:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75295
;

-- 14/01/2015 10:07:00 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2015-01-14 10:07:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75294
;

-- 14/01/2015 10:07:00 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_DATE('2015-01-14 10:07:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74667
;

-- 14/01/2015 10:07:00 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=300,Updated=TO_DATE('2015-01-14 10:07:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75292
;

-- 14/01/2015 10:07:05 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_DATE('2015-01-14 10:07:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75295
;

-- 14/01/2015 10:07:05 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2015-01-14 10:07:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75293
;

