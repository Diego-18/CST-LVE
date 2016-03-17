-- Dec 3, 2013 2:32:14 PM VET
-- LVE File Bank Transfer
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,70582,1063,0,18,190,407,'SalesRep_ID',TO_TIMESTAMP('2013-12-03 14:32:12','YYYY-MM-DD HH24:MI:SS'),100,'Sales Representative or Company Agent','ECA02',22,'The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Sales Representative',0,TO_TIMESTAMP('2013-12-03 14:32:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 3, 2013 2:32:14 PM VET
-- LVE File Bank Transfer
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=70582 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 3, 2013 2:32:34 PM VET
-- LVE File Bank Transfer
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,70583,187,0,30,407,'C_BPartner_ID',TO_TIMESTAMP('2013-12-03 14:32:33','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Business Partner ',0,TO_TIMESTAMP('2013-12-03 14:32:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 3, 2013 2:32:34 PM VET
-- LVE File Bank Transfer
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=70583 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 3, 2013 2:32:36 PM VET
-- LVE File Bank Transfer
ALTER TABLE C_Cash ADD COLUMN C_BPartner_ID NUMERIC(10) DEFAULT NULL 
;

-- Dec 3, 2013 2:32:45 PM VET
-- LVE File Bank Transfer
ALTER TABLE C_Cash ADD COLUMN SalesRep_ID NUMERIC(10) DEFAULT NULL 
;

-- Dec 3, 2013 2:33:11 PM VET
-- LVE File Bank Transfer
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,70583,71143,0,338,TO_TIMESTAMP('2013-12-03 14:33:05','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',22,'ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',TO_TIMESTAMP('2013-12-03 14:33:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 3, 2013 2:33:11 PM VET
-- LVE File Bank Transfer
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71143 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 3, 2013 2:33:12 PM VET
-- LVE File Bank Transfer
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,70582,71144,0,338,TO_TIMESTAMP('2013-12-03 14:33:11','YYYY-MM-DD HH24:MI:SS'),100,'Sales Representative or Company Agent',22,'ECA02','The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.','Y','Y','Y','N','N','N','N','N','Sales Representative',TO_TIMESTAMP('2013-12-03 14:33:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 3, 2013 2:33:12 PM VET
-- LVE File Bank Transfer
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71144 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 3, 2013 2:36:47 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2013-12-03 14:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71144
;

-- Dec 3, 2013 2:36:47 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2013-12-03 14:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71143
;

-- Dec 3, 2013 2:36:47 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2013-12-03 14:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68263
;

-- Dec 3, 2013 2:36:47 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2013-12-03 14:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4185
;

-- Dec 3, 2013 2:36:47 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2013-12-03 14:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4182
;

-- Dec 3, 2013 2:36:47 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2013-12-03 14:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4189
;

-- Dec 3, 2013 2:36:47 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2013-12-03 14:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4178
;

-- Dec 3, 2013 2:36:47 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2013-12-03 14:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7784
;

-- Dec 3, 2013 2:36:47 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2013-12-03 14:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7785
;

-- Dec 3, 2013 2:36:47 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2013-12-03 14:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7783
;

-- Dec 3, 2013 2:36:48 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2013-12-03 14:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7780
;

-- Dec 3, 2013 2:36:48 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2013-12-03 14:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7781
;

-- Dec 3, 2013 2:36:48 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2013-12-03 14:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=7782
;

-- Dec 3, 2013 2:36:48 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2013-12-03 14:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4179
;

-- Dec 3, 2013 2:36:48 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2013-12-03 14:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10390
;

-- Dec 3, 2013 2:36:48 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2013-12-03 14:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4190
;

-- Dec 3, 2013 2:36:48 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2013-12-03 14:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4183
;

-- Dec 3, 2013 2:36:48 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2013-12-03 14:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10391
;

-- Dec 3, 2013 2:36:48 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_TIMESTAMP('2013-12-03 14:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10389
;

-- Dec 3, 2013 2:36:48 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2013-12-03 14:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4186
;

-- Dec 3, 2013 2:37:05 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2013-12-03 14:37:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71143
;

-- Dec 3, 2013 2:37:05 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2013-12-03 14:37:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71144
;

-- Dec 3, 2013 2:37:19 PM VET
-- LVE File Bank Transfer
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-12-03 14:37:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71144
;

