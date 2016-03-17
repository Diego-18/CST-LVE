-- 12/08/2014 09:46:25 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2014-08-12 21:46:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54874
;

-- 12/08/2014 09:47:46 PM CEST
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74209,2002,0,28,53248,'IsValid',TO_TIMESTAMP('2014-08-12 21:47:44','YYYY-MM-DD HH24:MI:SS'),100,'Y','Element is valid','EE02',1,'The element passed the validation check','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Valid',0,TO_TIMESTAMP('2014-08-12 21:47:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2014 09:47:46 PM CEST
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74209 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2014 09:48:55 PM CEST
-- LVE-HR
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53716,TO_TIMESTAMP('2014-08-12 21:48:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','HR_PaySelection IsValid',TO_TIMESTAMP('2014-08-12 21:48:54','YYYY-MM-DD HH24:MI:SS'),100,'L','L')
;

-- 12/08/2014 09:48:55 PM CEST
-- LVE-HR
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53716 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 12/08/2014 09:49:17 PM CEST
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53716,54446,TO_TIMESTAMP('2014-08-12 21:49:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Is Valid',TO_TIMESTAMP('2014-08-12 21:49:17','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;

-- 12/08/2014 09:49:17 PM CEST
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54446 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 12/08/2014 09:49:32 PM CEST
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Válido',Updated=TO_TIMESTAMP('2014-08-12 21:49:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54446 AND AD_Language='es_MX'
;

-- 12/08/2014 09:49:52 PM CEST
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53716,54447,TO_TIMESTAMP('2014-08-12 21:49:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Is Not Valid',TO_TIMESTAMP('2014-08-12 21:49:51','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

-- 12/08/2014 09:49:52 PM CEST
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54447 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 12/08/2014 09:49:58 PM CEST
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='No Válido',Updated=TO_TIMESTAMP('2014-08-12 21:49:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54447 AND AD_Language='es_MX'
;

-- 12/08/2014 09:50:14 PM CEST
-- LVE-HR
UPDATE AD_Column SET AD_Reference_Value_ID=53716,Updated=TO_TIMESTAMP('2014-08-12 21:50:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74209
;

-- 12/08/2014 09:51:12 PM CEST
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53692,'N',TO_TIMESTAMP('2014-08-12 21:51:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Validate PaySelection',0,0,TO_TIMESTAMP('2014-08-12 21:51:11','YYYY-MM-DD HH24:MI:SS'),100,'prc_HR_ValidatePaySelection')
;

-- 12/08/2014 09:51:12 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53692 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 12/08/2014 09:51:12 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53692,0,TO_TIMESTAMP('2014-08-12 21:51:12','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-08-12 21:51:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2014 09:51:12 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53692,102,TO_TIMESTAMP('2014-08-12 21:51:12','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-08-12 21:51:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2014 09:51:12 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53692,103,TO_TIMESTAMP('2014-08-12 21:51:12','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-08-12 21:51:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2014 09:51:12 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53692,50001,TO_TIMESTAMP('2014-08-12 21:51:12','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-08-12 21:51:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2014 09:51:12 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53692,50002,TO_TIMESTAMP('2014-08-12 21:51:12','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-08-12 21:51:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2014 09:52:00 PM CEST
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Anular Selección de Pago',Description='Anula la Selección de Pago',Updated=TO_TIMESTAMP('2014-08-12 21:52:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53692 AND AD_Language='es_MX'
;

-- 12/08/2014 09:53:31 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,2002,0,53692,54927,17,53716,'IsValid',TO_TIMESTAMP('2014-08-12 21:53:30','YYYY-MM-DD HH24:MI:SS'),100,'Element is valid','ECA02',1,'The element passed the validation check','Y','Y','Y','N','Is Valid',10,TO_TIMESTAMP('2014-08-12 21:53:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2014 09:53:31 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54927 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 12/08/2014 09:54:05 PM CEST
-- LVE-HR
UPDATE AD_Column SET AD_Process_ID=53692,Updated=TO_TIMESTAMP('2014-08-12 21:54:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74209
;

-- 12/08/2014 09:54:34 PM CEST
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,74209,74299,0,53293,TO_TIMESTAMP('2014-08-12 21:54:33','YYYY-MM-DD HH24:MI:SS'),100,'Element is valid',0,'ECA02','The element passed the validation check','N','Y','Y','Y','N','N','N','N','N','Valid',0,130,0,TO_TIMESTAMP('2014-08-12 21:54:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2014 09:54:34 PM CEST
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74299 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2014 09:55:43 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-08-12 21:55:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74299
;

-- 12/08/2014 09:55:43 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-08-12 21:55:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=58475
;

-- 12/08/2014 09:55:43 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-08-12 21:55:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=58476
;

-- 12/08/2014 09:55:43 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-08-12 21:55:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=58477
;

-- 12/08/2014 09:55:43 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-08-12 21:55:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=58478
;

-- 12/08/2014 09:55:43 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-08-12 21:55:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=58479
;

-- 12/08/2014 09:55:43 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-08-12 21:55:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=58480
;

-- 12/08/2014 09:55:53 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-08-12 21:55:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74299
;

-- 12/08/2014 09:56:36 PM CEST
-- LVE-HR
UPDATE AD_Column SET ReadOnlyLogic='@IsValid@=''N''',Updated=TO_TIMESTAMP('2014-08-12 21:56:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74209
;

-- 12/08/2014 09:57:20 PM CEST
-- LVE-HR
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2014-08-12 21:57:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74209
;

-- 12/08/2014 10:02:32 PM CEST
-- LVE-HR
UPDATE AD_Val_Rule SET Code='HR_Process.HR_Payroll_ID = @HR_Payroll_ID@ AND HR_Process.DocStatus IN(''CO'',''CL'') AND HR_Process.HR_Process_ID IN(SELECT HR_Process_ID FROM HR_Movement WHERE HR_Concept_ID IN(SELECT HR_Concept_ID FROM HR_Concept WHERE IsPaid=''Y'') 
AND NOT EXISTS (SELECT 1 FROM HR_PaySelection s INNER JOIN HR_PaySelectionLine l ON(l.HR_PaySelection_ID = s.HR_PaySelection_ID) WHERE s.IsValid = ''Y'' AND l.Processed=''Y'' AND l.HR_Movement_ID = HR_Movement.HR_Movement_ID))',Updated=TO_TIMESTAMP('2014-08-12 22:02:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52072
;

