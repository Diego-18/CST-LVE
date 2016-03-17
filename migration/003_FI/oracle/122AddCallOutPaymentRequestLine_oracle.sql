-- 6/02/2015 01:50:11 AM VET
-- LVE-EFT
UPDATE AD_Val_Rule SET Code='C_BP_BankAccount.C_BPartner_ID=@C_BPartner_ID@
OR
EXISTS(SELECT * FROM C_Invoice inv WHERE inv.C_BPartner_ID=C_BP_BankAccount.C_BPartner_ID AND inv.C_Invoice_ID = @C_Invoice_ID@ )
OR
EXISTS(SELECT * FROM C_Order ord WHERE ord.C_BPartner_ID=C_BP_BankAccount.C_BPartner_ID AND ord.C_Order_ID = @C_Order_ID@ )
OR 
EXISTS(SELECT * FROM GL_JournalLine jl WHERE jl.C_BPartner_ID=C_BP_BankAccount.C_BPartner_ID AND jl.GL_JournalLine_ID = @GL_JournalLine_ID@ )',Updated=TO_DATE('2015-02-06 01:50:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52421
;

-- 6/02/2015 01:51:50 AM VET
-- LVE-EFT
UPDATE AD_Column SET Callout='org.spin.model.CalloutPaymentRequest.bpartner',Updated=TO_DATE('2015-02-06 01:51:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74559
;

-- 6/02/2015 01:53:44 AM VET
-- LVE-EFT
UPDATE AD_Column SET Callout='org.spin.model.CalloutPaymentRequest.payAmt;org.spin.model.CalloutPaymentRequest.invoice',Updated=TO_DATE('2015-02-06 01:53:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73416
;

-- 6/02/2015 01:54:26 AM VET
-- LVE-EFT
UPDATE AD_Column SET Callout='org.spin.model.CalloutPaymentRequest.payAmt;org.spin.model.CalloutPaymentRequest.',Updated=TO_DATE('2015-02-06 01:54:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73417
;

-- 6/02/2015 01:54:30 AM VET
-- LVE-EFT
UPDATE AD_Column SET Callout='org.spin.model.CalloutPaymentRequest.payAmt;org.spin.model.CalloutPaymentRequest.order',Updated=TO_DATE('2015-02-06 01:54:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73417
;

-- 6/02/2015 01:54:56 AM VET
-- LVE-EFT
UPDATE AD_Column SET Callout='org.spin.model.CalloutPaymentRequest.payAmt;org.spin.model.CalloutPaymentRequest.journal',Updated=TO_DATE('2015-02-06 01:54:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73415
;

-- 6/02/2015 02:17:42 AM VET
-- LVE-EFT
UPDATE AD_Column SET DefaultValue='-1',Updated=TO_DATE('2015-02-06 02:17:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=75729
;

