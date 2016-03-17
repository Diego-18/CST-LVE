-- Aug 14, 2014 4:04:35 PM UTC
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74239,202,0,19,291,'C_Location_ID',TO_DATE('2014-08-14 16:04:34','YYYY-MM-DD HH24:MI:SS'),100,'Location or Address','ECA02',22,'The Location / Address field defines the location of an entity.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Address',0,TO_DATE('2014-08-14 16:04:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 14, 2014 4:04:35 PM UTC
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74239 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 14, 2014 4:04:56 PM UTC
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,74239,74310,0,53104,TO_DATE('2014-08-14 16:04:55','YYYY-MM-DD HH24:MI:SS'),100,'Location or Address',22,'ECA02','The Location / Address field defines the location of an entity.','Y','Y','Y','N','N','N','N','N','Address',TO_DATE('2014-08-14 16:04:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 14, 2014 4:04:56 PM UTC
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74310 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 14, 2014 4:04:59 PM UTC
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66811,74312,0,53104,TO_DATE('2014-08-14 16:04:57','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Nationality',TO_DATE('2014-08-14 16:04:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 14, 2014 4:04:59 PM UTC
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74312 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 14, 2014 4:05:01 PM UTC
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73815,74314,0,53104,TO_DATE('2014-08-14 16:05:00','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Unique for Provision',TO_DATE('2014-08-14 16:05:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 14, 2014 4:05:01 PM UTC
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74314 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 14, 2014 4:05:36 PM UTC
-- LVE HR
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=74311
;

-- Aug 14, 2014 4:05:36 PM UTC
-- LVE HR
DELETE FROM AD_Field WHERE AD_Field_ID=74311
;

-- Aug 14, 2014 4:05:44 PM UTC
-- LVE HR
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=74314
;

-- Aug 14, 2014 4:05:44 PM UTC
-- LVE HR
DELETE FROM AD_Field WHERE AD_Field_ID=74314
;

-- Aug 14, 2014 4:08:15 PM UTC
-- LVE HR
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=74310
;

-- Aug 14, 2014 4:08:15 PM UTC
-- LVE HR
DELETE FROM AD_Field WHERE AD_Field_ID=74310
;

-- Aug 14, 2014 4:09:40 PM UTC
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57417,0,21,'BirthPlace_ID',TO_DATE('2014-08-14 16:09:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Birth Place','Birth Place',TO_DATE('2014-08-14 16:09:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 14, 2014 4:09:40 PM UTC
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57417 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 14, 2014 4:09:51 PM UTC
-- LVE HR
UPDATE AD_Element_Trl SET Name='Lugar de Nacimiento',PrintName='Lugar de Nacimiento',Updated=TO_DATE('2014-08-14 16:09:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57417 AND AD_Language='es_MX'
;

-- Aug 14, 2014 4:10:21 PM UTC
-- LVE HR
UPDATE AD_Column SET AD_Element_ID=57417, AD_Reference_ID=21, ColumnName='BirthPlace_ID', Description=NULL, Help=NULL, Name='Birth Place',Updated=TO_DATE('2014-08-14 16:10:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74239
;

-- Aug 14, 2014 4:10:21 PM UTC
-- LVE HR
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=74239
;

-- Aug 14, 2014 4:10:21 PM UTC
-- LVE HR
UPDATE AD_Field SET Name='Birth Place', Description=NULL, Help=NULL WHERE AD_Column_ID=74239 AND IsCentrallyMaintained='Y'
;

-- Aug 14, 2014 4:10:54 PM UTC
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,74239,74316,0,53104,TO_DATE('2014-08-14 16:10:50','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','Y','Y','N','N','N','N','N','Birth Place',0,270,0,TO_DATE('2014-08-14 16:10:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 14, 2014 4:10:54 PM UTC
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74316 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 14, 2014 5:18:15 PM UTC
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_DATE('2014-08-14 17:18:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74312
;

-- Aug 14, 2014 5:18:15 PM UTC
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_DATE('2014-08-14 17:18:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74316
;

-- Aug 14, 2014 5:18:23 PM UTC
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-08-14 17:18:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74316
;

