-- Jul 22, 2014 11:29:51 AM VET
-- LVE EFT
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_DATE('2014-07-22 11:29:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73977
;

-- Jul 22, 2014 11:36:40 AM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='EXISTS (SELECT 1 FROM LVE_PaymentRequestLine prl WHERE prl.LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND C_Order.C_Order_ID = prl.C_Order_ID	)',Updated=TO_DATE('2014-07-22 11:36:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52377
;

-- Jul 22, 2014 11:37:11 AM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='EXISTS (SELECT 1 FROM LVE_PaymentRequestLine prl WHERE prl.LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND C_Invoice.C_Invoice_ID = prl.C_Invoice_ID	)',Updated=TO_DATE('2014-07-22 11:37:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52378
;

-- Jul 22, 2014 11:40:56 AM VET
-- LVE EFT
UPDATE AD_Column SET Callout='org.spin.model.CalloutPaymentRequest.payAmtPO',Updated=TO_DATE('2014-07-22 11:40:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73323
;

-- Jul 22, 2014 11:42:30 AM VET
-- LVE EFT
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52382,'EXISTS (SELECT 1 FROM LVE_PaymentRequestLine prl WHERE prl.LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND GL_JournalLine.GL_JournalLine_ID = prl.GL_JournalLine_ID	)',TO_DATE('2014-07-22 11:42:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','GL_JournalLine of Payment Request','S',TO_DATE('2014-07-22 11:42:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 22, 2014 11:42:45 AM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73813,314,0,19,427,52382,'GL_JournalLine_ID',TO_DATE('2014-07-22 11:42:43','YYYY-MM-DD HH24:MI:SS'),100,'General Ledger Journal Line','ECA02',22,'The General Ledger Journal Line identifies a single transaction in a journal.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Journal Line',0,TO_DATE('2014-07-22 11:42:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 22, 2014 11:42:45 AM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73813 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 22, 2014 11:43:23 AM VET
-- LVE EFT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,73813,74091,0,353,TO_DATE('2014-07-22 11:43:21','YYYY-MM-DD HH24:MI:SS'),100,'General Ledger Journal Line',0,'ECA02','The General Ledger Journal Line identifies a single transaction in a journal.','N','Y','Y','Y','N','N','N','N','Y','Journal Line',0,180,0,TO_DATE('2014-07-22 11:43:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 22, 2014 11:43:23 AM VET
-- LVE EFT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74091 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jul 22, 2014 11:43:31 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2014-07-22 11:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74091
;

-- Jul 22, 2014 11:43:31 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_DATE('2014-07-22 11:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10641
;

-- Jul 22, 2014 11:43:31 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_DATE('2014-07-22 11:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4432
;

-- Jul 22, 2014 11:43:31 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_DATE('2014-07-22 11:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10640
;

-- Jul 22, 2014 11:43:31 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_DATE('2014-07-22 11:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4939
;

-- Jul 22, 2014 11:43:31 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_DATE('2014-07-22 11:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5840
;

-- Jul 22, 2014 11:43:31 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2014-07-22 11:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10616
;

-- Jul 22, 2014 11:44:09 AM VET
-- LVE EFT
UPDATE AD_Column SET AD_Reference_ID=30,Updated=TO_DATE('2014-07-22 11:44:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73813
;

-- Jul 22, 2014 11:46:21 AM VET
-- LVE EFT
UPDATE AD_Column SET Callout='org.spin.model.CalloutPaymentRequest.payAmt',Updated=TO_DATE('2014-07-22 11:46:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73813
;

-- Jul 22, 2014 11:46:28 AM VET
-- LVE EFT
UPDATE AD_Column SET Callout='org.spin.model.CalloutPaymentRequest.payAmt',Updated=TO_DATE('2014-07-22 11:46:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73323
;

