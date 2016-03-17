-- Jun 25, 2014 4:03:23 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Cálculo del Préstamo)',PrintName='Concepto (Cálculo del Préstamo)',Updated=TO_TIMESTAMP('2014-06-25 16:03:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57211 AND AD_Language='es_MX'
;

-- Jun 25, 2014 4:03:29 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Cálculo del Préstamo)',PrintName='Concepto (Cálculo del Préstamo)',Updated=TO_TIMESTAMP('2014-06-25 16:03:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57211 AND AD_Language='es_VE'
;

-- Jun 25, 2014 4:07:12 PM VET
-- LVE HR
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=73662
;

-- Jun 25, 2014 4:07:12 PM VET
-- LVE HR
DELETE FROM AD_Field WHERE AD_Field_ID=73662
;

-- Jun 25, 2014 4:07:21 PM VET
-- LVE HR
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73056
;

-- Jun 25, 2014 4:07:21 PM VET
-- LVE HR
DELETE FROM AD_Column WHERE AD_Column_ID=73056
;

-- Jun 25, 2014 4:07:37 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73228,958,0,10,53794,'PrintName',TO_TIMESTAMP('2014-06-25 16:07:30','YYYY-MM-DD HH24:MI:SS'),100,'The label text to be printed on a document or correspondence.','ECA02',60,'The Label to be printed indicates the name that will be printed on a document or correspondence. The max length is 2000 characters.','Y','Y','N','N','N','N','N','N','N','Y','N','N','Y','Print Text',0,TO_TIMESTAMP('2014-06-25 16:07:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 25, 2014 4:07:37 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73228 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 25, 2014 4:07:43 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73228,73714,0,53949,TO_TIMESTAMP('2014-06-25 16:07:41','YYYY-MM-DD HH24:MI:SS'),100,'The label text to be printed on a document or correspondence.',60,'ECA02','The Label to be printed indicates the name that will be printed on a document or correspondence. The max length is 2000 characters.','Y','Y','Y','N','N','N','N','N','Print Text',TO_TIMESTAMP('2014-06-25 16:07:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 25, 2014 4:07:43 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73714 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 25, 2014 4:07:57 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-06-25 16:07:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73714
;

-- Jun 25, 2014 4:09:06 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Constante Bancaria)',PrintName='Concepto (Constante Bancaria)',Updated=TO_TIMESTAMP('2014-06-25 16:09:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57220 AND AD_Language='es_MX'
;

-- Jun 25, 2014 4:09:10 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Constante Bancaria)',PrintName='Concepto (Constante Bancaria)',Updated=TO_TIMESTAMP('2014-06-25 16:09:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57220 AND AD_Language='es_VE'
;

-- Jun 25, 2014 4:11:13 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Tasa De Interes)',PrintName='Concepto (Tasa De Interes)',Updated=TO_TIMESTAMP('2014-06-25 16:11:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57216 AND AD_Language='es_MX'
;

-- Jun 25, 2014 4:11:16 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Tasa De Interes)',PrintName='Concepto (Tasa De Interes)',Updated=TO_TIMESTAMP('2014-06-25 16:11:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57216 AND AD_Language='es_VE'
;
