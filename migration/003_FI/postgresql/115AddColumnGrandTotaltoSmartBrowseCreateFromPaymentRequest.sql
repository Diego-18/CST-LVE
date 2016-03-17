-- Dec 16, 2014 2:36:18 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74967,316,0,22,53843,'GrandTotal',TO_TIMESTAMP('2014-12-16 14:36:11','YYYY-MM-DD HH24:MI:SS'),100,'Total amount of document','ECA02',131089,'The Grand Total displays the total amount including Tax and Freight in document currency','Y','N','N','N','N','N','N','N','N','N','Grand Total',TO_TIMESTAMP('2014-12-16 14:36:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 16, 2014 2:36:18 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74967 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 16, 2014 2:37:06 PM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74967,0,52828,50068,50032,'OP_GrandTotal','OP.GrandTotal',TO_TIMESTAMP('2014-12-16 14:37:05','YYYY-MM-DD HH24:MI:SS'),100,'Total amount of document','ECA02','The Grand Total displays the total amount including Tax and Freight in document currency','Y','Grand Total',TO_TIMESTAMP('2014-12-16 14:37:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 2:37:15 PM VET
-- LVE EFT
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (54029,50039,0,316,0,22,52828,TO_TIMESTAMP('2014-12-16 14:37:14','YYYY-MM-DD HH24:MI:SS'),100,'Total amount of document','ECA02','The Grand Total displays the total amount including Tax and Freight in document currency','Y','N','N','N','N','N','N','Grand Total',10,TO_TIMESTAMP('2014-12-16 14:37:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 16, 2014 2:37:15 PM VET
-- LVE EFT
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=54029 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Dec 16, 2014 2:37:27 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-12-16 14:37:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=54029
;

-- Dec 16, 2014 2:37:27 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-12-16 14:37:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53986
;

-- Dec 16, 2014 2:37:27 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-12-16 14:37:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53987
;

-- Dec 16, 2014 2:37:27 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-12-16 14:37:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53695
;

