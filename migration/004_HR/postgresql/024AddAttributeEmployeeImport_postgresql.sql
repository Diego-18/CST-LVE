-- Sep 24, 2013 12:01:12 PM VET
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68023,53397,0,19,53589,'HR_Attribute_ID',TO_TIMESTAMP('2013-09-24 12:01:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',22,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Payroll Employee Attribute',0,TO_TIMESTAMP('2013-09-24 12:01:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 24, 2013 12:01:12 PM VET
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68023 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 24, 2013 12:01:15 PM VET
-- LVE-HR
ALTER TABLE I_HR_Employee ADD COLUMN HR_Attribute_ID NUMERIC(10) DEFAULT NULL 
;

-- Sep 24, 2013 12:01:36 PM VET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,68023,69624,0,53768,TO_TIMESTAMP('2013-09-24 12:01:35','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','Y','N','N','N','N','N','Payroll Employee Attribute',TO_TIMESTAMP('2013-09-24 12:01:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 24, 2013 12:01:36 PM VET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69624 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 24, 2013 12:01:45 PM VET
-- LVE-HR
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=69624
;

-- Sep 24, 2013 12:02:02 PM VET
-- LVE-HR
UPDATE AD_Field SET DisplayLength=15,Updated=TO_TIMESTAMP('2013-09-24 12:02:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69610
;

-- Sep 24, 2013 12:02:06 PM VET
-- LVE-HR
UPDATE AD_Field SET DisplayLength=14,Updated=TO_TIMESTAMP('2013-09-24 12:02:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69610
;

