-- Sep 18, 2013 5:11:26 PM VET
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67880,53394,0,10,114,'NationalCode',TO_TIMESTAMP('2013-09-18 17:11:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','National Code',0,TO_TIMESTAMP('2013-09-18 17:11:25','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 18, 2013 5:11:26 PM VET
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67880 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 18, 2013 5:11:31 PM VET
-- LVE-HR
ALTER TABLE AD_User ADD COLUMN NationalCode VARCHAR(60) DEFAULT NULL 
;

-- Sep 18, 2013 5:12:52 PM VET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67880,69477,0,53108,TO_TIMESTAMP('2013-09-18 17:12:50','YYYY-MM-DD HH24:MI:SS'),100,60,'ECA02','Y','Y','Y','N','N','N','N','N','National Code',TO_TIMESTAMP('2013-09-18 17:12:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 18, 2013 5:12:52 PM VET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69477 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 18, 2013 5:13:17 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=69477
;

-- Sep 18, 2013 5:13:17 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=54951
;

-- Sep 18, 2013 5:13:17 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=54952
;

-- Sep 18, 2013 5:13:17 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=54953
;

-- Sep 18, 2013 5:13:17 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=54954
;

-- Sep 18, 2013 5:13:17 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=54955
;

-- Sep 18, 2013 5:13:17 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=54956
;

-- Sep 18, 2013 5:13:17 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=54957
;

-- Sep 18, 2013 5:13:17 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=54958
;

-- Sep 18, 2013 5:13:17 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=56328
;

-- Sep 18, 2013 5:13:17 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=69424
;

-- Sep 18, 2013 5:13:17 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=69421
;

-- Sep 18, 2013 5:13:17 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=69423
;

-- Sep 18, 2013 5:13:17 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=69420
;

-- Sep 18, 2013 5:13:17 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=69422
;

-- Sep 18, 2013 5:13:17 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=69425
;

-- Sep 18, 2013 5:13:40 PM VET
-- LVE-HR
UPDATE AD_Field SET DisplayLength=20,Updated=TO_TIMESTAMP('2013-09-18 17:13:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69477
;

