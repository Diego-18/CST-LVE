-- Oct 28, 2014 11:43:44 AM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74665,2000,0,15,53828,'DueDate',TO_TIMESTAMP('2014-10-28 11:43:37','YYYY-MM-DD HH24:MI:SS'),100,'Date when the payment is due','ECA02',7,'Date when the payment is due without deductions or discount','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Due Date',0,TO_TIMESTAMP('2014-10-28 11:43:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 28, 2014 11:43:44 AM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74665 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 28, 2014 11:46:43 AM VET
-- LVE EFT
UPDATE AD_Column SET ReadOnlyLogic='@RequestType@ ! ''PRM''',Updated=TO_TIMESTAMP('2014-10-28 11:46:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74665
;

-- Oct 28, 2014 11:47:01 AM VET
-- LVE EFT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,74665,74750,0,53979,TO_TIMESTAMP('2014-10-28 11:46:59','YYYY-MM-DD HH24:MI:SS'),100,'Date when the payment is due',7,'ECA02','Date when the payment is due without deductions or discount','Y','Y','Y','N','N','N','N','N','Due Date',TO_TIMESTAMP('2014-10-28 11:46:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 28, 2014 11:47:01 AM VET
-- LVE EFT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74750 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 28, 2014 11:48:14 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-10-28 11:48:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74750
;

-- Oct 28, 2014 11:48:14 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-10-28 11:48:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74032
;

-- Oct 28, 2014 11:48:38 AM VET
-- LVE EFT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-10-28 11:48:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74032
;

-- Oct 28, 2014 11:52:17 AM VET
-- LVE EFT
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-10-28 11:52:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74750
;

-- Oct 28, 2014 11:54:03 AM VET
-- LVE EFT
UPDATE AD_Window SET IsSOTrx='N',Updated=TO_TIMESTAMP('2014-10-28 11:54:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53368
;

-- Oct 28, 2014 2:29:05 PM VET
-- LVE EFT
UPDATE AD_Browse SET WhereClause='OpenAmt > 0 AND RequestType = ''@RequestType@'' AND IsSOTrx = ''N'' 
and not exists (select 1 from lve_paymentrequest pr inner join lve_paymentrequestline prl on (prl.lve_paymentrequest_id = pr.lve_paymentrequest_id) where prl.C_Order_ID = Record_ID AND pr.RequestType = op.RequestType AND pr.LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@)
and not exists (select 1 from lve_paymentrequest pr inner join lve_paymentrequestline prl on (prl.lve_paymentrequest_id = pr.lve_paymentrequest_id) where		prl.C_Invoice_ID = Record_ID 	AND pr.RequestType = op.RequestType AND pr.LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@)
and not exists (select 1 from lve_paymentrequest pr inner join lve_paymentrequestline prl on (prl.lve_paymentrequest_id = pr.lve_paymentrequest_id) where		prl.GL_JournalLine_ID = Record_ID AND pr.RequestType = op.RequestType AND pr.LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ )',Updated=TO_TIMESTAMP('2014-10-28 14:29:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50039
;

-- Oct 28, 2014 2:29:14 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2014-10-28 14:29:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53880
;

-- Oct 28, 2014 3:44:08 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='C_Invoice.DocStatus IN (''CO'', ''CL'') AND C_Invoice.IsSOTrx=''N'' AND NOT EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = C_Invoice.C_Invoice_ID AND OpenAmt = 0)',Updated=TO_TIMESTAMP('2014-10-28 15:44:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52383
;

-- Oct 28, 2014 5:06:50 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='C_Order.DocStatus IN (''CO'') AND IsSOTrx=''N''

C_Order.DocStatus IN (''CO'', ''CL'') AND C_Order.IsSOTrx=''N'' AND NOT EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = C_Order.C_Order_ID AND OpenAmt = 0)',Updated=TO_TIMESTAMP('2014-10-28 17:06:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52384
;

-- Oct 28, 2014 5:07:31 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='C_Order.DocStatus IN (''CO'', ''CL'') AND C_Order.IsSOTrx=''N'' AND NOT EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = C_Order.C_Order_ID AND OpenAmt = 0)',Updated=TO_TIMESTAMP('2014-10-28 17:07:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52384
;

-- Oct 28, 2014 5:21:39 PM VET
-- LVE EFT
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52403,'C_BPartner_ID IS NOT NULL  AND NOT EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = GL_JournalLine.GL_JournalLine_ID AND OpenAmt = 0)',TO_TIMESTAMP('2014-10-28 17:21:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','GL_JournalLine with Business Partner','S',TO_TIMESTAMP('2014-10-28 17:21:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 28, 2014 5:22:00 PM VET
-- LVE EFT
UPDATE AD_Column SET AD_Val_Rule_ID=52403,Updated=TO_TIMESTAMP('2014-10-28 17:22:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73415
;

