-- Oct 8, 2014 3:39:36 PM VET
-- LVE EFT
UPDATE AD_Browse SET WhereClause='OpenAmt > 0 AND RequestType = ''@RequestType@'' AND IsSOTrx = ''N'' 
AND NOT EXISTS (SELECT 1  FROM LVE_PaymentRequest pr  INNER JOIN LVE_PaymentRequestLine prl ON (prl.LVE_PaymentRequest_ID = pr.LVE_PaymentRequest_ID)	WHERE prl.C_Order_ID = Record_ID AND pr.RequestType = op.RequestType AND pr.LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@)
AND NOT EXISTS ( SELECT 1 FROM LVE_PaymentRequest pr INNER JOIN LVE_PaymentRequestLine prl ON (prl.LVE_PaymentRequest_ID = pr.LVE_PaymentRequest_ID) WHERE		prl.C_Invoice_ID = Record_ID 	AND pr.RequestType = op.RequestType AND pr.LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@)
AND NOT EXISTS ( SELECT 1 FROM LVE_PaymentRequest pr	INNER JOIN LVE_PaymentRequestLine prl ON (prl.LVE_PaymentRequest_ID = pr.LVE_PaymentRequest_ID)	WHERE 		prl.GL_JournalLine_ID = Record_ID AND pr.RequestType = op.RequestType AND pr.LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ )',Updated=TO_TIMESTAMP('2014-10-08 15:39:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50039
;

-- Oct 8, 2014 3:43:49 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74526,2000,0,16,53843,'DueDate',TO_TIMESTAMP('2014-10-08 15:43:42','YYYY-MM-DD HH24:MI:SS'),100,'Date when the payment is due','ECA02',35,'Date when the payment is due without deductions or discount','Y','N','N','N','N','N','N','N','N','N','Due Date',TO_TIMESTAMP('2014-10-08 15:43:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 8, 2014 3:43:49 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74526 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 8, 2014 3:44:39 PM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73675,0,52702,50068,50032,'OP_Created','OP.Created',TO_TIMESTAMP('2014-10-08 15:44:32','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','Created',TO_TIMESTAMP('2014-10-08 15:44:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 8, 2014 3:44:40 PM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73677,0,52703,50068,50032,'OP_CreatedBy','OP.CreatedBy',TO_TIMESTAMP('2014-10-08 15:44:39','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','Created By',TO_TIMESTAMP('2014-10-08 15:44:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 8, 2014 3:44:41 PM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74526,0,52704,50068,50032,'OP_DueDate','OP.DueDate',TO_TIMESTAMP('2014-10-08 15:44:40','YYYY-MM-DD HH24:MI:SS'),100,'Date when the payment is due','ECA02','Date when the payment is due without deductions or discount','Y','Due Date',TO_TIMESTAMP('2014-10-08 15:44:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 8, 2014 3:44:42 PM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73674,0,52705,50068,50032,'OP_IsActive','OP.IsActive',TO_TIMESTAMP('2014-10-08 15:44:41','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Active',TO_TIMESTAMP('2014-10-08 15:44:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 8, 2014 3:44:43 PM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73676,0,52706,50068,50032,'OP_Updated','OP.Updated',TO_TIMESTAMP('2014-10-08 15:44:42','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','Updated',TO_TIMESTAMP('2014-10-08 15:44:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 8, 2014 3:44:44 PM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73678,0,52707,50068,50032,'OP_UpdatedBy','OP.UpdatedBy',TO_TIMESTAMP('2014-10-08 15:44:43','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','Updated By',TO_TIMESTAMP('2014-10-08 15:44:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 8, 2014 3:45:50 PM VET
-- LVE EFT
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53878,50039,0,245,0,16,52702,TO_TIMESTAMP('2014-10-08 15:45:44','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','N','N','N','N','N','N','Created',10,TO_TIMESTAMP('2014-10-08 15:45:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 8, 2014 3:45:50 PM VET
-- LVE EFT
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53878 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 8, 2014 3:45:51 PM VET
-- LVE EFT
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53879,50039,0,246,0,19,110,52703,TO_TIMESTAMP('2014-10-08 15:45:50','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','N','N','N','N','N','N','Created By',11,TO_TIMESTAMP('2014-10-08 15:45:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 8, 2014 3:45:51 PM VET
-- LVE EFT
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53879 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 8, 2014 3:45:53 PM VET
-- LVE EFT
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53880,50039,0,2000,0,16,52704,TO_TIMESTAMP('2014-10-08 15:45:51','YYYY-MM-DD HH24:MI:SS'),100,'Date when the payment is due','ECA02','Date when the payment is due without deductions or discount','Y','N','N','N','N','N','N','Due Date',12,TO_TIMESTAMP('2014-10-08 15:45:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 8, 2014 3:45:53 PM VET
-- LVE EFT
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53880 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 8, 2014 3:45:54 PM VET
-- LVE EFT
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53881,50039,0,348,0,20,52705,TO_TIMESTAMP('2014-10-08 15:45:53','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','N','N','Active',13,TO_TIMESTAMP('2014-10-08 15:45:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 8, 2014 3:45:54 PM VET
-- LVE EFT
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53881 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 8, 2014 3:45:55 PM VET
-- LVE EFT
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53882,50039,0,607,0,16,52706,TO_TIMESTAMP('2014-10-08 15:45:54','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','N','N','N','N','N','N','Updated',14,TO_TIMESTAMP('2014-10-08 15:45:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 8, 2014 3:45:55 PM VET
-- LVE EFT
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53882 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 8, 2014 3:45:56 PM VET
-- LVE EFT
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53883,50039,0,608,0,19,110,52707,TO_TIMESTAMP('2014-10-08 15:45:55','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','N','N','N','N','N','N','Updated By',15,TO_TIMESTAMP('2014-10-08 15:45:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 8, 2014 3:45:56 PM VET
-- LVE EFT
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53883 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Oct 8, 2014 3:46:17 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-10-08 15:46:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53878
;

-- Oct 8, 2014 3:46:17 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-10-08 15:46:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53879
;

-- Oct 8, 2014 3:46:17 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-10-08 15:46:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53881
;

-- Oct 8, 2014 3:46:17 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-10-08 15:46:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53697
;

-- Oct 8, 2014 3:46:17 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-10-08 15:46:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53882
;

-- Oct 8, 2014 3:46:17 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-10-08 15:46:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53883
;

-- Oct 8, 2014 3:46:17 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-10-08 15:46:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53688
;

-- Oct 8, 2014 3:46:18 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-10-08 15:46:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53692
;

-- Oct 8, 2014 3:46:18 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-10-08 15:46:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53689
;

-- Oct 8, 2014 3:46:18 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-10-08 15:46:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53691
;

-- Oct 8, 2014 3:46:18 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-10-08 15:46:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53880
;

-- Oct 8, 2014 3:51:48 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-10-08 15:51:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53882
;

-- Oct 8, 2014 3:51:48 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-10-08 15:51:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53883
;

-- Oct 8, 2014 3:51:48 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-10-08 15:51:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53879
;

-- Oct 8, 2014 3:51:49 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-10-08 15:51:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53878
;

-- Oct 8, 2014 3:52:02 PM VET
-- LVE EFT
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=53882
;

-- Oct 8, 2014 3:52:02 PM VET
-- LVE EFT
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=53882
;

-- Oct 8, 2014 3:52:04 PM VET
-- LVE EFT
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=53883
;

-- Oct 8, 2014 3:52:04 PM VET
-- LVE EFT
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=53883
;

-- Oct 8, 2014 3:52:05 PM VET
-- LVE EFT
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=53879
;

-- Oct 8, 2014 3:52:05 PM VET
-- LVE EFT
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=53879
;

-- Oct 8, 2014 3:52:06 PM VET
-- LVE EFT
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=53878
;

-- Oct 8, 2014 3:52:06 PM VET
-- LVE EFT
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=53878
;

-- Oct 8, 2014 3:52:23 PM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52702
;

-- Oct 8, 2014 3:52:23 PM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52703
;

-- Oct 8, 2014 3:52:23 PM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52706
;

-- Oct 8, 2014 3:52:23 PM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52707
;

-- Oct 8, 2014 3:56:18 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-10-08 15:56:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53881
;

-- Oct 8, 2014 3:56:25 PM VET
-- LVE EFT
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=53881
;

-- Oct 8, 2014 3:56:25 PM VET
-- LVE EFT
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=53881
;

-- Oct 8, 2014 3:56:40 PM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52705
;

-- Oct 8, 2014 3:56:55 PM VET
-- LVE EFT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73674
;

-- Oct 8, 2014 3:56:55 PM VET
-- LVE EFT
DELETE FROM AD_Column WHERE AD_Column_ID=73674
;

-- Oct 8, 2014 4:00:53 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET AD_Reference_ID=15,Updated=TO_TIMESTAMP('2014-10-08 16:00:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53880
;

