-- Jun 16, 2014 8:41:06 AM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57222,0,18,53697,'LVE_HR_R_CC_ID',TO_TIMESTAMP('2014-06-16 08:40:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Category Concept (Reference)','Category Concept (Reference)',TO_TIMESTAMP('2014-06-16 08:40:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 16, 2014 8:41:06 AM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57222 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 16, 2014 8:41:22 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Categoría de Concepto (Referencia)',PrintName='Categoría de Concepto (Referencia)',Updated=TO_TIMESTAMP('2014-06-16 08:41:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57222 AND AD_Language='es_MX'
;

-- Jun 16, 2014 8:41:26 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Categoría de Concepto (Referencia)',PrintName='Categoría de Concepto (Referencia)',Updated=TO_TIMESTAMP('2014-06-16 08:41:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57222 AND AD_Language='es_VE'
;

-- Jun 16, 2014 8:41:43 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57222,0,53633,54820,18,53697,'LVE_HR_R_CC_ID',TO_TIMESTAMP('2014-06-16 08:41:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Category Concept (Reference)',100,TO_TIMESTAMP('2014-06-16 08:41:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 16, 2014 8:41:43 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54820 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 16, 2014 8:41:59 AM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=75,Updated=TO_TIMESTAMP('2014-06-16 08:41:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54820
;

-- Jun 16, 2014 8:43:08 AM VET
-- LVE HR
UPDATE AD_Element SET AD_Reference_ID=17, AD_Reference_Value_ID=53561, FieldLength=2,Updated=TO_TIMESTAMP('2014-06-16 08:43:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56360
;

-- Jun 16, 2014 8:43:13 AM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73106,56360,0,17,53561,291,'Relationship',TO_TIMESTAMP('2014-06-16 08:43:10','YYYY-MM-DD HH24:MI:SS'),100,'U',2,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Relationship',0,TO_TIMESTAMP('2014-06-16 08:43:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 16, 2014 8:43:13 AM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73106 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 16, 2014 8:43:27 AM VET
-- LVE HR
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_TIMESTAMP('2014-06-16 08:43:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73106
;

-- Jun 16, 2014 8:44:07 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73106,73689,0,53104,TO_TIMESTAMP('2014-06-16 08:44:04','YYYY-MM-DD HH24:MI:SS'),100,2,'ECA02','Y','Y','Y','N','N','N','N','N','Relationship',TO_TIMESTAMP('2014-06-16 08:44:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 16, 2014 8:44:07 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73689 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 16, 2014 8:46:11 AM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-06-16 08:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73689
;

-- Jun 16, 2014 8:46:12 AM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-06-16 08:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69410
;

-- Jun 16, 2014 8:46:12 AM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-06-16 08:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69413
;

-- Jun 16, 2014 8:46:12 AM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-06-16 08:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69414
;

-- Jun 16, 2014 8:46:12 AM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-06-16 08:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69416
;

-- Jun 16, 2014 8:46:20 AM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-16 08:46:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73689
;

-- Jun 16, 2014 8:47:27 AM VET
-- LVE HR
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=73689
;

-- Jun 16, 2014 8:47:27 AM VET
-- LVE HR
DELETE FROM AD_Field WHERE AD_Field_ID=73689
;

-- Jun 16, 2014 8:47:45 AM VET
-- LVE HR
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73106
;

-- Jun 16, 2014 8:47:45 AM VET
-- LVE HR
DELETE FROM AD_Column WHERE AD_Column_ID=73106
;

-- 16/06/2014 09:59:11 AM CEST
-- LVE-HR
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-16 09:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54820
;

