-- Jul 22, 2014 10:28:47 AM VET
-- LVE EFT
INSERT INTO AD_UserQuery (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_User_ID,AD_UserQuery_ID,Created,CreatedBy,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,245,284,100,50014,TO_TIMESTAMP('2014-07-22 10:28:40','YYYY-MM-DD HH24:MI:SS'),100,'Y','** Last Query **',TO_TIMESTAMP('2014-07-22 10:28:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 22, 2014 10:29:30 AM VET
-- LVE EFT
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-07-22 10:29:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73963
;

-- Jul 22, 2014 10:29:50 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-07-22 10:29:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53688
;

-- Jul 22, 2014 10:29:53 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_TIMESTAMP('2014-07-22 10:29:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53692
;

-- Jul 22, 2014 10:30:00 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsQueryCriteria='Y', IsRange='Y',Updated=TO_TIMESTAMP('2014-07-22 10:30:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53691
;

-- Jul 22, 2014 10:30:33 AM VET
-- LVE EFT
UPDATE AD_Process SET Name='Create From', Value='LVE_PaymentRequest CreateFrom',Updated=TO_TIMESTAMP('2014-07-22 10:30:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53663
;

-- Jul 22, 2014 10:30:33 AM VET
-- LVE EFT
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53663
;

-- Jul 22, 2014 10:30:43 AM VET
-- LVE EFT
UPDATE AD_Process_Trl SET Name='Crear Desde',Updated=TO_TIMESTAMP('2014-07-22 10:30:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53663 AND AD_Language='es_MX'
;

-- Jul 22, 2014 10:30:45 AM VET
-- LVE EFT
UPDATE AD_Process_Trl SET Name='Crear Desde',Updated=TO_TIMESTAMP('2014-07-22 10:30:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53663 AND AD_Language='es_VE'
;

