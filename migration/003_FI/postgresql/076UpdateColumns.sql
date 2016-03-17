-- Jul 22, 2014 9:59:12 AM VET
-- LVE EFT
UPDATE AD_Table SET Name='Payment Request',Updated=TO_TIMESTAMP('2014-07-22 09:59:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53822
;

-- Jul 22, 2014 9:59:12 AM VET
-- LVE EFT
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53822
;

-- Jul 22, 2014 9:59:19 AM VET
-- LVE EFT
UPDATE AD_Table_Trl SET Name='Orden de Pago',Updated=TO_TIMESTAMP('2014-07-22 09:59:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53822 AND AD_Language='es_MX'
;

-- Jul 22, 2014 9:59:21 AM VET
-- LVE EFT
UPDATE AD_Table_Trl SET Name='Orden de Pago',Updated=TO_TIMESTAMP('2014-07-22 09:59:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53822 AND AD_Language='es_VE'
;

-- Jul 22, 2014 9:59:30 AM VET
-- LVE EFT
UPDATE AD_Element_Trl SET Name='Orden de Pago',PrintName='Orden de Pago',Updated=TO_TIMESTAMP('2014-07-22 09:59:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57250 AND AD_Language='es_MX'
;

-- Jul 22, 2014 9:59:33 AM VET
-- LVE EFT
UPDATE AD_Element_Trl SET Name='Orden de Pago',PrintName='Orden de Pago',Updated=TO_TIMESTAMP('2014-07-22 09:59:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57250 AND AD_Language='es_VE'
;

-- Jul 22, 2014 9:59:38 AM VET
-- LVE EFT
UPDATE AD_Element SET PrintName='Payment Request',Updated=TO_TIMESTAMP('2014-07-22 09:59:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57250
;

-- Jul 22, 2014 9:59:38 AM VET
-- LVE EFT
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57250
;

-- Jul 22, 2014 9:59:38 AM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET PrintName='Payment Request', Name='Payment Request' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57250)
;

-- Jul 22, 2014 9:59:54 AM VET
-- LVE EFT
UPDATE AD_Ref_List_Trl SET Name='Factura CxP',Updated=TO_TIMESTAMP('2014-07-22 09:59:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54420 AND AD_Language='es_VE'
;

-- Jul 22, 2014 10:00:01 AM VET
-- LVE EFT
UPDATE AD_Ref_List_Trl SET Name='Diario Contable',Updated=TO_TIMESTAMP('2014-07-22 10:00:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54422 AND AD_Language='es_VE'
;

-- Jul 22, 2014 10:00:07 AM VET
-- LVE EFT
UPDATE AD_Ref_List_Trl SET Name='Orden de Compra',Updated=TO_TIMESTAMP('2014-07-22 10:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54421 AND AD_Language='es_VE'
;

-- Jul 22, 2014 10:00:32 AM VET
-- LVE EFT
UPDATE AD_Reference SET Name='LVE_PaymentRequest RequestType',Updated=TO_TIMESTAMP('2014-07-22 10:00:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53707
;

-- Jul 22, 2014 10:00:32 AM VET
-- LVE EFT
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53707
;

-- Jul 22, 2014 10:00:58 AM VET
-- LVE EFT
UPDATE AD_Table SET Name='Payment Request Line',Updated=TO_TIMESTAMP('2014-07-22 10:00:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53828
;

-- Jul 22, 2014 10:00:58 AM VET
-- LVE EFT
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53828
;

-- Jul 22, 2014 10:01:06 AM VET
-- LVE EFT
UPDATE AD_Table_Trl SET Name='Linea de Orden de Pago',Updated=TO_TIMESTAMP('2014-07-22 10:01:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53828 AND AD_Language='es_VE'
;

-- Jul 22, 2014 10:01:15 AM VET
-- LVE EFT
UPDATE AD_Element SET EntityType='ECA02',Updated=TO_TIMESTAMP('2014-07-22 10:01:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57265
;

-- Jul 22, 2014 10:01:17 AM VET
-- LVE EFT
UPDATE AD_Element_Trl SET Name='Linea de Orden de Pago',PrintName='Linea de Orden de Pago',Updated=TO_TIMESTAMP('2014-07-22 10:01:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57265 AND AD_Language='es_MX'
;

-- Jul 22, 2014 10:01:19 AM VET
-- LVE EFT
UPDATE AD_Element_Trl SET Name='Linea de Orden de Pago',PrintName='Linea de Orden de Pago',Updated=TO_TIMESTAMP('2014-07-22 10:01:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57265 AND AD_Language='es_VE'
;

-- Jul 22, 2014 10:01:32 AM VET
-- LVE EFT
UPDATE AD_Element SET AD_Reference_ID=19, Name='Payment Request Line', PrintName='Payment Request Line',Updated=TO_TIMESTAMP('2014-07-22 10:01:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57265
;

-- Jul 22, 2014 10:01:32 AM VET
-- LVE EFT
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57265
;

-- Jul 22, 2014 10:01:32 AM VET
-- LVE EFT
UPDATE AD_Column SET ColumnName='LVE_PaymentRequestLine_ID', Name='Payment Request Line', Description=NULL, Help=NULL WHERE AD_Element_ID=57265
;

-- Jul 22, 2014 10:01:32 AM VET
-- LVE EFT
UPDATE AD_Process_Para SET ColumnName='LVE_PaymentRequestLine_ID', Name='Payment Request Line', Description=NULL, Help=NULL, AD_Element_ID=57265 WHERE UPPER(ColumnName)='LVE_PAYMENTREQUESTLINE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jul 22, 2014 10:01:32 AM VET
-- LVE EFT
UPDATE AD_Process_Para SET ColumnName='LVE_PaymentRequestLine_ID', Name='Payment Request Line', Description=NULL, Help=NULL WHERE AD_Element_ID=57265 AND IsCentrallyMaintained='Y'
;

-- Jul 22, 2014 10:01:32 AM VET
-- LVE EFT
UPDATE AD_Field SET Name='Payment Request Line', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57265) AND IsCentrallyMaintained='Y'
;

-- Jul 22, 2014 10:01:32 AM VET
-- LVE EFT
UPDATE AD_PrintFormatItem SET PrintName='Payment Request Line', Name='Payment Request Line' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57265)
;

-- Jul 22, 2014 10:02:04 AM VET
-- LVE EFT
UPDATE AD_Window_Trl SET Name='Orden de Pago',Updated=TO_TIMESTAMP('2014-07-22 10:02:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53368 AND AD_Language='es_MX'
;

-- Jul 22, 2014 10:02:06 AM VET
-- LVE EFT
UPDATE AD_Window_Trl SET Name='Orden de Pago',Updated=TO_TIMESTAMP('2014-07-22 10:02:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53368 AND AD_Language='es_VE'
;

-- Jul 22, 2014 10:02:10 AM VET
-- LVE EFT
UPDATE AD_Tab_Trl SET Name='Orden de Pago',Updated=TO_TIMESTAMP('2014-07-22 10:02:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53976 AND AD_Language='es_MX'
;

-- Jul 22, 2014 10:02:12 AM VET
-- LVE EFT
UPDATE AD_Tab_Trl SET Name='Orden de Pago',Updated=TO_TIMESTAMP('2014-07-22 10:02:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53976 AND AD_Language='es_VE'
;

-- Jul 22, 2014 10:02:22 AM VET
-- LVE EFT
UPDATE AD_Tab_Trl SET Name='Linea de la Orden de Pago',Updated=TO_TIMESTAMP('2014-07-22 10:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53979 AND AD_Language='es_VE'
;

-- Jul 22, 2014 10:02:40 AM VET
-- LVE EFT
UPDATE AD_Field SET AD_FieldGroup_ID=101,Updated=TO_TIMESTAMP('2014-07-22 10:02:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73970
;

-- Jul 22, 2014 10:03:45 AM VET
-- LVE EFT
UPDATE AD_Column SET AD_Reference_ID=30,Updated=TO_TIMESTAMP('2014-07-22 10:03:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73324
;

-- Jul 22, 2014 10:03:51 AM VET
-- LVE EFT
UPDATE AD_Column SET AD_Reference_ID=30,Updated=TO_TIMESTAMP('2014-07-22 10:03:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73323
;

-- Jul 22, 2014 10:04:23 AM VET
-- LVE EFT
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52377,TO_TIMESTAMP('2014-07-22 10:04:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_Order of Payment Request','S',TO_TIMESTAMP('2014-07-22 10:04:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 22, 2014 10:04:56 AM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='EXISTS (SELECT C_Order_ID FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = LVE_PaymentRequest_ID)',Updated=TO_TIMESTAMP('2014-07-22 10:04:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52377
;

-- Jul 22, 2014 10:05:11 AM VET
-- LVE EFT
UPDATE AD_Column SET AD_Val_Rule_ID=52377,Updated=TO_TIMESTAMP('2014-07-22 10:05:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73323
;

-- Jul 22, 2014 10:06:08 AM VET
-- LVE EFT
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52378,'EXISTS (SELECT C_Order_ID FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = LVE_PaymentRequest_ID) AND C_Invoice.DocStatus IN (''CO'',''CL'')',TO_TIMESTAMP('2014-07-22 10:06:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_Invoice of Payment Request','S',TO_TIMESTAMP('2014-07-22 10:06:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 22, 2014 10:06:23 AM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='EXISTS (SELECT C_Order_ID FROM LVE_PaymentRequestLine WHERE LVE_PaymentRequest_ID = LVE_PaymentRequest_ID) AND C_Order.DocStatus IN (''CO'',''CL'')',Updated=TO_TIMESTAMP('2014-07-22 10:06:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52377
;

-- Jul 22, 2014 10:06:33 AM VET
-- LVE EFT
UPDATE AD_Column SET AD_Val_Rule_ID=52378,Updated=TO_TIMESTAMP('2014-07-22 10:06:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=5639
;

-- Jul 22, 2014 10:07:22 AM VET
-- LVE EFT
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52379,'LVE_PaymentRequest.DocStatus IN (''CO'',''CL'')',TO_TIMESTAMP('2014-07-22 10:07:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_PaymentRequest Complete or Closed','S',TO_TIMESTAMP('2014-07-22 10:07:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 22, 2014 10:07:32 AM VET
-- LVE EFT
UPDATE AD_Column SET AD_Val_Rule_ID=52379,Updated=TO_TIMESTAMP('2014-07-22 10:07:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73324
;

-- Jul 22, 2014 10:08:09 AM VET
-- LVE EFT
UPDATE AD_Browse SET WhereClause='PaymentRequest = @PaymentRequest@',Updated=TO_TIMESTAMP('2014-07-22 10:08:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50039
;

-- Jul 22, 2014 10:08:24 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2014-07-22 10:08:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53695
;

-- Jul 22, 2014 10:08:43 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET AD_Reference_ID=15,Updated=TO_TIMESTAMP('2014-07-22 10:08:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53691
;

-- Jul 22, 2014 10:09:32 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='N',Updated=TO_TIMESTAMP('2014-07-22 10:09:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53697
;

-- Jul 22, 2014 10:13:29 AM VET
-- LVE EFT
UPDATE AD_Browse SET WhereClause='VW_LVE_RV_OPR.PaymentRequest = @PaymentRequest@',Updated=TO_TIMESTAMP('2014-07-22 10:13:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50039
;

-- Jul 22, 2014 10:13:59 AM VET
-- LVE EFT
UPDATE AD_Browse SET WhereClause='VW_LVE_RV_OPR.PaymentRequest = ''@PaymentRequest@''',Updated=TO_TIMESTAMP('2014-07-22 10:13:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50039
;

-- Jul 22, 2014 10:14:54 AM VET
-- LVE EFT
UPDATE AD_Browse SET WhereClause='VW_LVE_RV_OPR.RequestType = ''@RequestType@''',Updated=TO_TIMESTAMP('2014-07-22 10:14:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50039
;

-- Jul 22, 2014 10:15:14 AM VET
-- LVE EFT
UPDATE AD_Browse SET WhereClause='RequestType = ''@RequestType@''',Updated=TO_TIMESTAMP('2014-07-22 10:15:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50039
;

-- Jul 22, 2014 10:18:18 AM VET
-- LVE EFT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-07-22 10:18:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73964
;

-- Jul 22, 2014 10:18:25 AM VET
-- LVE EFT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-07-22 10:18:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74022
;

-- Jul 22, 2014 10:18:29 AM VET
-- LVE EFT
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2014-07-22 10:18:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73304
;

-- Jul 22, 2014 10:18:36 AM VET
-- LVE EFT
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_TIMESTAMP('2014-07-22 10:18:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73304
;

-- Jul 22, 2014 10:19:05 AM VET
-- LVE EFT
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_TIMESTAMP('2014-07-22 10:19:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73689
;

-- Jul 22, 2014 10:19:18 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-22 10:19:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=713
;

-- Jul 22, 2014 10:19:18 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-07-22 10:19:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10325
;

-- Jul 22, 2014 10:19:18 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-07-22 10:19:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=714
;

-- Jul 22, 2014 10:19:18 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-07-22 10:19:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=903
;

-- Jul 22, 2014 10:19:18 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-07-22 10:19:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=716
;

-- Jul 22, 2014 10:19:18 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-07-22 10:19:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=724
;

-- Jul 22, 2014 10:19:18 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-07-22 10:19:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=725
;

-- Jul 22, 2014 10:19:19 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-07-22 10:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=715
;

-- Jul 22, 2014 10:19:19 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-07-22 10:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=884
;

-- Jul 22, 2014 10:19:19 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-07-22 10:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=727
;

-- Jul 22, 2014 10:19:19 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-07-22 10:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1293
;

-- Jul 22, 2014 10:19:19 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-07-22 10:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=8645
;

-- Jul 22, 2014 10:19:19 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-07-22 10:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=895
;

-- Jul 22, 2014 10:19:19 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-07-22 10:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4724
;

-- Jul 22, 2014 10:19:19 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-07-22 10:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=56249
;

-- Jul 22, 2014 10:19:19 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-07-22 10:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74086
;

-- Jul 22, 2014 10:19:19 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-07-22 10:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=56250
;

-- Jul 22, 2014 10:19:19 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-07-22 10:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=56251
;

-- Jul 22, 2014 10:19:19 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-07-22 10:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=728
;

-- Jul 22, 2014 10:19:19 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-07-22 10:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=729
;

-- Jul 22, 2014 10:19:19 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-07-22 10:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=730
;

-- Jul 22, 2014 10:19:19 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-07-22 10:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=731
;

-- Jul 22, 2014 10:19:20 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-07-22 10:19:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1294
;

-- Jul 22, 2014 10:19:20 AM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-07-22 10:19:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1295
;

