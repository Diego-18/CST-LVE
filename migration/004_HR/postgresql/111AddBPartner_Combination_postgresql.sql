-- 7/07/2014 11:04:31 PM CEST
-- LVE-HR
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_TIMESTAMP('2014-07-07 23:04:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73276
;

-- 7/07/2014 11:04:46 PM CEST
-- LVE-HR
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_TIMESTAMP('2014-07-07 23:04:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73287
;

-- 7/07/2014 11:04:58 PM CEST
-- LVE-HR
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_TIMESTAMP('2014-07-07 23:04:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73301
;

-- 7/07/2014 11:10:13 PM CEST
-- LVE-HR
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-07-07 23:10:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73266
;

-- 7/07/2014 11:10:23 PM CEST
-- LVE-HR
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-07-07 23:10:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73267
;

-- 7/07/2014 11:10:35 PM CEST
-- LVE-HR
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-07-07 23:10:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73277
;

-- 7/07/2014 11:10:39 PM CEST
-- LVE-HR
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-07-07 23:10:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73278
;

-- 7/07/2014 11:11:05 PM CEST
-- LVE-HR
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-07-07 23:11:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73289
;

-- 7/07/2014 11:11:12 PM CEST
-- LVE-HR
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-07-07 23:11:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73290
;

-- 7/07/2014 11:11:32 PM CEST
-- LVE-HR
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-07-07 23:11:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73300
;

-- 7/07/2014 11:11:58 PM CEST
-- LVE-HR
UPDATE AD_Column SET AD_Element_ID=187, ColumnName='C_BPartner_ID', Description='Identifies a Business Partner', Help='A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', Name='Business Partner ',Updated=TO_TIMESTAMP('2014-07-07 23:11:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73299
;

-- 7/07/2014 11:11:58 PM CEST
-- LVE-HR
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=73299
;

-- 7/07/2014 11:11:58 PM CEST
-- LVE-HR
UPDATE AD_Field SET Name='Business Partner ', Description='Identifies a Business Partner', Help='A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson' WHERE AD_Column_ID=73299 AND IsCentrallyMaintained='Y'
;

-- 7/07/2014 11:18:00 PM CEST
-- LVE-HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57248,0,20,'StudyVerified',TO_TIMESTAMP('2014-07-07 23:17:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Study Verified','Study Verified',TO_TIMESTAMP('2014-07-07 23:17:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/07/2014 11:18:00 PM CEST
-- LVE-HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57248 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 7/07/2014 11:18:10 PM CEST
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Estudio Verificado',PrintName='Estudio Verificado',Updated=TO_TIMESTAMP('2014-07-07 23:18:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57248 AND AD_Language='es_MX'
;

-- 7/07/2014 11:18:45 PM CEST
-- LVE-HR
UPDATE AD_Element SET ColumnName='ActiveStudent', Name='Active Student', PrintName='Active Student',Updated=TO_TIMESTAMP('2014-07-07 23:18:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57248
;

-- 7/07/2014 11:18:45 PM CEST
-- LVE-HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57248
;

-- 7/07/2014 11:18:45 PM CEST
-- LVE-HR
UPDATE AD_Column SET ColumnName='ActiveStudent', Name='Active Student', Description=NULL, Help=NULL WHERE AD_Element_ID=57248
;

-- 7/07/2014 11:18:45 PM CEST
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='ActiveStudent', Name='Active Student', Description=NULL, Help=NULL, AD_Element_ID=57248 WHERE UPPER(ColumnName)='ACTIVESTUDENT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 7/07/2014 11:18:45 PM CEST
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='ActiveStudent', Name='Active Student', Description=NULL, Help=NULL WHERE AD_Element_ID=57248 AND IsCentrallyMaintained='Y'
;

-- 7/07/2014 11:18:45 PM CEST
-- LVE-HR
UPDATE AD_Field SET Name='Active Student', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57248) AND IsCentrallyMaintained='Y'
;

-- 7/07/2014 11:18:45 PM CEST
-- LVE-HR
UPDATE AD_PrintFormatItem SET PrintName='Active Student', Name='Active Student' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57248)
;

-- 7/07/2014 11:18:56 PM CEST
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Estudiante Activo',PrintName='Estudiante Activo',Updated=TO_TIMESTAMP('2014-07-07 23:18:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57248 AND AD_Language='es_MX'
;

-- 7/07/2014 11:19:11 PM CEST
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73302,57248,0,20,114,'ActiveStudent',TO_TIMESTAMP('2014-07-07 23:19:10','YYYY-MM-DD HH24:MI:SS'),100,'N','U',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Active Student',0,TO_TIMESTAMP('2014-07-07 23:19:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 7/07/2014 11:19:11 PM CEST
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73302 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 7/07/2014 11:20:06 PM CEST
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,73302,73825,0,53108,TO_TIMESTAMP('2014-07-07 23:20:05','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','Y','Y','N','N','N','N','N','Active Student',0,200,0,TO_TIMESTAMP('2014-07-07 23:20:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/07/2014 11:20:06 PM CEST
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73825 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 7/07/2014 11:23:01 PM CEST
-- LVE-HR
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_TIMESTAMP('2014-07-07 23:23:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73302
;
-- 7/07/2014 11:35:52 PM CEST
-- LVE-HR
UPDATE AD_Element SET ColumnName='IsActiveStudent',Updated=TO_TIMESTAMP('2014-07-07 23:35:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57248
;

-- 7/07/2014 11:35:53 PM CEST
-- LVE-HR
UPDATE AD_Column SET ColumnName='IsActiveStudent', Name='Active Student', Description=NULL, Help=NULL WHERE AD_Element_ID=57248
;

-- 7/07/2014 11:35:53 PM CEST
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='IsActiveStudent', Name='Active Student', Description=NULL, Help=NULL, AD_Element_ID=57248 WHERE UPPER(ColumnName)='ISACTIVESTUDENT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 7/07/2014 11:35:53 PM CEST
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='IsActiveStudent', Name='Active Student', Description=NULL, Help=NULL WHERE AD_Element_ID=57248 AND IsCentrallyMaintained='Y'
;
