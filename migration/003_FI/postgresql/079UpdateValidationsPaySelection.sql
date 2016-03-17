-- Jul 22, 2014 10:55:59 AM VET
-- LVE EFT
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52381,'C_DocType.DocBaseType IN (''ARI'', ''API'',''ARC'',''APC'',''GLJ'',''SOO'', ''POO'') ',TO_TIMESTAMP('2014-07-22 10:55:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_DocType of Orders, Journal and Order','S',TO_TIMESTAMP('2014-07-22 10:55:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 22, 2014 10:56:04 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET AD_Reference_ID=18, AD_Val_Rule_ID=52381,Updated=TO_TIMESTAMP('2014-07-22 10:56:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53689
;

-- Jul 22, 2014 10:58:36 AM VET
-- LVE EFT
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-07-22 10:58:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73977
;

-- Jul 22, 2014 10:59:26 AM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='EXISTS (SELECT C_Order_ID FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@) AND DocStatus IN (''CO'',''CL'')',Updated=TO_TIMESTAMP('2014-07-22 10:59:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52378
;

-- Jul 22, 2014 10:59:40 AM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='EXISTS (SELECT C_Order_ID FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@) AND C_Order.DocStatus IN (''CO'',''CL'')',Updated=TO_TIMESTAMP('2014-07-22 10:59:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52377
;

-- Jul 22, 2014 11:05:37 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET AD_Reference_ID=30,Updated=TO_TIMESTAMP('2014-07-22 11:05:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53688
;

-- Jul 22, 2014 11:12:31 AM VET
-- LVE EFT
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_TIMESTAMP('2014-07-22 11:12:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4421
;

-- Jul 22, 2014 11:12:34 AM VET
-- LVE EFT
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_TIMESTAMP('2014-07-22 11:12:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73977
;

-- Jul 22, 2014 11:13:01 AM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='EXISTS (SELECT C_Invoice_ID FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@) AND DocStatus IN (''CO'',''CL'')',Updated=TO_TIMESTAMP('2014-07-22 11:13:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52378
;

-- Jul 22, 2014 11:17:47 AM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='EXISTS (SELECT 1 FROM LVE_PaymentRequestLine prl INNER JOIN LVE_PaymentRequest pr ON (prl.LVE_PaymentRequest_ID = pr.LVE_PaymentRequest_ID)	WHERE pr.LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND C_Order.C_Order_ID = prl.C_Order_ID	)',Updated=TO_TIMESTAMP('2014-07-22 11:17:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52377
;

-- Jul 22, 2014 11:18:19 AM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='EXISTS (SELECT 1 FROM LVE_PaymentRequestLine prl INNER JOIN LVE_PaymentRequest pr ON (prl.LVE_PaymentRequest_ID = pr.LVE_PaymentRequest_ID)	WHERE pr.LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND C_Invoice.C_Invoice_ID = prl.C_Invoice_ID	)',Updated=TO_TIMESTAMP('2014-07-22 11:18:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52378
;

