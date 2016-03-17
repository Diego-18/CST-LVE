-- Nov 24, 2014 9:07:04 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET AD_Reference_ID=30,Updated=TO_TIMESTAMP('2014-11-24 09:07:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53688
;

-- Nov 24, 2014 9:15:58 AM VET
-- LVE EFT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57559,0,12,'PrepaidAmt',TO_TIMESTAMP('2014-11-24 09:15:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Prepaid Amount','Prepaid Amount',TO_TIMESTAMP('2014-11-24 09:15:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 9:15:59 AM VET
-- LVE EFT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57559 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Nov 24, 2014 9:16:11 AM VET
-- LVE EFT
UPDATE AD_Element_Trl SET Name='Monto Prepagado',PrintName='Monto Prepagado',Updated=TO_TIMESTAMP('2014-11-24 09:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57559 AND AD_Language='es_MX'
;

-- Nov 24, 2014 9:19:09 AM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74829,57559,0,12,53843,'PrepaidAmt',TO_TIMESTAMP('2014-11-24 09:19:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Prepaid Amount',0,TO_TIMESTAMP('2014-11-24 09:19:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 24, 2014 9:19:09 AM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74829 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 24, 2014 9:19:32 AM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73675,0,52781,50068,50032,'OP_Created','OP.Created',TO_TIMESTAMP('2014-11-24 09:19:29','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','Created',TO_TIMESTAMP('2014-11-24 09:19:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 9:19:34 AM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73677,0,52782,50068,50032,'OP_CreatedBy','OP.CreatedBy',TO_TIMESTAMP('2014-11-24 09:19:32','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','Created By',TO_TIMESTAMP('2014-11-24 09:19:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 9:19:37 AM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,74829,0,52783,50068,50032,'OP_PrepaidAmt','OP.PrepaidAmt',TO_TIMESTAMP('2014-11-24 09:19:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Prepaid Amount',TO_TIMESTAMP('2014-11-24 09:19:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 9:19:39 AM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73676,0,52784,50068,50032,'OP_Updated','OP.Updated',TO_TIMESTAMP('2014-11-24 09:19:37','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','Updated',TO_TIMESTAMP('2014-11-24 09:19:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 9:19:47 AM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73678,0,52785,50068,50032,'OP_UpdatedBy','OP.UpdatedBy',TO_TIMESTAMP('2014-11-24 09:19:39','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','Updated By',TO_TIMESTAMP('2014-11-24 09:19:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 9:20:19 AM VET
-- LVE EFT
DELETE FROM AD_View_Column_Trl WHERE AD_View_Column_ID=52781
;

-- Nov 24, 2014 9:20:19 AM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52781
;

-- Nov 24, 2014 9:20:20 AM VET
-- LVE EFT
DELETE FROM AD_View_Column_Trl WHERE AD_View_Column_ID=52782
;

-- Nov 24, 2014 9:20:20 AM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52782
;

-- Nov 24, 2014 9:20:26 AM VET
-- LVE EFT
DELETE FROM AD_View_Column_Trl WHERE AD_View_Column_ID=52784
;

-- Nov 24, 2014 9:20:26 AM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52784
;

-- Nov 24, 2014 9:20:26 AM VET
-- LVE EFT
DELETE FROM AD_View_Column_Trl WHERE AD_View_Column_ID=52785
;

-- Nov 24, 2014 9:20:26 AM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52785
;

-- Nov 24, 2014 9:20:46 AM VET
-- LVE EFT
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53986,50039,0,57559,0,12,52783,TO_TIMESTAMP('2014-11-24 09:20:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Prepaid Amount',10,TO_TIMESTAMP('2014-11-24 09:20:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 9:20:46 AM VET
-- LVE EFT
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53986 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 24, 2014 9:21:08 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-11-24 09:21:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53688
;

-- Nov 24, 2014 9:21:08 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-11-24 09:21:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53692
;

-- Nov 24, 2014 9:21:08 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-11-24 09:21:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53689
;

-- Nov 24, 2014 9:21:09 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-11-24 09:21:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53691
;

-- Nov 24, 2014 9:21:09 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-11-24 09:21:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53880
;

-- Nov 24, 2014 9:21:09 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-11-24 09:21:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53695
;

-- Nov 24, 2014 9:21:09 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-11-24 09:21:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53986
;

-- Nov 24, 2014 9:37:51 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-11-24 09:37:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53986
;

-- Nov 24, 2014 9:37:51 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-11-24 09:37:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53695
;

-- Nov 24, 2014 11:06:13 AM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74830,2677,0,12,53843,'AllocatedAmt',TO_TIMESTAMP('2014-11-24 11:06:09','YYYY-MM-DD HH24:MI:SS'),100,'Amount allocated to this document','ECA02',22,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Allocated Amountt',0,TO_TIMESTAMP('2014-11-24 11:06:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 24, 2014 11:06:13 AM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74830 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 24, 2014 11:06:31 AM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,74830,0,52786,50068,50032,'OP_AllocatedAmt','OP.AllocatedAmt',TO_TIMESTAMP('2014-11-24 11:06:29','YYYY-MM-DD HH24:MI:SS'),100,'Amount allocated to this document','ECA02','Y','Allocated Amountt',TO_TIMESTAMP('2014-11-24 11:06:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 11:06:37 AM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73675,0,52787,50068,50032,'OP_Created','OP.Created',TO_TIMESTAMP('2014-11-24 11:06:31','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','Created',TO_TIMESTAMP('2014-11-24 11:06:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 11:06:39 AM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73677,0,52788,50068,50032,'OP_CreatedBy','OP.CreatedBy',TO_TIMESTAMP('2014-11-24 11:06:37','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','Created By',TO_TIMESTAMP('2014-11-24 11:06:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 11:06:41 AM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73676,0,52789,50068,50032,'OP_Updated','OP.Updated',TO_TIMESTAMP('2014-11-24 11:06:39','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','Updated',TO_TIMESTAMP('2014-11-24 11:06:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 11:06:50 AM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73678,0,52790,50068,50032,'OP_UpdatedBy','OP.UpdatedBy',TO_TIMESTAMP('2014-11-24 11:06:41','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','Updated By',TO_TIMESTAMP('2014-11-24 11:06:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 11:07:12 AM VET
-- LVE EFT
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53987,50039,0,2677,0,12,52786,TO_TIMESTAMP('2014-11-24 11:07:09','YYYY-MM-DD HH24:MI:SS'),100,'Amount allocated to this document','ECA02','Y','N','N','N','N','N','N','Allocated Amountt',10,TO_TIMESTAMP('2014-11-24 11:07:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 11:07:12 AM VET
-- LVE EFT
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53987 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 24, 2014 11:07:15 AM VET
-- LVE EFT
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53988,50039,0,245,0,16,52787,TO_TIMESTAMP('2014-11-24 11:07:12','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','N','N','N','N','N','N','Created',11,TO_TIMESTAMP('2014-11-24 11:07:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 11:07:15 AM VET
-- LVE EFT
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53988 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 24, 2014 11:07:18 AM VET
-- LVE EFT
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53989,50039,0,246,0,19,110,52788,TO_TIMESTAMP('2014-11-24 11:07:15','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','N','N','N','N','N','N','Created By',12,TO_TIMESTAMP('2014-11-24 11:07:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 11:07:18 AM VET
-- LVE EFT
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53989 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 24, 2014 11:07:26 AM VET
-- LVE EFT
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53990,50039,0,607,0,16,52789,TO_TIMESTAMP('2014-11-24 11:07:18','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','N','N','N','N','N','N','Updated',13,TO_TIMESTAMP('2014-11-24 11:07:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 11:07:26 AM VET
-- LVE EFT
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53990 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 24, 2014 11:07:29 AM VET
-- LVE EFT
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53991,50039,0,608,0,19,110,52790,TO_TIMESTAMP('2014-11-24 11:07:26','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','N','N','N','N','N','N','Updated By',14,TO_TIMESTAMP('2014-11-24 11:07:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 24, 2014 11:07:29 AM VET
-- LVE EFT
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53991 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 24, 2014 11:07:42 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-11-24 11:07:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53989
;

-- Nov 24, 2014 11:07:42 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-11-24 11:07:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53988
;

-- Nov 24, 2014 11:07:42 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-11-24 11:07:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53991
;

-- Nov 24, 2014 11:07:42 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2014-11-24 11:07:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53990
;

-- Nov 24, 2014 11:07:42 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-11-24 11:07:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53987
;

-- Nov 24, 2014 11:07:49 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-11-24 11:07:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53987
;

-- Nov 24, 2014 11:07:49 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-11-24 11:07:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53695
;

-- Nov 24, 2014 11:09:45 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-11-24 11:09:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53990
;

-- Nov 24, 2014 11:09:45 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-11-24 11:09:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53991
;

-- Nov 24, 2014 11:09:45 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-11-24 11:09:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53988
;

-- Nov 24, 2014 11:09:45 AM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-11-24 11:09:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53989
;

-- Nov 24, 2014 11:09:57 AM VET
-- LVE EFT
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=53990
;

-- Nov 24, 2014 11:09:57 AM VET
-- LVE EFT
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=53990
;

-- Nov 24, 2014 11:09:58 AM VET
-- LVE EFT
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=53991
;

-- Nov 24, 2014 11:09:58 AM VET
-- LVE EFT
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=53991
;

-- Nov 24, 2014 11:09:58 AM VET
-- LVE EFT
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=53988
;

-- Nov 24, 2014 11:09:58 AM VET
-- LVE EFT
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=53988
;

-- Nov 24, 2014 11:09:59 AM VET
-- LVE EFT
DELETE FROM AD_Browse_Field_Trl WHERE AD_Browse_Field_ID=53989
;

-- Nov 24, 2014 11:09:59 AM VET
-- LVE EFT
DELETE FROM AD_Browse_Field WHERE AD_Browse_Field_ID=53989
;

-- Nov 24, 2014 11:10:11 AM VET
-- LVE EFT
--DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73676
--;

-- Nov 24, 2014 11:10:11 AM VET
-- LVE EFT
--DELETE FROM AD_Column WHERE AD_Column_ID=73676
--;

-- Nov 24, 2014 11:10:15 AM VET
-- LVE EFT
--DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73678
--;

-- Nov 24, 2014 11:10:15 AM VET
-- LVE EFT
--DELETE FROM AD_Column WHERE AD_Column_ID=73678
--;

-- Nov 24, 2014 11:10:32 AM VET
-- LVE EFT
DELETE FROM AD_View_Column_Trl WHERE AD_View_Column_ID=52787
;

-- Nov 24, 2014 11:10:32 AM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52787
;

-- Nov 24, 2014 11:10:32 AM VET
-- LVE EFT
DELETE FROM AD_View_Column_Trl WHERE AD_View_Column_ID=52788
;

-- Nov 24, 2014 11:10:32 AM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52788
;

-- Nov 24, 2014 11:10:32 AM VET
-- LVE EFT
DELETE FROM AD_View_Column_Trl WHERE AD_View_Column_ID=52789
;

-- Nov 24, 2014 11:10:32 AM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52789
;

-- Nov 24, 2014 11:10:33 AM VET
-- LVE EFT
DELETE FROM AD_View_Column_Trl WHERE AD_View_Column_ID=52790
;

-- Nov 24, 2014 11:10:33 AM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52790
;

-- Nov 24, 2014 2:14:21 PM VET
-- LVE EFT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73676
;

-- Nov 24, 2014 2:14:21 PM VET
-- LVE EFT
DELETE FROM AD_Column WHERE AD_Column_ID=73676
;

-- Nov 24, 2014 2:14:22 PM VET
-- LVE EFT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73678
;

-- Nov 24, 2014 2:14:22 PM VET
-- LVE EFT
DELETE FROM AD_Column WHERE AD_Column_ID=73678
;

-- Nov 24, 2014 2:14:27 PM VET
-- LVE EFT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73675
;

-- Nov 24, 2014 2:14:27 PM VET
-- LVE EFT
DELETE FROM AD_Column WHERE AD_Column_ID=73675
;

-- Nov 24, 2014 2:14:28 PM VET
-- LVE EFT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73677
;

-- Nov 24, 2014 2:14:28 PM VET
-- LVE EFT
DELETE FROM AD_Column WHERE AD_Column_ID=73677
;

-- Nov 24, 2014 2:27:17 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2014-11-24 14:27:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53987
;

-- Nov 24, 2014 2:27:22 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsIdentifier='N',Updated=TO_TIMESTAMP('2014-11-24 14:27:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53987
;

-- Nov 24, 2014 2:27:26 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2014-11-24 14:27:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53986
;

