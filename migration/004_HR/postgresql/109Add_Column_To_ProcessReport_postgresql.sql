-- 3/07/2014 09:24:39 PM CEST
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73247,1803,0,20,53794,'IsOrderBy',TO_TIMESTAMP('2014-07-03 21:24:36','YYYY-MM-DD HH24:MI:SS'),100,'Y','Include in sort order','ECA02',1,'The records are ordered by the value of this column. If a column is used for grouping, it needs to be included in the sort order as well.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Order by',0,TO_TIMESTAMP('2014-07-03 21:24:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 3/07/2014 09:24:39 PM CEST
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73247 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 3/07/2014 09:26:18 PM CEST
-- LVE-HR
UPDATE AD_Field SET DisplayLength=100,Updated=TO_TIMESTAMP('2014-07-03 21:26:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73663
;

-- 3/07/2014 09:26:59 PM CEST
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,73247,73736,0,53949,TO_TIMESTAMP('2014-07-03 21:26:58','YYYY-MM-DD HH24:MI:SS'),100,'Include in sort order',0,'ECA02','The records are ordered by the value of this column. If a column is used for grouping, it needs to be included in the sort order as well.','N','Y','Y','Y','N','N','N','N','N','Order by',0,90,0,TO_TIMESTAMP('2014-07-03 21:26:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 3/07/2014 09:26:59 PM CEST
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73736 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 3/07/2014 09:27:04 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-07-03 21:27:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73736
;

-- 3/07/2014 09:27:10 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-07-03 21:27:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73736
;

-- 3/07/2014 09:27:10 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-07-03 21:27:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73375
;

-- 3/07/2014 09:27:18 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-07-03 21:27:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73375
;
