-- 14/01/2015 09:35:27 AM CET
-- LVE-HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57750,0,18,53556,'Interest_TI_Concept_ID',TO_TIMESTAMP('2015-01-14 09:35:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Incidence (Total Interest)','Incidence (Total Interest)',TO_TIMESTAMP('2015-01-14 09:35:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/01/2015 09:35:27 AM CET
-- LVE-HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57750 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 14/01/2015 09:36:04 AM CET
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Incidencia (Total Intereses)',PrintName='Incidencia (Total Intereses)',Updated=TO_TIMESTAMP('2015-01-14 09:36:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57750 AND AD_Language='es_MX'
;

-- 14/01/2015 09:37:00 AM CET
-- LVE-HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57751,0,18,53556,'Interest_TT_Concept_ID',TO_TIMESTAMP('2015-01-14 09:36:57','YYYY-MM-DD HH24:MI:SS'),100,'U',0,'Y','Incidence (Total Tax)','Incidence (Total Tax)',TO_TIMESTAMP('2015-01-14 09:36:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/01/2015 09:37:00 AM CET
-- LVE-HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57751 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 14/01/2015 09:37:15 AM CET
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Incidencia (Total Impuesto)',PrintName='Incidencia (Total Impuesto)',Updated=TO_TIMESTAMP('2015-01-14 09:37:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57751 AND AD_Language='es_MX'
;

-- 14/01/2015 09:38:49 AM CET
-- LVE-HR
UPDATE AD_Element SET ColumnName='Interest_NDT_Concept_ID', EntityType='ECA02', Name='Concept (Not Due of Interest Tax)', PrintName='Concept (Not Due of Interest Tax)',Updated=TO_TIMESTAMP('2015-01-14 09:38:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57751
;

-- 14/01/2015 09:38:49 AM CET
-- LVE-HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57751
;

-- 14/01/2015 09:38:49 AM CET
-- LVE-HR
UPDATE AD_Column SET ColumnName='Interest_NDT_Concept_ID', Name='Concept (Not Due of Interest Tax)', Description=NULL, Help=NULL WHERE AD_Element_ID=57751
;

-- 14/01/2015 09:38:49 AM CET
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='Interest_NDT_Concept_ID', Name='Concept (Not Due of Interest Tax)', Description=NULL, Help=NULL, AD_Element_ID=57751 WHERE UPPER(ColumnName)='INTEREST_NDT_CONCEPT_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 14/01/2015 09:38:49 AM CET
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='Interest_NDT_Concept_ID', Name='Concept (Not Due of Interest Tax)', Description=NULL, Help=NULL WHERE AD_Element_ID=57751 AND IsCentrallyMaintained='Y'
;

-- 14/01/2015 09:38:49 AM CET
-- LVE-HR
UPDATE AD_Field SET Name='Concept (Not Due of Interest Tax)', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57751) AND IsCentrallyMaintained='Y'
;

-- 14/01/2015 09:38:49 AM CET
-- LVE-HR
UPDATE AD_PrintFormatItem SET PrintName='Concept (Not Due of Interest Tax)', Name='Concept (Not Due of Interest Tax)' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57751)
;

-- 14/01/2015 09:39:21 AM CET
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Concepto (Cálculo de Impuesto No Vencido)',PrintName='Concepto (Cálculo de Impuesto No Vencido)',Updated=TO_TIMESTAMP('2015-01-14 09:39:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57751 AND AD_Language='es_MX'
;

-- 14/01/2015 09:40:25 AM CET
-- LVE-HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57752,0,18,53556,'Interest_PB_Concept_ID',TO_TIMESTAMP('2015-01-14 09:40:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Concept (Previous Balance)','Concept (Previous Balance)',TO_TIMESTAMP('2015-01-14 09:40:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/01/2015 09:40:25 AM CET
-- LVE-HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57752 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 14/01/2015 09:41:35 AM CET
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Concepto (Saldo Anterior)',PrintName='Concepto (Saldo Anterior)',Updated=TO_TIMESTAMP('2015-01-14 09:41:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57752 AND AD_Language='es_MX'
;

-- 14/01/2015 09:44:11 AM CET
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75414,57751,0,18,53556,53813,'Interest_NDT_Concept_ID',TO_TIMESTAMP('2015-01-14 09:44:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Concept (Not Due of Interest Tax)',0,TO_TIMESTAMP('2015-01-14 09:44:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/01/2015 09:44:11 AM CET
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75414 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/01/2015 09:44:38 AM CET
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75415,57750,0,18,53556,53813,'Interest_TI_Concept_ID',TO_TIMESTAMP('2015-01-14 09:44:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Incidence (Total Interest)',0,TO_TIMESTAMP('2015-01-14 09:44:35','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/01/2015 09:44:38 AM CET
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75415 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/01/2015 09:45:09 AM CET
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75416,57752,0,18,53556,53813,'Interest_PB_Concept_ID',TO_TIMESTAMP('2015-01-14 09:45:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Concept (Previous Balance)',0,TO_TIMESTAMP('2015-01-14 09:45:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/01/2015 09:45:09 AM CET
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75416 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/01/2015 09:46:15 AM CET
-- LVE-HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57753,0,18,53556,'Interest_TT_Concept_ID',TO_TIMESTAMP('2015-01-14 09:46:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Incidence (Total Tax)','Incidence (Total Tax)',TO_TIMESTAMP('2015-01-14 09:46:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/01/2015 09:46:15 AM CET
-- LVE-HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57753 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 14/01/2015 09:46:30 AM CET
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Incidencia (Total Impuesto)',PrintName='Incidencia (Total Impuesto)',Updated=TO_TIMESTAMP('2015-01-14 09:46:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57753 AND AD_Language='es_MX'
;

-- 14/01/2015 09:46:49 AM CET
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75417,57753,0,18,53556,53813,'Interest_TT_Concept_ID',TO_TIMESTAMP('2015-01-14 09:46:47','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Incidence (Total Tax)',0,TO_TIMESTAMP('2015-01-14 09:46:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/01/2015 09:46:49 AM CET
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75417 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/01/2015 09:47:53 AM CET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,75414,75292,0,53966,TO_TIMESTAMP('2015-01-14 09:47:50','YYYY-MM-DD HH24:MI:SS'),100,10,'@ManagesInterest@=''Y','ECA02','N','Y','Y','Y','N','N','N','Y','Y','Concept (Not Due of Interest Tax)',260,TO_TIMESTAMP('2015-01-14 09:47:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/01/2015 09:47:53 AM CET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75292 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/01/2015 09:48:15 AM CET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,75415,75293,0,53966,TO_TIMESTAMP('2015-01-14 09:48:12','YYYY-MM-DD HH24:MI:SS'),100,10,'@ManagesInterest@=''Y','ECA02','N','Y','Y','Y','N','N','N','Y','N','Incidence (Total Interest)',260,TO_TIMESTAMP('2015-01-14 09:48:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/01/2015 09:48:15 AM CET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75293 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/01/2015 09:48:28 AM CET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,75417,75294,0,53966,TO_TIMESTAMP('2015-01-14 09:48:24','YYYY-MM-DD HH24:MI:SS'),100,10,'@ManagesInterest@=''Y','ECA02','N','Y','Y','Y','N','N','N','Y','Y','Incidence (Total Tax)',260,TO_TIMESTAMP('2015-01-14 09:48:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/01/2015 09:48:28 AM CET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75294 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/01/2015 09:48:45 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_TIMESTAMP('2015-01-14 09:48:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75294
;

-- 14/01/2015 09:48:45 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_TIMESTAMP('2015-01-14 09:48:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74667
;

-- 14/01/2015 09:48:45 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_TIMESTAMP('2015-01-14 09:48:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75292
;

