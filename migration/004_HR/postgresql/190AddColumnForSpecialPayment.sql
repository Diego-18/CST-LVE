-- Oct 2, 2014 11:54:15 AM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57478,0,18,53556,'Loan_I_SP_Concept_ID',TO_TIMESTAMP('2014-10-02 11:54:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Concept (Incidence of Loan) SP','Concept (Incidence of Loan) SP',TO_TIMESTAMP('2014-10-02 11:54:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2014 11:54:15 AM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57478 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 2, 2014 11:54:37 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Incidencia de Préstamo) SP',PrintName='Concepto (Incidencia de Préstamo) SP',Updated=TO_TIMESTAMP('2014-10-02 11:54:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57478 AND AD_Language='es_MX'
;

-- Oct 2, 2014 11:55:26 AM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74498,57478,0,18,53556,53813,'Loan_I_SP_Concept_ID',TO_TIMESTAMP('2014-10-02 11:55:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Concept (Incidence of Loan) SP',0,TO_TIMESTAMP('2014-10-02 11:55:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 2, 2014 11:55:26 AM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74498 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 2, 2014 11:55:28 AM VET
-- LVE HR
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-10-02 11:55:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74498
;

-- Oct 2, 2014 11:55:43 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,74498,74605,0,53966,TO_TIMESTAMP('2014-10-02 11:55:41','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Concept (Incidence of Loan) SP',TO_TIMESTAMP('2014-10-02 11:55:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2014 11:55:43 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74605 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 2, 2014 12:05:38 PM VET
-- LVE HR
UPDATE AD_Element SET Name='Concept (Incidence Special Payment)', PrintName='Concept (Incidence Special Payment)',Updated=TO_TIMESTAMP('2014-10-02 12:05:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57478
;

-- Oct 2, 2014 12:05:38 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57478
;

-- Oct 2, 2014 12:05:38 PM VET
-- LVE HR
UPDATE AD_Column SET ColumnName='Loan_I_SP_Concept_ID', Name='Concept (Incidence Special Payment)', Description=NULL, Help=NULL WHERE AD_Element_ID=57478
;

-- Oct 2, 2014 12:05:38 PM VET
-- LVE HR
UPDATE AD_Process_Para SET ColumnName='Loan_I_SP_Concept_ID', Name='Concept (Incidence Special Payment)', Description=NULL, Help=NULL, AD_Element_ID=57478 WHERE UPPER(ColumnName)='LOAN_I_SP_CONCEPT_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 2, 2014 12:05:38 PM VET
-- LVE HR
UPDATE AD_Process_Para SET ColumnName='Loan_I_SP_Concept_ID', Name='Concept (Incidence Special Payment)', Description=NULL, Help=NULL WHERE AD_Element_ID=57478 AND IsCentrallyMaintained='Y'
;

-- Oct 2, 2014 12:05:38 PM VET
-- LVE HR
UPDATE AD_Field SET Name='Concept (Incidence Special Payment)', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57478) AND IsCentrallyMaintained='Y'
;

-- Oct 2, 2014 12:05:38 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET PrintName='Concept (Incidence Special Payment)', Name='Concept (Incidence Special Payment)' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57478)
;

-- Oct 2, 2014 12:05:53 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Incidencia Pagos Especiales)',PrintName='Concepto (Incidencia Pagos Especiales)',Updated=TO_TIMESTAMP('2014-10-02 12:05:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57478 AND AD_Language='es_MX'
;

-- Oct 2, 2014 12:06:22 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-10-02 12:06:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74605
;

-- Oct 2, 2014 12:06:22 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-10-02 12:06:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73678
;

-- Oct 2, 2014 12:06:22 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-10-02 12:06:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73683
;

-- Oct 2, 2014 12:06:22 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-10-02 12:06:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73682
;

-- Oct 2, 2014 12:06:22 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-10-02 12:06:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73671
;

-- Oct 2, 2014 12:06:22 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-10-02 12:06:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73668
;

-- Oct 2, 2014 12:06:22 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-10-02 12:06:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73666
;

-- Oct 2, 2014 12:06:22 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-10-02 12:06:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73686
;

-- Oct 2, 2014 12:06:22 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-10-02 12:06:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73687
;

-- Oct 2, 2014 12:06:23 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2014-10-02 12:06:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73670
;

-- Oct 2, 2014 12:06:23 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_TIMESTAMP('2014-10-02 12:06:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73685
;

-- Oct 2, 2014 12:06:23 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2014-10-02 12:06:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73715
;

-- Oct 2, 2014 12:06:39 PM VET
-- LVE HR
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2014-10-02 12:06:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74605
;

