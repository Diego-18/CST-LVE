-- Jan 18, 2015 7:35:49 PM EST
-- HR Loan
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75472,351,0,20,53922,'IsApproved',TO_DATE('2015-01-18 19:35:36','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval','ECA02',1,'The Approved checkbox indicates if this document requires approval before it can be processed.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Approved',0,TO_DATE('2015-01-18 19:35:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 18, 2015 7:35:49 PM EST
-- HR Loan
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75472 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 18, 2015 7:36:59 PM EST
-- HR Loan
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,75472,75336,0,54038,TO_DATE('2015-01-18 19:36:58','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document requires approval',0,'ECA02','The Approved checkbox indicates if this document requires approval before it can be processed.','N','Y','Y','Y','N','N','N','Y','Y','Approved',0,170,0,TO_DATE('2015-01-18 19:36:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 18, 2015 7:36:59 PM EST
-- HR Loan
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75336 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 18, 2015 8:16:08 PM EST
-- HR Loan
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2015-01-18 20:16:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=75429
;

-- Jan 18, 2015 8:16:48 PM EST
-- HR Loan
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2015-01-18 20:16:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75304
;

