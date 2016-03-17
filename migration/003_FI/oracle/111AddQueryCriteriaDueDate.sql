-- Nov 13, 2014 4:04:07 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2014-11-13 16:04:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53880
;

-- Nov 13, 2014 4:05:25 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsRange='Y',Updated=TO_DATE('2014-11-13 16:05:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53880
;

-- Nov 13, 2014 4:30:22 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET AD_Reference_ID=18,Updated=TO_DATE('2014-11-13 16:30:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53688
;

-- Nov 13, 2014 4:30:24 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET AD_Reference_ID=19,Updated=TO_DATE('2014-11-13 16:30:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53688
;

-- Nov 13, 2014 4:42:48 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74782,469,0,10,53843,'Name',TO_DATE('2014-11-13 16:42:39','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','N','N','Y','N','N','N','Y','N','N','Name',1,TO_DATE('2014-11-13 16:42:39','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 13, 2014 4:42:48 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74782 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 13, 2014 4:43:06 PM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73675,0,52776,50068,50032,'OP_Created','OP.Created',TO_DATE('2014-11-13 16:43:04','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','Created',TO_DATE('2014-11-13 16:43:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 13, 2014 4:43:08 PM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73677,0,52777,50068,50032,'OP_CreatedBy','OP.CreatedBy',TO_DATE('2014-11-13 16:43:06','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','Created By',TO_DATE('2014-11-13 16:43:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 13, 2014 4:43:10 PM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,74782,0,52778,50068,50032,'OP_Name','OP.Name',TO_DATE('2014-11-13 16:43:08','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Name',TO_DATE('2014-11-13 16:43:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 13, 2014 4:43:12 PM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73676,0,52779,50068,50032,'OP_Updated','OP.Updated',TO_DATE('2014-11-13 16:43:10','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','Updated',TO_DATE('2014-11-13 16:43:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 13, 2014 4:43:14 PM VET
-- LVE EFT
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73678,0,52780,50068,50032,'OP_UpdatedBy','OP.UpdatedBy',TO_DATE('2014-11-13 16:43:12','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','Updated By',TO_DATE('2014-11-13 16:43:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 13, 2014 4:44:00 PM VET
-- LVE EFT
DELETE FROM AD_View_Column_Trl WHERE AD_View_Column_ID=52776
;

-- Nov 13, 2014 4:44:00 PM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52776
;

-- Nov 13, 2014 4:44:00 PM VET
-- LVE EFT
DELETE FROM AD_View_Column_Trl WHERE AD_View_Column_ID=52777
;

-- Nov 13, 2014 4:44:00 PM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52777
;

-- Nov 13, 2014 4:44:00 PM VET
-- LVE EFT
DELETE FROM AD_View_Column_Trl WHERE AD_View_Column_ID=52779 
;

-- Nov 13, 2014 4:44:00 PM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52779
;

-- Nov 13, 2014 4:44:01 PM VET
-- LVE EFT
DELETE FROM AD_View_Column_Trl WHERE AD_View_Column_ID=52780
;

-- Nov 13, 2014 4:44:01 PM VET
-- LVE EFT
DELETE FROM AD_View_Column WHERE AD_View_Column_ID=52780
;

-- Nov 13, 2014 4:44:22 PM VET
-- LVE EFT
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53985,50039,0,469,0,10,52778,TO_DATE('2014-11-13 16:44:14','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','N','Y','N','N','N','N','Name',10,TO_DATE('2014-11-13 16:44:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 13, 2014 4:44:22 PM VET
-- LVE EFT
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53985 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Nov 13, 2014 4:44:33 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_DATE('2014-11-13 16:44:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53985
;

-- Nov 13, 2014 4:44:33 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_DATE('2014-11-13 16:44:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53688
;

-- Nov 13, 2014 4:44:33 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_DATE('2014-11-13 16:44:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53692
;

-- Nov 13, 2014 4:44:33 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2014-11-13 16:44:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53689
;

-- Nov 13, 2014 4:44:33 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2014-11-13 16:44:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53691
;

-- Nov 13, 2014 4:44:33 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2014-11-13 16:44:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53880
;

-- Nov 13, 2014 4:44:33 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2014-11-13 16:44:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53695
;

-- Nov 13, 2014 4:44:53 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsDisplayed='N',Updated=TO_DATE('2014-11-13 16:44:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53688
;

-- Nov 13, 2014 4:45:51 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsOrderBy='N', SortNo=0,Updated=TO_DATE('2014-11-13 16:45:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53688
;

-- Nov 13, 2014 4:45:51 PM VET
-- LVE EFT
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=10,Updated=TO_DATE('2014-11-13 16:45:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53985
;

