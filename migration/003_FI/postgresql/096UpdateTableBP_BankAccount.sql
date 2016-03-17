-- Sep 24, 2014 11:35:11 AM VET
-- LVE ADempiere
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74476,1103,0,20,298,'IsDefault',TO_TIMESTAMP('2014-09-24 11:35:02','YYYY-MM-DD HH24:MI:SS'),100,'N','Default value','ECA02',1,'The Default Checkbox indicates if this record will be used as a default value.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Default',0,TO_TIMESTAMP('2014-09-24 11:35:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 24, 2014 11:35:11 AM VET
-- LVE ADempiere
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74476 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 24, 2014 11:36:30 AM VET
-- LVE ADempiere
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74477,1143,0,17,195,298,52033,'PaymentRule',TO_TIMESTAMP('2014-09-24 11:36:27','YYYY-MM-DD HH24:MI:SS'),100,'How you pay the invoice','ECA02',1,'The Payment Rule indicates the method of invoice payment.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Payment Rule',0,TO_TIMESTAMP('2014-09-24 11:36:27','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 24, 2014 11:36:30 AM VET
-- LVE ADempiere
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74477 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 24, 2014 11:36:51 AM VET
-- LVE ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,74476,74586,0,226,TO_TIMESTAMP('2014-09-24 11:36:49','YYYY-MM-DD HH24:MI:SS'),100,'Default value',1,'ECA02','The Default Checkbox indicates if this record will be used as a default value.','Y','Y','Y','N','N','N','N','N','Default',TO_TIMESTAMP('2014-09-24 11:36:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 24, 2014 11:36:51 AM VET
-- LVE ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74586 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 24, 2014 11:36:53 AM VET
-- LVE ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,74477,74587,0,226,TO_TIMESTAMP('2014-09-24 11:36:51','YYYY-MM-DD HH24:MI:SS'),100,'How you pay the invoice',1,'ECA02','The Payment Rule indicates the method of invoice payment.','Y','Y','Y','N','N','N','N','N','Payment Rule',TO_TIMESTAMP('2014-09-24 11:36:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 24, 2014 11:36:53 AM VET
-- LVE ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74587 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74587
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74586
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4109
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4108
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4110
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4106
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4107
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4100
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4102
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4096
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4103
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4101
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6298
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4098
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4099
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4097
;

-- Sep 24, 2014 11:38:16 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_TIMESTAMP('2014-09-24 11:38:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4112
;

-- Sep 24, 2014 11:38:17 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290,Updated=TO_TIMESTAMP('2014-09-24 11:38:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4113
;

-- Sep 24, 2014 11:39:04 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-09-24 11:39:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74586
;

-- Sep 24, 2014 11:40:50 AM VET
-- LVE ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,54258,74588,0,436,TO_TIMESTAMP('2014-09-24 11:40:38','YYYY-MM-DD HH24:MI:SS'),100,1,'D','Y','Y','Y','N','N','N','N','N','Generated Draft',TO_TIMESTAMP('2014-09-24 11:40:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 24, 2014 11:40:50 AM VET
-- LVE ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74588 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 24, 2014 11:40:52 AM VET
-- LVE ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,15920,74589,0,436,TO_TIMESTAMP('2014-09-24 11:40:50','YYYY-MM-DD HH24:MI:SS'),100,'Bank Account of the Business Partner',10,'D','The Partner Bank Account identifies the bank account to be used for this Business Partner','Y','Y','Y','N','N','N','N','N','Partner Bank Account',TO_TIMESTAMP('2014-09-24 11:40:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 24, 2014 11:40:52 AM VET
-- LVE ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74589 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 24, 2014 11:41:01 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-09-24 11:41:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74588
;

-- Sep 24, 2014 11:41:01 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-09-24 11:41:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74589
;

-- Sep 24, 2014 11:41:09 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-09-24 11:41:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74589
;

-- Sep 24, 2014 11:41:09 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-09-24 11:41:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5837
;

-- Sep 24, 2014 11:41:09 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-09-24 11:41:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5833
;

-- Sep 24, 2014 11:41:10 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-09-24 11:41:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5835
;

-- Sep 24, 2014 11:41:10 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-09-24 11:41:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10642
;

-- Sep 24, 2014 11:41:10 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-09-24 11:41:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5839
;

-- Sep 24, 2014 11:41:10 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-09-24 11:41:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10897
;

-- Sep 24, 2014 11:41:10 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-09-24 11:41:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5838
;

-- Sep 24, 2014 11:41:10 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-09-24 11:41:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5836
;

-- Sep 24, 2014 11:41:10 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-09-24 11:41:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10617
;

-- Sep 24, 2014 11:41:19 AM VET
-- LVE ADempiere
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-09-24 11:41:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74589
;

