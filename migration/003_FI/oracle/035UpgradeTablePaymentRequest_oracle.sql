-- 9/07/2014 11:27:05 AM VET
-- LVE EFT
UPDATE AD_Table SET AccessLevel='3',Updated=TO_DATE('2014-07-09 11:27:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53822
;

-- 9/07/2014 11:28:48 AM VET
-- LVE EFT
UPDATE AD_Table_Trl SET Name='Solicitud de Pago',Updated=TO_DATE('2014-07-09 11:28:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53822 AND AD_Language='es_MX'
;

-- 9/07/2014 11:29:44 AM VET
-- LVE EFT
UPDATE AD_Column SET FieldLength=60,Updated=TO_DATE('2014-07-09 11:29:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73311
;

-- 9/07/2014 11:30:35 AM VET
-- LVE EFT
UPDATE AD_Table SET Name='Payment Request',Updated=TO_DATE('2014-07-09 11:30:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53822
;

-- 9/07/2014 11:30:35 AM VET
-- LVE EFT
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53822
;

-- 9/07/2014 11:30:52 AM VET
-- LVE EFT
UPDATE AD_Column SET IsUpdateable='N', Name='Payment Request',Updated=TO_DATE('2014-07-09 11:30:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73310
;

-- 9/07/2014 11:30:52 AM VET
-- LVE EFT
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=73310
;

-- 9/07/2014 11:30:52 AM VET
-- LVE EFT
UPDATE AD_Field SET Name='Payment Request', Description=NULL, Help=NULL WHERE AD_Column_ID=73310 AND IsCentrallyMaintained='Y'
;

-- 9/07/2014 11:31:05 AM VET
-- LVE EFT
UPDATE AD_Table SET Name='LVE Payment Request',Updated=TO_DATE('2014-07-09 11:31:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53822
;

-- 9/07/2014 11:31:05 AM VET
-- LVE EFT
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53822
;

-- 9/07/2014 11:32:45 AM VET
-- LVE EFT
UPDATE AD_Column_Trl SET Name='Solicitud de Pago',Updated=TO_DATE('2014-07-09 11:32:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73310 AND AD_Language='es_MX'
;

-- 9/07/2014 11:33:07 AM VET
-- LVE EFT
UPDATE AD_Column_Trl SET Name='Cargo',Updated=TO_DATE('2014-07-09 11:33:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73314 AND AD_Language='es_MX'
;

-- 9/07/2014 11:33:35 AM VET
-- LVE EFT
UPDATE AD_Column_Trl SET Name='Moneda',Updated=TO_DATE('2014-07-09 11:33:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73315 AND AD_Language='es_MX'
;

-- 9/07/2014 11:34:04 AM VET
-- LVE EFT
UPDATE AD_Column_Trl SET Name='F. Documento',Updated=TO_DATE('2014-07-09 11:34:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73312 AND AD_Language='es_MX'
;

-- 9/07/2014 11:34:21 AM VET
-- LVE EFT
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_DATE('2014-07-09 11:34:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73318
;

-- 9/07/2014 11:35:32 AM VET
-- LVE EFT
UPDATE AD_Column_Trl SET Name='Descripción',Updated=TO_DATE('2014-07-09 11:35:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73318 AND AD_Language='es_MX'
;

-- 9/07/2014 11:35:57 AM VET
-- LVE EFT
UPDATE AD_Column_Trl SET Name='Acción en el Documento',Updated=TO_DATE('2014-07-09 11:35:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73320 AND AD_Language='es_MX'
;

-- 9/07/2014 11:36:20 AM VET
-- LVE EFT
UPDATE AD_Column_Trl SET Name='Estado del Documento',Updated=TO_DATE('2014-07-09 11:36:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73319 AND AD_Language='es_MX'
;

-- 9/07/2014 11:40:43 AM VET
-- LVE EFT
UPDATE AD_Column_Trl SET Name='No. del Documento',Updated=TO_DATE('2014-07-09 11:40:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73311 AND AD_Language='es_MX'
;

-- 9/07/2014 11:41:13 AM VET
-- LVE EFT
UPDATE AD_Column_Trl SET Name='Aprobado',Updated=TO_DATE('2014-07-09 11:41:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73322 AND AD_Language='es_MX'
;

-- 9/07/2014 11:41:49 AM VET
-- LVE EFT
UPDATE AD_Column_Trl SET Name='Procesado',Updated=TO_DATE('2014-07-09 11:41:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73321 AND AD_Language='es_MX'
;

-- 9/07/2014 11:44:43 AM VET
-- LVE EFT
UPDATE AD_Column_Trl SET Name='Procesar Ahora',Updated=TO_DATE('2014-07-09 11:44:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73317 AND AD_Language='es_MX'
;

-- 9/07/2014 11:45:21 AM VET
-- LVE EFT
UPDATE AD_Column_Trl SET Name='Tipo de solicitud',Updated=TO_DATE('2014-07-09 11:45:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73313 AND AD_Language='es_MX'
;

-- 9/07/2014 11:47:34 AM VET
-- LVE EFT
UPDATE AD_Column SET FieldLength=3,Updated=TO_DATE('2014-07-09 11:47:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73313
;

