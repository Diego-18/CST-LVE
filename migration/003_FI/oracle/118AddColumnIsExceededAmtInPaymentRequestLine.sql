-- Dec 17, 2014 4:10:01 PM VET
-- LVE EFT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57635,0,20,'IsExceededAmt',TO_DATE('2014-12-17 16:09:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Is Exceeded Amount','Is Exceeded Amount',TO_DATE('2014-12-17 16:09:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 17, 2014 4:10:01 PM VET
-- LVE EFT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57635 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Dec 17, 2014 4:10:28 PM VET
-- LVE EFT
UPDATE AD_Element_Trl SET Name='Se excede Monto',PrintName='Se excede Monto',Updated=TO_DATE('2014-12-17 16:10:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57635 AND AD_Language='es_MX'
;

-- Dec 17, 2014 4:11:07 PM VET
-- LVE EFT
UPDATE AD_Element_Trl SET Name='Excede Monto',PrintName='Excede Monto',Updated=TO_DATE('2014-12-17 16:11:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57635 AND AD_Language='es_MX'
;

-- Dec 17, 2014 4:11:15 PM VET
-- LVE EFT
UPDATE AD_Element SET Name='Exceeded Amount', PrintName='Exceeded Amount',Updated=TO_DATE('2014-12-17 16:11:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57635
;

-- Dec 17, 2014 4:11:15 PM VET
-- LVE EFT
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57635
;

-- Dec 17, 2014 4:11:15 PM VET
-- LVE EFT
UPDATE AD_Column SET ColumnName='IsExceededAmt', Name='Exceeded Amount', Description=NULL, Help=NULL WHERE AD_Element_ID=57635
;

-- Dec 17, 2014 4:11:15 PM VET
-- LVE EFT
UPDATE AD_Process_Para SET ColumnName='IsExceededAmt', Name='Exceeded Amount', Description=NULL, Help=NULL, AD_Element_ID=57635 WHERE UPPER(ColumnName)='ISEXCEEDEDAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Dec 17, 2014 4:11:15 PM VET
-- LVE EFT
UPDATE AD_Process_Para SET ColumnName='IsExceededAmt', Name='Exceeded Amount', Description=NULL, Help=NULL WHERE AD_Element_ID=57635 AND IsCentrallyMaintained='Y'
;

-- Dec 17, 2014 4:11:15 PM VET
-- LVE EFT
UPDATE AD_Field SET Name='Exceeded Amount', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57635) AND IsCentrallyMaintained='Y'
;

-- Dec 17, 2014 4:11:15 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem pi SET PrintName='Exceeded Amount', Name='Exceeded Amount' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=57635)
;

-- Dec 17, 2014 4:12:00 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75055,57635,0,20,53828,'IsExceededAmt',TO_DATE('2014-12-17 16:11:58','YYYY-MM-DD HH24:MI:SS'),100,'N','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Exceeded Amount',0,TO_DATE('2014-12-17 16:11:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 17, 2014 4:12:00 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75055 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 17, 2014 4:12:21 PM VET
-- LVE EFT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,75055,74965,0,53979,TO_DATE('2014-12-17 16:12:20','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Exceeded Amount',TO_DATE('2014-12-17 16:12:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 17, 2014 4:12:21 PM VET
-- LVE EFT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74965 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 17, 2014 4:15:23 PM VET
-- LVE EFT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-12-17 16:15:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74965
;

-- Dec 17, 2014 4:20:14 PM VET
-- LVE EFT
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_DATE('2014-12-17 16:20:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74965
;

-- Dec 17, 2014 4:47:14 PM VET
-- LVE EFT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-12-17 16:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74965
;

