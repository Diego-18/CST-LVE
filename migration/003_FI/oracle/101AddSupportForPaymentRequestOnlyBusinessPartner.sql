-- Oct 14, 2014 3:31:08 PM VET
-- LVE-EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74559,187,0,30,53828,'C_BPartner_ID',TO_TIMESTAMP('2014-10-14 15:31:06','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Business Partner ',0,TO_TIMESTAMP('2014-10-14 15:31:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2014 3:31:08 PM VET
-- LVE-EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74559 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2014 3:31:45 PM VET
-- LVE-EFT
UPDATE AD_Tab SET AD_Column_ID=73414,Updated=TO_TIMESTAMP('2014-10-14 15:31:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53979
;

-- Oct 14, 2014 3:31:50 PM VET
-- LVE-EFT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,74559,74663,0,53979,TO_TIMESTAMP('2014-10-14 15:31:49','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',22,'ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',TO_TIMESTAMP('2014-10-14 15:31:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2014 3:31:50 PM VET
-- LVE-EFT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74663 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2014 3:32:09 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-10-14 15:32:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74663
;

-- Oct 14, 2014 3:32:09 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-10-14 15:32:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74029
;

-- Oct 14, 2014 3:32:09 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-10-14 15:32:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74032
;

-- Oct 14, 2014 3:32:09 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-10-14 15:32:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74135
;

-- Oct 14, 2014 3:38:18 PM VET
-- LVE-EFT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53707,54507,TO_TIMESTAMP('2014-10-14 15:38:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Payment Request Manual',TO_TIMESTAMP('2014-10-14 15:38:18','YYYY-MM-DD HH24:MI:SS'),100,'PRM')
;

-- Oct 14, 2014 3:38:18 PM VET
-- LVE-EFT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54507 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Oct 14, 2014 3:39:24 PM VET
-- LVE-EFT
UPDATE AD_Ref_List_Trl SET Name='Solicitud de Pago Manual',Updated=TO_TIMESTAMP('2014-10-14 15:39:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54507 AND AD_Language='es_MX'
;

-- Oct 14, 2014 3:41:21 PM VET
-- LVE-EFT
UPDATE AD_Field SET DisplayLogic='@RequestType@ ! ''PRM''',Updated=TO_TIMESTAMP('2014-10-14 15:41:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73975
;

-- Oct 14, 2014 3:42:07 PM VET
-- LVE-EFT
UPDATE AD_Field SET DisplayLogic='@RequestType@ = ''PRM''',Updated=TO_TIMESTAMP('2014-10-14 15:42:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74663
;

-- Oct 14, 2014 3:42:36 PM VET
-- LVE-EFT
UPDATE AD_Field SET DisplayLogic='@RequestType@=''GLJ'' & @RequestType@ ! ''PRM''',Updated=TO_TIMESTAMP('2014-10-14 15:42:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74024
;

-- Oct 14, 2014 3:42:40 PM VET
-- LVE-EFT
UPDATE AD_Field SET DisplayLogic='@RequestType@=''POO'' & @RequestType@ ! ''PRM''',Updated=TO_TIMESTAMP('2014-10-14 15:42:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74027
;

-- Oct 14, 2014 3:42:47 PM VET
-- LVE-EFT
UPDATE AD_Field SET DisplayLogic='@RequestType@=''API'' & @RequestType@ ! ''PRM''',Updated=TO_TIMESTAMP('2014-10-14 15:42:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74023
;

-- Oct 14, 2014 3:44:18 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-10-14 15:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74029
;

-- Oct 14, 2014 3:44:18 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-10-14 15:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74663
;

-- Oct 14, 2014 3:44:51 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-10-14 15:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74663
;

-- Oct 14, 2014 3:44:51 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-10-14 15:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74090
;

-- Oct 14, 2014 3:44:51 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-10-14 15:44:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74029
;

-- Oct 14, 2014 3:45:06 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-10-14 15:45:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74663
;

-- Oct 14, 2014 4:50:12 PM VET
-- LVE-EFT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=74090
;

-- Oct 14, 2014 4:50:12 PM VET
-- LVE-EFT
DELETE FROM AD_Field WHERE AD_Field_ID=74090
;

-- Oct 14, 2014 4:50:58 PM VET
-- LVE-EFT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73693
;

-- Oct 14, 2014 4:50:58 PM VET
-- LVE-EFT
DELETE FROM AD_Column WHERE AD_Column_ID=73693
;

-- Oct 14, 2014 4:51:48 PM VET
-- LVE-EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74560,57265,0,19,427,'LVE_PaymentRequestLine_ID',TO_TIMESTAMP('2014-10-14 16:51:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Payment Request Line',0,TO_TIMESTAMP('2014-10-14 16:51:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2014 4:51:48 PM VET
-- LVE-EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74560 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2014 4:57:53 PM VET
-- LVE-EFT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,74560,74664,0,353,TO_TIMESTAMP('2014-10-14 16:57:52','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Payment Request Line',TO_TIMESTAMP('2014-10-14 16:57:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2014 4:57:53 PM VET
-- LVE-EFT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74664 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2014 4:58:05 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-10-14 16:58:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74664
;

-- Oct 14, 2014 4:58:05 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-10-14 16:58:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4421
;

-- Oct 14, 2014 4:58:06 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-10-14 16:58:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10896
;

-- Oct 14, 2014 4:58:06 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-10-14 16:58:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73978
;

-- Oct 14, 2014 4:58:06 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-10-14 16:58:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74091
;

-- Oct 14, 2014 4:58:06 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-10-14 16:58:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10641
;

-- Oct 14, 2014 4:58:06 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-10-14 16:58:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4432
;

-- Oct 14, 2014 4:58:06 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-10-14 16:58:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10640
;

-- Oct 14, 2014 4:58:06 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-10-14 16:58:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4939
;

-- Oct 14, 2014 4:58:06 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-10-14 16:58:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5840
;

-- Oct 14, 2014 4:58:06 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-10-14 16:58:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10616
;

-- Oct 14, 2014 4:58:43 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-10-14 16:58:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74664
;

-- Oct 14, 2014 4:59:25 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-10-14 16:59:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74664
;

-- Oct 14, 2014 5:02:10 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-10-14 17:02:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74024
;

-- Oct 14, 2014 5:02:11 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-10-14 17:02:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74027
;

-- Oct 14, 2014 5:02:11 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-10-14 17:02:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74023
;

-- Oct 14, 2014 5:02:11 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-10-14 17:02:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74663
;

-- Oct 14, 2014 5:02:11 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-10-14 17:02:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74029
;

-- Oct 14, 2014 5:02:11 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-10-14 17:02:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74021
;

-- Oct 14, 2014 5:02:11 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-10-14 17:02:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74032
;

-- Oct 14, 2014 5:02:11 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-10-14 17:02:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74135
;

-- Oct 14, 2014 5:02:19 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-10-14 17:02:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74024
;

-- Oct 14, 2014 5:02:22 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-10-14 17:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74027
;

-- Oct 14, 2014 5:02:24 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-10-14 17:02:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74023
;

-- Oct 14, 2014 5:02:32 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-10-14 17:02:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74663
;

-- Oct 14, 2014 5:02:38 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-10-14 17:02:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74663
;

-- Oct 14, 2014 5:02:46 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-10-14 17:02:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74032
;

-- Oct 14, 2014 5:03:05 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-10-14 17:03:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74135
;

-- Oct 14, 2014 5:07:10 PM VET
-- LVE-EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74561,3063,0,17,53707,427,'RequestType',TO_TIMESTAMP('2014-10-14 17:07:09','YYYY-MM-DD HH24:MI:SS'),100,'U',4,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Request Type',0,TO_TIMESTAMP('2014-10-14 17:07:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2014 5:07:10 PM VET
-- LVE-EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74561 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2014 5:12:33 PM VET
-- LVE-EFT
UPDATE AD_Column SET Callout='org.compiere.model.CalloutPaySelection.setRequestType',Updated=TO_TIMESTAMP('2014-10-14 17:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73324
;

-- Oct 14, 2014 5:12:45 PM VET
-- LVE-EFT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,74561,74665,0,353,TO_TIMESTAMP('2014-10-14 17:12:44','YYYY-MM-DD HH24:MI:SS'),100,4,'U','Y','Y','Y','N','N','N','N','N','Request Type',TO_TIMESTAMP('2014-10-14 17:12:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2014 5:12:45 PM VET
-- LVE-EFT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74665 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2014 5:12:57 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-10-14 17:12:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74665
;

-- Oct 14, 2014 5:12:57 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-10-14 17:12:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4421
;

-- Oct 14, 2014 5:12:57 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-10-14 17:12:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10896
;

-- Oct 14, 2014 5:12:57 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-10-14 17:12:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73978
;

-- Oct 14, 2014 5:12:57 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-10-14 17:12:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74091
;

-- Oct 14, 2014 5:12:57 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-10-14 17:12:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10641
;

-- Oct 14, 2014 5:12:58 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-10-14 17:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4432
;

-- Oct 14, 2014 5:12:58 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-10-14 17:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10640
;

-- Oct 14, 2014 5:12:58 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-10-14 17:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4939
;

-- Oct 14, 2014 5:12:58 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-10-14 17:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5840
;

-- Oct 14, 2014 5:12:58 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-10-14 17:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10616
;

-- Oct 14, 2014 5:13:33 PM VET
-- LVE-EFT
UPDATE AD_Field SET DisplayLogic='@RequestType@=''GLJ'' & @RequestType@ ! ''PRM''',Updated=TO_TIMESTAMP('2014-10-14 17:13:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74091
;

-- Oct 14, 2014 5:13:50 PM VET
-- LVE-EFT
UPDATE AD_Field SET DisplayLogic='@RequestType@=''POO'' & @RequestType@ ! ''PRM''',Updated=TO_TIMESTAMP('2014-10-14 17:13:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73978
;

-- Oct 14, 2014 5:13:55 PM VET
-- LVE-EFT
UPDATE AD_Field SET DisplayLogic='@RequestType@=''API'' & @RequestType@ ! ''PRM''',Updated=TO_TIMESTAMP('2014-10-14 17:13:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4421
;

-- Oct 14, 2014 5:15:19 PM VET
-- LVE-EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74562,187,0,30,427,'C_BPartner_ID',TO_TIMESTAMP('2014-10-14 17:15:18','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Business Partner ',0,TO_TIMESTAMP('2014-10-14 17:15:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 14, 2014 5:15:19 PM VET
-- LVE-EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74562 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 14, 2014 5:15:28 PM VET
-- LVE-EFT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,74562,74666,0,353,TO_TIMESTAMP('2014-10-14 17:15:27','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',22,'ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',TO_TIMESTAMP('2014-10-14 17:15:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2014 5:15:28 PM VET
-- LVE-EFT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74666 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 14, 2014 5:15:57 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-10-14 17:15:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74666
;

-- Oct 14, 2014 5:15:57 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-10-14 17:15:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10896
;

-- Oct 14, 2014 5:15:57 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-10-14 17:15:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10641
;

-- Oct 14, 2014 5:15:57 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-10-14 17:15:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4432
;

-- Oct 14, 2014 5:15:57 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-10-14 17:15:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10640
;

-- Oct 14, 2014 5:15:58 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-10-14 17:15:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4939
;

-- Oct 14, 2014 5:15:58 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-10-14 17:15:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5840
;

-- Oct 14, 2014 5:15:58 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-10-14 17:15:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10616
;

-- Oct 14, 2014 5:16:31 PM VET
-- LVE-EFT
UPDATE AD_Field SET DisplayLogic='@RequestType@ = ''PRM''', IsMandatory='Y',Updated=TO_TIMESTAMP('2014-10-14 17:16:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74666
;

-- Oct 14, 2014 5:16:40 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-10-14 17:16:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74665
;

-- Oct 14, 2014 5:16:44 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-10-14 17:16:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4421
;

-- Oct 14, 2014 5:16:49 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-10-14 17:16:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73978
;

-- Oct 14, 2014 5:16:52 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-10-14 17:16:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74091
;

-- Oct 14, 2014 5:17:01 PM VET
-- LVE-EFT
UPDATE AD_Field SET DisplayLogic='@RequestType@ ! ''PRM''',Updated=TO_TIMESTAMP('2014-10-14 17:17:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10896
;

-- Oct 14, 2014 5:20:25 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-10-14 17:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74021
;

-- Oct 14, 2014 5:20:25 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-10-14 17:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74024
;

-- Oct 14, 2014 5:20:25 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-10-14 17:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74027
;

-- Oct 14, 2014 5:20:25 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-10-14 17:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74023
;

-- Oct 14, 2014 5:20:25 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-10-14 17:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74663
;

-- Oct 14, 2014 5:20:25 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-10-14 17:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74032
;

-- Oct 14, 2014 5:20:25 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-10-14 17:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74029
;

-- Oct 14, 2014 5:20:35 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-10-14 17:20:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74024
;

-- Oct 14, 2014 5:20:37 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-10-14 17:20:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74027
;

-- Oct 14, 2014 5:20:39 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-10-14 17:20:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74023
;

-- Oct 14, 2014 5:20:42 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-10-14 17:20:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74663
;

-- Oct 14, 2014 5:20:45 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-10-14 17:20:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74032
;

-- Oct 14, 2014 5:23:05 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-10-14 17:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4421
;

-- Oct 14, 2014 5:23:06 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-10-14 17:23:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74666
;

-- Oct 14, 2014 5:23:09 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-10-14 17:23:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73978
;

-- Oct 14, 2014 5:23:18 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-10-14 17:23:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10896
;

-- Oct 14, 2014 5:31:45 PM VET
-- LVE-EFT
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52398,'EXISTS( SELECT 1 FROM LVE_PaymentRequest WHERE LVE_PaymentRequest.LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@ AND LVE_PaymentRequestLine.LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@
)',TO_TIMESTAMP('2014-10-14 17:31:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_PaymentRequestLine of LVE_PaymentRequest','S',TO_TIMESTAMP('2014-10-14 17:31:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2014 5:31:54 PM VET
-- LVE-EFT
UPDATE AD_Column SET AD_Val_Rule_ID=52398,Updated=TO_TIMESTAMP('2014-10-14 17:31:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74560
;

-- Oct 14, 2014 5:35:59 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-10-14 17:35:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4421
;

-- Oct 14, 2014 5:36:04 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-10-14 17:36:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73978
;

-- Oct 14, 2014 5:36:08 PM VET
-- LVE-EFT
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-10-14 17:36:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74091
;

-- Oct 14, 2014 5:38:01 PM VET
-- LVE-EFT
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52399,'EXISTS (SELECT 1 FROM LVE_PaymentRequestLine prl WHERE prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@ AND C_BPartner.C_BPartner_ID = prl.C_BPartner_ID)',TO_TIMESTAMP('2014-10-14 17:38:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_BPartner of Payment Request Line','S',TO_TIMESTAMP('2014-10-14 17:38:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 14, 2014 5:38:09 PM VET
-- LVE-EFT
UPDATE AD_Column SET AD_Val_Rule_ID=52399,Updated=TO_TIMESTAMP('2014-10-14 17:38:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74562
;

-- Oct 14, 2014 5:56:35 PM VET
-- LVE-EFT
UPDATE AD_Column SET Callout='org.compiere.model.CalloutPaySelection.setDocument',Updated=TO_TIMESTAMP('2014-10-14 17:56:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74560
;

-- Oct 14, 2014 5:58:08 PM VET
-- LVE-EFT
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_TIMESTAMP('2014-10-14 17:58:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74561
;

-- Oct 14, 2014 8:03:04 PM VET
-- LVE-EFT
UPDATE AD_Column SET MandatoryLogic='@RequestType@=''GLJ''',Updated=TO_TIMESTAMP('2014-10-14 20:03:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73314
;

-- Oct 14, 2014 8:03:29 PM VET
-- LVE-EFT
UPDATE AD_Field SET DisplayLogic='@RequestType@=''PRM'' & @RequestType@=''GLJ''', IsMandatory=NULL,Updated=TO_TIMESTAMP('2014-10-14 20:03:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73963
;

-- Oct 14, 2014 8:03:58 PM VET
-- LVE-EFT
UPDATE AD_Field SET DisplayLogic='@RequestType@=''PRM'' | @RequestType@=''GLJ''',Updated=TO_TIMESTAMP('2014-10-14 20:03:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73963
;

