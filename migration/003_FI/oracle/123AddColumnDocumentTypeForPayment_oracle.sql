-- Feb 23, 2015 12:31:25 PM VET
-- LVE-ADempiere
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57876,0,18,170,'C_DocTypePayment_ID',TO_DATE('2015-02-23 12:31:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','C_DocTypePayment_ID','C_DocTypePayment_ID',TO_DATE('2015-02-23 12:31:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 23, 2015 12:31:25 PM VET
-- LVE-ADempiere
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57876 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Feb 23, 2015 12:31:35 PM VET
-- LVE-ADempiere
UPDATE AD_Element SET Name='Document Type for Payment',Updated=TO_DATE('2015-02-23 12:31:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57876
;

-- Feb 23, 2015 12:31:35 PM VET
-- LVE-ADempiere
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57876
;

-- Feb 23, 2015 12:31:35 PM VET
-- LVE-ADempiere
UPDATE AD_Column SET ColumnName='C_DocTypePayment_ID', Name='Document Type for Payment', Description=NULL, Help=NULL WHERE AD_Element_ID=57876
;

-- Feb 23, 2015 12:31:35 PM VET
-- LVE-ADempiere
UPDATE AD_Process_Para SET ColumnName='C_DocTypePayment_ID', Name='Document Type for Payment', Description=NULL, Help=NULL, AD_Element_ID=57876 WHERE UPPER(ColumnName)='C_DOCTYPEPAYMENT_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Feb 23, 2015 12:31:35 PM VET
-- LVE-ADempiere
UPDATE AD_Process_Para SET ColumnName='C_DocTypePayment_ID', Name='Document Type for Payment', Description=NULL, Help=NULL WHERE AD_Element_ID=57876 AND IsCentrallyMaintained='Y'
;

-- Feb 23, 2015 12:31:35 PM VET
-- LVE-ADempiere
UPDATE AD_Field SET Name='Document Type for Payment', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57876) AND IsCentrallyMaintained='Y'
;

-- Feb 23, 2015 12:31:35 PM VET
-- LVE-ADempiere
UPDATE AD_PrintFormatItem pi SET PrintName='C_DocTypePayment_ID', Name='Document Type for Payment' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=57876)
;

-- Feb 23, 2015 12:31:42 PM VET
-- LVE-ADempiere
UPDATE AD_Element SET PrintName='Doc Type Payment',Updated=TO_DATE('2015-02-23 12:31:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57876
;

-- Feb 23, 2015 12:31:42 PM VET
-- LVE-ADempiere
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57876
;

-- Feb 23, 2015 12:31:42 PM VET
-- LVE-ADempiere
UPDATE AD_PrintFormatItem pi SET PrintName='Doc Type Payment', Name='Document Type for Payment' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=57876)
;

-- Feb 23, 2015 12:32:00 PM VET
-- LVE-ADempiere
UPDATE AD_Element_Trl SET Name='Tipo de Documento para el Pago',PrintName='Tipo de Documento para el Pago',Updated=TO_DATE('2015-02-23 12:32:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57876 AND AD_Language='es_MX'
;

-- Feb 23, 2015 12:32:05 PM VET
-- LVE-ADempiere
UPDATE AD_Element_Trl SET Name='Tipo de Documento para el Pago',PrintName='Tipo de Documento para el Pago',Updated=TO_DATE('2015-02-23 12:32:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57876 AND AD_Language='es_VE'
;

-- Feb 23, 2015 12:33:54 PM VET
-- LVE-ADempiere
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52428,'C_DocType.DocBaseType= ''APP''',TO_DATE('2015-02-23 12:33:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_DocType Payments','S',TO_DATE('2015-02-23 12:33:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 23, 2015 12:34:07 PM VET
-- LVE-ADempiere
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75907,57876,0,18,170,217,52428,'C_DocTypePayment_ID',TO_DATE('2015-02-23 12:34:06','YYYY-MM-DD HH24:MI:SS'),100,'U',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document Type for Payment',0,TO_DATE('2015-02-23 12:34:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 23, 2015 12:34:07 PM VET
-- LVE-ADempiere
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75907 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 23, 2015 12:34:41 PM VET
-- LVE-ADempiere
UPDATE AD_Column SET EntityType='D',Updated=TO_DATE('2015-02-23 12:34:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=75907
;

-- Feb 23, 2015 12:35:03 PM VET
-- LVE-ADempiere
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsAllowCopy,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,75907,76220,0,167,TO_DATE('2015-02-23 12:35:02','YYYY-MM-DD HH24:MI:SS'),100,0,'D','N','Y','N','Y','Y','N','N','N','N','N','Document Type for Payment',0,340,0,TO_DATE('2015-02-23 12:35:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 23, 2015 12:35:03 PM VET
-- LVE-ADempiere
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=76220 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 23, 2015 12:37:07 PM VET
-- LVE-ADempiere
ALTER TABLE C_DocType ADD C_DocTypePayment_ID NUMBER(10) DEFAULT NULL 
;

