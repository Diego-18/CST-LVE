-- Jul 23, 2014 5:26:40 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='NOT EXISTS (SELECT 1 FROM C_PaySelectionLine psl WHERE LVE_PaymentRequest.LVE_PaymentRequest_ID = psl.LVE_PaymentRequest_ID) AND LVE_PaymentRequest.DocStatus IN (''CO'',''CL'') ',Updated=TO_DATE('2014-07-23 17:26:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52379
;

-- Jul 23, 2014 5:35:13 PM VET
-- LVE EFT
UPDATE AD_Column SET Callout='org.compiere.model.CalloutPaySelection.order',Updated=TO_DATE('2014-07-23 17:35:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73323
;

