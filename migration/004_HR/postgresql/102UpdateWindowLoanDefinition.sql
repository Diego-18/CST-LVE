-- Jun 25, 2014 4:29:16 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57235,0,18,53556,'Interest_T_Concept_ID',TO_TIMESTAMP('2014-06-25 16:29:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Concept (Top Capital)','Concept (Top Capital)',TO_TIMESTAMP('2014-06-25 16:29:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 25, 2014 4:29:16 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57235 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 25, 2014 4:29:30 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Limite Capital)',PrintName='Concepto (Limite Capital)',Updated=TO_TIMESTAMP('2014-06-25 16:29:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57235 AND AD_Language='es_MX'
;

-- Jun 25, 2014 4:29:34 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Limite Capital)',PrintName='Concepto (Limite Capital)',Updated=TO_TIMESTAMP('2014-06-25 16:29:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57235 AND AD_Language='es_VE'
;

-- Jun 25, 2014 4:29:45 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73229,57235,0,18,53556,53813,'Interest_T_Concept_ID',TO_TIMESTAMP('2014-06-25 16:29:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Concept (Top Capital)',0,TO_TIMESTAMP('2014-06-25 16:29:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 25, 2014 4:29:45 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73229 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 25, 2014 4:30:10 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73229,73715,0,53966,TO_TIMESTAMP('2014-06-25 16:30:02','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Concept (Top Capital)',TO_TIMESTAMP('2014-06-25 16:30:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 25, 2014 4:30:10 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73715 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 25, 2014 4:30:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-25 16:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73715
;

-- Jun 25, 2014 4:32:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-06-25 16:32:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73715
;

-- Jun 25, 2014 4:32:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-06-25 16:32:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73671
;

-- Jun 25, 2014 4:32:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-06-25 16:32:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73668
;

-- Jun 25, 2014 4:32:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-06-25 16:32:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73666
;

-- Jun 25, 2014 4:32:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-06-25 16:32:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73686
;

-- Jun 25, 2014 4:32:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-06-25 16:32:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73687
;

-- Jun 25, 2014 4:32:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-06-25 16:32:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73670
;

-- Jun 25, 2014 4:32:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2014-06-25 16:32:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73685
;

-- Jun 25, 2014 4:32:53 PM VET
-- LVE HR
UPDATE AD_Table SET AD_Window_ID=53363,Updated=TO_TIMESTAMP('2014-06-25 16:32:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53813
;

-- Jun 25, 2014 4:33:28 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-06-25 16:33:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73671
;

-- Jun 25, 2014 4:33:28 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-06-25 16:33:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73668
;

-- Jun 25, 2014 4:33:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-06-25 16:33:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73666
;

-- Jun 25, 2014 4:33:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-06-25 16:33:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73686
;

-- Jun 25, 2014 4:33:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-06-25 16:33:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73687
;

-- Jun 25, 2014 4:33:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-06-25 16:33:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73670
;

-- Jun 25, 2014 4:33:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-06-25 16:33:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73685
;

-- Jun 25, 2014 4:33:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2014-06-25 16:33:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73715
;

-- Jun 25, 2014 4:33:40 PM VET
-- LVE HR
UPDATE AD_Field SET DisplayLogic='@ManagesInterest@=''Y''',Updated=TO_TIMESTAMP('2014-06-25 16:33:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73715
;

-- Jun 25, 2014 4:35:13 PM VET
-- LVE HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-06-25 16:35:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73715
;

