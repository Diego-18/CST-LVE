-- Oct 29, 2014 9:04:37 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_Order.DocStatus IN (''CO'', ''CL'') AND C_Order.IsSOTrx=''N'' AND NOT EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = C_Order.C_Order_ID AND OpenAmt = 0)
AND NOT EXISTS (SELECT 1 FROM LVE_PaymentRequestLine WHERE C_Order.C_Order_ID = LVE_PaymentRequestLine.C_Order_ID AND LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@)
	AND C_Order.C_Order_ID = @C_Order_ID@',Updated=TO_TIMESTAMP('2014-10-29 09:04:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52384
;

-- Oct 29, 2014 9:06:25 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_Order.DocStatus IN (''CO'', ''CL'') AND C_Order.IsSOTrx=''N'' AND NOT EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = C_Order.C_Order_ID AND OpenAmt = 0)
AND NOT EXISTS (SELECT 1 FROM LVE_PaymentRequestLine WHERE C_Order.C_Order_ID = LVE_PaymentRequestLine.C_Order_ID AND LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND C_Order.C_Order_ID = @C_Order_ID@)
	',Updated=TO_TIMESTAMP('2014-10-29 09:06:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52384
;

-- Oct 29, 2014 9:11:23 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_Order.DocStatus IN (''CO'', ''CL'') AND C_Order.IsSOTrx=''N'' AND NOT EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = C_Order.C_Order_ID AND OpenAmt = 0)
AND NOT EXISTS (SELECT 1 FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@) AND  C_Order.C_Order_ID = @C_Order_ID@)
	',Updated=TO_TIMESTAMP('2014-10-29 09:11:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52384
;

-- Oct 29, 2014 9:47:14 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_Order.DocStatus IN (''CO'', ''CL'') AND C_Order.IsSOTrx=''N'' AND NOT EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = C_Order.C_Order_ID AND OpenAmt = 0)
AND NOT EXISTS (SELECT 1 FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@) AND  C_Order.C_Order_ID = @C_Order_ID@',Updated=TO_TIMESTAMP('2014-10-29 09:47:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52384
;

-- Oct 29, 2014 9:56:15 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_Order.DocStatus IN (''CO'', ''CL'') AND C_Order.IsSOTrx=''N'' AND NOT EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = C_Order.C_Order_ID AND OpenAmt = 0)
AND NOT EXISTS (SELECT 1 FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND  C_Order.C_Order_ID = @C_Order_ID@)',Updated=TO_TIMESTAMP('2014-10-29 09:56:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52384
;

-- Oct 29, 2014 10:05:03 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Window SET WindowType='M',Updated=TO_TIMESTAMP('2014-10-29 10:05:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53368
;

-- Oct 29, 2014 10:08:08 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Window SET WindowType='Q',Updated=TO_TIMESTAMP('2014-10-29 10:08:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53368
;

-- Oct 29, 2014 10:10:06 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Window SET WindowType='T',Updated=TO_TIMESTAMP('2014-10-29 10:10:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53368
;

-- Oct 29, 2014 10:44:58 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_Order.DocStatus IN (''CO'', ''CL'') AND C_Order.IsSOTrx=''N'' AND NOT EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = C_Order.C_Order_ID AND OpenAmt = 0)
AND NOT EXISTS (SELECT 1 FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND  C_Order.C_Order_ID = LVE_PaymentRequestLine.C_Order_ID)',Updated=TO_TIMESTAMP('2014-10-29 10:44:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52384
;

-- Oct 29, 2014 10:54:42 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_Order.DocStatus IN (''CO'', ''CL'') AND C_Order.IsSOTrx=''N'' AND NOT EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = C_Order.C_Order_ID AND OpenAmt = 0)
',Updated=TO_TIMESTAMP('2014-10-29 10:54:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52384
;

-- Oct 29, 2014 11:01:40 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_Order.DocStatus IN (''CO'', ''CL'') AND C_Order.IsSOTrx=''N'' AND NOT EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = C_Order.C_Order_ID AND OpenAmt = 0)
AND NOT EXISTS (SELECT 1 FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND  C_Order.C_Order_ID = LVE_PaymentRequestLine.C_Order_ID)
',Updated=TO_TIMESTAMP('2014-10-29 11:01:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52384
;

-- Oct 29, 2014 2:33:47 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_Order.DocStatus IN (''CO'', ''CL'') AND C_Order.IsSOTrx=''N'' AND NOT EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = C_Order.C_Order_ID AND OpenAmt = 0 AND RequestType = ''POO'')
AND NOT EXISTS (SELECT 1 FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND  C_Order.C_Order_ID = LVE_PaymentRequestLine.C_Order_ID)
',Updated=TO_TIMESTAMP('2014-10-29 14:33:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52384
;

-- Oct 29, 2014 2:59:10 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_Invoice.DocStatus IN (''CO'', ''CL'') AND C_Invoice.IsSOTrx=''N'' AND NOT EXISTS (SELECT 1 FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND  C_Invoice.C_Invoice_ID = LVE_PaymentRequestLine.C_Invoice_ID) AND NOT EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = C_Invoice.C_Invoice_ID AND OpenAmt = 0 AND RequestType = ''API'')',Updated=TO_TIMESTAMP('2014-10-29 14:59:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52383
;

-- Oct 29, 2014 3:15:00 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_BPartner_ID IS NOT NULL  AND NOT EXISTS (SELECT 1 FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND  GL_JournalLine.GL_JournalLine_ID = LVE_PaymentRequestLine.GL_JournalLine_ID) AND NOT EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = GL_JournalLine.GL_JournalLine_ID AND OpenAmt = 0 AND RequestType= ''GLJ'') ',Updated=TO_TIMESTAMP('2014-10-29 15:15:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52403
;

-- Oct 29, 2014 4:18:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_BPartner_ID IS NOT NULL  AND NOT EXISTS (SELECT 1 FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND  GL_JournalLine.GL_JournalLine_ID = LVE_PaymentRequestLine.GL_JournalLine_ID) AND EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = GL_JournalLine.GL_JournalLine_ID AND OpenAmt > 0 AND RequestType= ''GLJ'') ',Updated=TO_TIMESTAMP('2014-10-29 16:18:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52403
;

-- Oct 29, 2014 4:19:06 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_Invoice.DocStatus IN (''CO'', ''CL'') AND C_Invoice.IsSOTrx=''N'' AND NOT EXISTS (SELECT 1 FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND  C_Invoice.C_Invoice_ID = LVE_PaymentRequestLine.C_Invoice_ID) AND EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = C_Invoice.C_Invoice_ID AND OpenAmt > 0 AND RequestType = ''API'')',Updated=TO_TIMESTAMP('2014-10-29 16:19:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52383
;

-- Oct 29, 2014 4:19:30 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_Order.DocStatus IN (''CO'', ''CL'') AND C_Order.IsSOTrx=''N'' AND EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = C_Order.C_Order_ID AND OpenAmt >0 AND RequestType = ''POO'')
AND NOT EXISTS (SELECT 1 FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND  C_Order.C_Order_ID = LVE_PaymentRequestLine.C_Order_ID)
',Updated=TO_TIMESTAMP('2014-10-29 16:19:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52384
;

-- Oct 29, 2014 4:22:56 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='C_Invoice.DocStatus IN (''CO'', ''CL'') AND C_Invoice.IsSOTrx=''N'' AND NOT EXISTS (SELECT 1 FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND  C_Invoice.C_Invoice_ID = LVE_PaymentRequestLine.C_Invoice_ID) AND EXISTS (SELECT 1 FROM LVE_RV_OpenPayment WHERE Record_ID = C_Invoice.C_Invoice_ID AND OpenAmt > 0 AND RequestType = ''API'')
AND C_Invoice.IsPaid = ''N''',Updated=TO_TIMESTAMP('2014-10-29 16:22:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52383
;

