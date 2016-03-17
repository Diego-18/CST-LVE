-- Sep 19, 2013 11:12:36 AM VET
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67883,56689,0,17,53559,291,'Gender',TO_DATE('2013-09-19 11:12:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Gender',0,TO_DATE('2013-09-19 11:12:35','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 19, 2013 11:12:36 AM VET
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67883 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 19, 2013 11:12:38 AM VET
-- LVE-HR
ALTER TABLE C_BPartner ADD Gender CHAR(1) DEFAULT NULL 
;

-- Sep 19, 2013 11:18:34 AM VET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67883,69480,0,53104,TO_DATE('2013-09-19 11:18:33','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Gender',TO_DATE('2013-09-19 11:18:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 19, 2013 11:18:34 AM VET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69480 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 19, 2013 11:18:36 AM VET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,58113,69481,0,53104,TO_DATE('2013-09-19 11:18:34','YYYY-MM-DD HH24:MI:SS'),100,10,'EE02','Y','Y','Y','N','N','N','N','N','Logo',TO_DATE('2013-09-19 11:18:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 19, 2013 11:18:36 AM VET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69481 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 19, 2013 11:18:37 AM VET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,58381,69482,0,53104,TO_DATE('2013-09-19 11:18:36','YYYY-MM-DD HH24:MI:SS'),100,'Business partner is exempt from tax on purchases',1,'EE02','If a business partner is exempt from tax on purchases, the exempt tax rate is used. For this, you need to set up a tax rate with a 0% rate and indicate that this is your tax exempt rate.  This is required for tax reporting, so that you can track tax exempt transactions.','Y','Y','Y','N','N','N','N','N','PO Tax exempt',TO_DATE('2013-09-19 11:18:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 19, 2013 11:18:37 AM VET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69482 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 19, 2013 11:18:38 AM VET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,54463,69483,0,53104,TO_DATE('2013-09-19 11:18:37','YYYY-MM-DD HH24:MI:SS'),100,10,'EE04','Y','Y','Y','N','N','N','N','N','Tax Group',TO_DATE('2013-09-19 11:18:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 19, 2013 11:18:38 AM VET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69483 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 19, 2013 11:18:57 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69481
;

-- Sep 19, 2013 11:18:57 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69482
;

-- Sep 19, 2013 11:18:57 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=69483
;

-- Sep 19, 2013 11:18:57 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=69480
;

-- Sep 19, 2013 11:18:57 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=69410
;

-- Sep 19, 2013 11:18:57 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=69413
;

-- Sep 19, 2013 11:18:57 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=69414
;

-- Sep 19, 2013 11:18:57 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=69416
;

-- Sep 19, 2013 11:20:17 AM VET
-- LVE-HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56372,0,'BP_Gender',TO_DATE('2013-09-19 11:20:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Business Partner Gender','Business Partner Gender',TO_DATE('2013-09-19 11:20:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 19, 2013 11:20:17 AM VET
-- LVE-HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56372 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 19, 2013 11:21:00 AM VET
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67884,56372,0,17,53559,533,'BP_Gender',TO_DATE('2013-09-19 11:20:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Business Partner Gender',0,TO_DATE('2013-09-19 11:20:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 19, 2013 11:21:00 AM VET
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67884 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 19, 2013 11:21:14 AM VET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67884,69484,0,441,TO_DATE('2013-09-19 11:21:12','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Business Partner Gender',TO_DATE('2013-09-19 11:21:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 19, 2013 11:21:14 AM VET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69484 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 19, 2013 11:21:41 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=69467
;

-- Sep 19, 2013 11:21:42 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=69465
;

-- Sep 19, 2013 11:21:42 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=69466
;

-- Sep 19, 2013 11:21:42 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=69468
;

-- Sep 19, 2013 11:21:42 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=69469
;

-- Sep 19, 2013 11:21:42 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=69470
;

-- Sep 19, 2013 11:21:42 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=69484
;

-- Sep 19, 2013 11:21:42 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=780,IsDisplayed='Y' WHERE AD_Field_ID=58038
;

-- Sep 19, 2013 11:21:42 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=790,IsDisplayed='Y' WHERE AD_Field_ID=58039
;

-- Sep 19, 2013 11:21:42 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=800,IsDisplayed='Y' WHERE AD_Field_ID=58040
;

-- Sep 19, 2013 11:21:42 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=810,IsDisplayed='Y' WHERE AD_Field_ID=5941
;

-- Sep 19, 2013 11:21:42 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=820,IsDisplayed='Y' WHERE AD_Field_ID=5924
;

-- Sep 19, 2013 11:22:56 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=69484
;

-- Sep 19, 2013 11:22:56 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=69466
;

-- Sep 19, 2013 11:22:56 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=69468
;

-- Sep 19, 2013 11:22:56 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=69469
;

-- Sep 19, 2013 11:22:56 AM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=69470
;

-- Sep 19, 2013 11:23:22 AM VET
-- LVE-HR
ALTER TABLE I_BPartner ADD BP_Gender CHAR(1) DEFAULT NULL 
;

-- Sep 19, 2013 11:25:34 AM VET
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Genero Socio de Negocio',PrintName='Genero Socio de Negocio',Updated=TO_DATE('2013-09-19 11:25:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56372 AND AD_Language='es_MX'
;

