-- Jun 16, 2014 9:37:58 AM VET
-- LVE HR
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53701,TO_DATE('2014-06-16 09:37:50','YYYY-MM-DD HH24:MI:SS'),100,'Marital Status','ECA02','Y','N','LVE_HR Marital Status',TO_DATE('2014-06-16 09:37:50','YYYY-MM-DD HH24:MI:SS'),100,'L','LL')
;

-- Jun 16, 2014 9:37:58 AM VET
-- LVE HR
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53701 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Jun 16, 2014 9:38:41 AM VET
-- LVE HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53701,54408,TO_DATE('2014-06-16 09:38:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Widower',TO_DATE('2014-06-16 09:38:39','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- Jun 16, 2014 9:38:41 AM VET
-- LVE HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54408 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Jun 16, 2014 9:38:46 AM VET
-- LVE HR
UPDATE AD_Ref_List SET Value='W',Updated=TO_DATE('2014-06-16 09:38:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54408
;

-- Jun 16, 2014 9:38:56 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET Name='Viudo',Updated=TO_DATE('2014-06-16 09:38:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54408 AND AD_Language='es_MX'
;

-- Jun 16, 2014 9:38:58 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET Name='Viudo',Updated=TO_DATE('2014-06-16 09:38:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54408 AND AD_Language='es_VE'
;

-- Jun 16, 2014 9:39:11 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET Name='Viudo(a)',Updated=TO_DATE('2014-06-16 09:39:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54408 AND AD_Language='es_MX'
;

-- Jun 16, 2014 9:39:15 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET Name='Viudo(a)',Updated=TO_DATE('2014-06-16 09:39:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54408 AND AD_Language='es_VE'
;

-- Jun 16, 2014 10:23:18 AM VET
-- LVE HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53701,54409,TO_DATE('2014-06-16 10:23:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Married',TO_DATE('2014-06-16 10:23:16','YYYY-MM-DD HH24:MI:SS'),100,'M')
;

-- Jun 16, 2014 10:23:18 AM VET
-- LVE HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54409 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Jun 16, 2014 10:23:47 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET Name='Casado (a)',Updated=TO_DATE('2014-06-16 10:23:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54409 AND AD_Language='es_MX'
;

-- Jun 16, 2014 10:23:49 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET Name='Casado (a)',Updated=TO_DATE('2014-06-16 10:23:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54409 AND AD_Language='es_VE'
;

-- Jun 16, 2014 10:24:07 AM VET
-- LVE HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53701,54410,TO_DATE('2014-06-16 10:24:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Single',TO_DATE('2014-06-16 10:24:05','YYYY-MM-DD HH24:MI:SS'),100,'S')
;

-- Jun 16, 2014 10:24:07 AM VET
-- LVE HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54410 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Jun 16, 2014 10:24:15 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET Name='Soltero (a)',Updated=TO_DATE('2014-06-16 10:24:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54410 AND AD_Language='es_MX'
;

-- Jun 16, 2014 10:24:17 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET Name='Soltero (a)',Updated=TO_DATE('2014-06-16 10:24:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54410 AND AD_Language='es_VE'
;

-- Jun 16, 2014 10:24:33 AM VET
-- LVE HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53701,54411,TO_DATE('2014-06-16 10:24:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Concubine',TO_DATE('2014-06-16 10:24:32','YYYY-MM-DD HH24:MI:SS'),100,'C')
;

-- Jun 16, 2014 10:24:33 AM VET
-- LVE HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54411 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Jun 16, 2014 10:24:43 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET Name='Concubino (a)',Updated=TO_DATE('2014-06-16 10:24:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54411 AND AD_Language='es_MX'
;

-- Jun 16, 2014 10:24:45 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET Name='Concubino (a)',Updated=TO_DATE('2014-06-16 10:24:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54411 AND AD_Language='es_VE'
;

-- Jun 16, 2014 10:25:04 AM VET
-- LVE HR
UPDATE AD_Reference SET IsOrderByValue='Y', VFormat='L',Updated=TO_DATE('2014-06-16 10:25:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53701
;

-- Jun 16, 2014 10:26:20 AM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73110,56692,0,17,53701,291,'MaritalStatus',TO_DATE('2014-06-16 10:26:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Marital Status',0,TO_DATE('2014-06-16 10:26:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 16, 2014 10:26:20 AM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73110 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 16, 2014 10:26:24 AM VET
-- LVE HR
ALTER TABLE C_BPartner ADD MaritalStatus CHAR(1) DEFAULT NULL 
;

-- Jun 16, 2014 10:26:40 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73110,73693,0,53104,TO_DATE('2014-06-16 10:26:33','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Marital Status',TO_DATE('2014-06-16 10:26:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 16, 2014 10:26:40 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73693 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 16, 2014 10:28:34 AM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_DATE('2014-06-16 10:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73693
;

-- Jun 16, 2014 10:28:59 AM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-06-16 10:28:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73693
;

-- Jun 16, 2014 10:40:25 AM VET
-- LVE HR
UPDATE AD_Process_Para SET DefaultValue='-1', IsMandatory='Y',Updated=TO_DATE('2014-06-16 10:40:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54820
;

