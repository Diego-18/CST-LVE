-- Aug 29, 2014 5:58:26 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74362,1581,0,15,53877,'DateFrom',TO_DATE('2014-08-29 17:58:24','YYYY-MM-DD HH24:MI:SS'),100,'Starting date for a range','ECA02',7,'The Date From indicates the starting date of a range.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Date From',0,TO_DATE('2014-08-29 17:58:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 29, 2014 5:58:26 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74362 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 29, 2014 5:58:53 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74363,1582,0,15,53877,'DateTo',TO_DATE('2014-08-29 17:58:51','YYYY-MM-DD HH24:MI:SS'),100,'End date of a date range','ECA02',7,'The Date To indicates the end date of a range (inclusive)','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Date To',0,TO_DATE('2014-08-29 17:58:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 29, 2014 5:58:53 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74363 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 29, 2014 5:59:05 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,74362,74517,0,53998,TO_DATE('2014-08-29 17:59:04','YYYY-MM-DD HH24:MI:SS'),100,'Starting date for a range',7,'ECA02','The Date From indicates the starting date of a range.','Y','Y','Y','N','N','N','N','N','Date From',TO_DATE('2014-08-29 17:59:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 29, 2014 5:59:05 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74517 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 29, 2014 5:59:06 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,74363,74518,0,53998,TO_DATE('2014-08-29 17:59:05','YYYY-MM-DD HH24:MI:SS'),100,'End date of a date range',7,'ECA02','The Date To indicates the end date of a range (inclusive)','Y','Y','Y','N','N','N','N','N','Date To',TO_DATE('2014-08-29 17:59:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 29, 2014 5:59:06 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74518 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 29, 2014 5:59:19 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-08-29 17:59:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74518
;

-- Aug 29, 2014 5:59:31 PM VET
-- LVE HR
ALTER TABLE LVE_HR_DM_Combination ADD DateFrom DATE DEFAULT NULL 
;

-- Aug 29, 2014 5:59:38 PM VET
-- LVE HR
ALTER TABLE LVE_HR_DM_Combination ADD DateTo DATE DEFAULT NULL 
;

