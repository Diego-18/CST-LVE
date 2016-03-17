-- 9/07/2014 04:47:23 PM VET
-- LVE EFT
UPDATE AD_Element SET Name='Payment Request',Updated=TO_TIMESTAMP('2014-07-09 16:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57250
;

-- 9/07/2014 04:47:23 PM VET
-- LVE EFT
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57250
;

-- 9/07/2014 04:47:23 PM VET
-- LVE EFT
UPDATE AD_Column SET ColumnName='LVE_PaymentRequest_ID', Name='Payment Request', Description=NULL, Help=NULL WHERE AD_Element_ID=57250
;

-- 9/07/2014 04:47:23 PM VET
-- LVE EFT
UPDATE AD_Process_Para SET ColumnName='LVE_PaymentRequest_ID', Name='Payment Request', Description=NULL, Help=NULL, AD_Element_ID=57250 WHERE UPPER(ColumnName)='LVE_PAYMENTREQUEST_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 9/07/2014 04:47:23 PM VET
-- LVE EFT
UPDATE AD_Process_Para SET ColumnName='LVE_PaymentRequest_ID', Name='Payment Request', Description=NULL, Help=NULL WHERE AD_Element_ID=57250 AND IsCentrallyMaintained='Y'
;

-- 9/07/2014 04:47:23 PM VET
-- LVE EFT
UPDATE AD_Field SET Name='Payment Request', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57250) AND IsCentrallyMaintained='Y'
;

-- 9/07/2014 04:47:23 PM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET PrintName='LVE Payment Request ID', Name='Payment Request' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57250)
;

-- 9/07/2014 04:47:47 PM VET
-- LVE EFT
UPDATE AD_Element_Trl SET Name='Solicitud de Pago',PrintName='Solicitud de Pago',Updated=TO_TIMESTAMP('2014-07-09 16:47:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57250 AND AD_Language='es_MX'
;

