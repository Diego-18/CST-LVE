-- 11/01/2014 10:22:51 AM VET
-- CGI Anca
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2014-01-11 10:22:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013264 WHERE AD_Column_ID=5313
;

-- 11/01/2014 10:22:54 AM VET
-- CGI Anca
ALTER TABLE C_PaymentBatch MODIFY C_PaymentProcessor_ID NUMBER(10) DEFAULT NULL 
;

