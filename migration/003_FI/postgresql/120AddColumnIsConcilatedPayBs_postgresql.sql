-- Jan 23, 2015 11:33:56 AM VET
-- LVE EFT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57757,0,20,'IsConsolidatePayBS',TO_TIMESTAMP('2015-01-23 11:33:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Consolidate Payments (Bank Statement)','Consolidate Payments (Bank Statement)',TO_TIMESTAMP('2015-01-23 11:33:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 23, 2015 11:33:56 AM VET
-- LVE EFT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57757 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jan 23, 2015 11:34:20 AM VET
-- LVE EFT
UPDATE AD_Element_Trl SET Name='Consolidar Pagos (Estado de Cuenta Bancaria)',PrintName='Consolidar Pagos (Estado de Cuenta Bancaria)',Updated=TO_TIMESTAMP('2015-01-23 11:34:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57757 AND AD_Language='es_MX'
;

-- Jan 23, 2015 11:35:26 AM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75492,57757,0,20,296,'IsConsolidatePayBS',TO_TIMESTAMP('2015-01-23 11:35:24','YYYY-MM-DD HH24:MI:SS'),100,'N','D',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Consolidate Payments (Bank Statement)',0,TO_TIMESTAMP('2015-01-23 11:35:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 23, 2015 11:35:26 AM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75492 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 23, 2015 11:36:02 AM VET
-- LVE EFT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,75492,75339,0,227,TO_TIMESTAMP('2015-01-23 11:35:56','YYYY-MM-DD HH24:MI:SS'),100,1,'D','Y','Y','Y','N','N','N','N','N','Consolidate Payments (Bank Statement)',TO_TIMESTAMP('2015-01-23 11:35:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 23, 2015 11:36:02 AM VET
-- LVE EFT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75339 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 23, 2015 5:42:36 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75493,57757,0,20,455,'IsConsolidatePayBS',TO_TIMESTAMP('2015-01-23 17:42:34','YYYY-MM-DD HH24:MI:SS'),100,'N','D',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Consolidate Payments (Bank Statement)',0,TO_TIMESTAMP('2015-01-23 17:42:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jan 23, 2015 5:42:36 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75493 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jan 23, 2015 5:43:12 PM VET
-- LVE EFT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,75493,75340,0,386,TO_TIMESTAMP('2015-01-23 17:43:06','YYYY-MM-DD HH24:MI:SS'),100,1,'D','Y','Y','Y','N','N','N','N','N','Consolidate Payments (Bank Statement)',TO_TIMESTAMP('2015-01-23 17:43:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 23, 2015 5:43:12 PM VET
-- LVE EFT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75340 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jan 23, 2015 5:43:39 PM VET
-- LVE EFT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2015-01-23 17:43:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75340
;

-- Jan 23, 2015 5:45:08 PM VET
-- LVE EFT
UPDATE AD_Field SET DefaultValue='@IsConsolidatePayBS@',Updated=TO_TIMESTAMP('2015-01-23 17:45:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75340
;

-- Jan 23, 2015 5:48:05 PM VET
-- LVE EFT
UPDATE AD_Field SET DefaultValue='@SQL=SELECT ''@IsConsolidatePayBS@''',Updated=TO_TIMESTAMP('2015-01-23 17:48:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75340
;

-- Jan 23, 2015 5:49:09 PM VET
-- LVE EFT
UPDATE AD_Field SET DefaultValue='@SQL=SELECT @IsConsolidatePayBS@',Updated=TO_TIMESTAMP('2015-01-23 17:49:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75340
;

-- Jan 23, 2015 5:50:00 PM VET
-- LVE EFT
UPDATE AD_Field SET DefaultValue='@IsConsolidatePayBS@',Updated=TO_TIMESTAMP('2015-01-23 17:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75340
;

