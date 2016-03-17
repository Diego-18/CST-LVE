-- Oct 8, 2014 1:59:48 PM VET
-- LVE EFT
UPDATE AD_Process_Para SET IsActive='Y',Updated=TO_DATE('2014-10-08 13:59:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54970
;

-- Oct 8, 2014 2:00:37 PM VET
-- LVE EFT
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52397,'EXISTS (SELECT 1 FROM C_PaymentBatch WHERE C_Payment.C_PaymentBatch_ID = @C_PaymentBatch_ID@ OR C_PaymentBatch.C_PaymentBatch_ID IS NULL)',TO_DATE('2014-10-08 14:00:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_Payment Exists In C_PaymentBatch','S',TO_DATE('2014-10-08 14:00:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 8, 2014 2:00:51 PM VET
-- LVE EFT
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52397,Updated=TO_DATE('2014-10-08 14:00:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54976
;

