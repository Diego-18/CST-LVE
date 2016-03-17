-- Sep 17, 2013 2:31:59 PM VET
-- LVE-HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56360,0,'Relationship',TO_TIMESTAMP('2013-09-17 14:31:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Relationship','Relationship',TO_TIMESTAMP('2013-09-17 14:31:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 17, 2013 2:31:59 PM VET
-- LVE-HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56360 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 17, 2013 2:32:06 PM VET
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Relación',PrintName='Relación',Updated=TO_TIMESTAMP('2013-09-17 14:32:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56360 AND AD_Language='es_MX'
;

-- Sep 17, 2013 2:33:02 PM VET
-- LVE-HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56361,0,'Degree',TO_TIMESTAMP('2013-09-17 14:33:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Degree','Degree',TO_TIMESTAMP('2013-09-17 14:33:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 17, 2013 2:33:02 PM VET
-- LVE-HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56361 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 17, 2013 2:33:44 PM VET
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Grado Académico',PrintName='Grado Académico',Updated=TO_TIMESTAMP('2013-09-17 14:33:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56361 AND AD_Language='es_MX'
;

-- Sep 17, 2013 2:33:55 PM VET
-- LVE-HR
UPDATE AD_Element SET Name='Academic Degree', PrintName='Academic Degree',Updated=TO_TIMESTAMP('2013-09-17 14:33:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56361
;

-- Sep 17, 2013 2:33:55 PM VET
-- LVE-HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56361
;

-- Sep 17, 2013 2:33:55 PM VET
-- LVE-HR
UPDATE AD_Column SET ColumnName='Degree', Name='Academic Degree', Description=NULL, Help=NULL WHERE AD_Element_ID=56361
;

-- Sep 17, 2013 2:33:55 PM VET
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='Degree', Name='Academic Degree', Description=NULL, Help=NULL, AD_Element_ID=56361 WHERE UPPER(ColumnName)='DEGREE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Sep 17, 2013 2:33:55 PM VET
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='Degree', Name='Academic Degree', Description=NULL, Help=NULL WHERE AD_Element_ID=56361 AND IsCentrallyMaintained='Y'
;

-- Sep 17, 2013 2:33:55 PM VET
-- LVE-HR
UPDATE AD_Field SET Name='Academic Degree', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56361) AND IsCentrallyMaintained='Y'
;

-- Sep 17, 2013 2:33:55 PM VET
-- LVE-HR
UPDATE AD_PrintFormatItem SET PrintName='Academic Degree', Name='Academic Degree' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56361)
;

-- Sep 17, 2013 2:36:35 PM VET
-- LVE-HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56363,0,'Turn',TO_TIMESTAMP('2013-09-17 14:36:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Turn','Turn',TO_TIMESTAMP('2013-09-17 14:36:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 17, 2013 2:36:35 PM VET
-- LVE-HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56363 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 17, 2013 2:36:48 PM VET
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Turno',PrintName='Turno',Updated=TO_TIMESTAMP('2013-09-17 14:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56363 AND AD_Language='es_MX'
;

-- Sep 17, 2013 2:41:30 PM VET
-- LVE-HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56364,0,'Scholarship',TO_TIMESTAMP('2013-09-17 14:41:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Scholarship','Scholarship',TO_TIMESTAMP('2013-09-17 14:41:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 17, 2013 2:41:30 PM VET
-- LVE-HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56364 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 17, 2013 2:41:48 PM VET
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Becado',PrintName='Becado',Updated=TO_TIMESTAMP('2013-09-17 14:41:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56364 AND AD_Language='es_MX'
;

-- Sep 17, 2013 2:44:57 PM VET
-- LVE-HR
UPDATE AD_Element SET ColumnName='IsScholarship', Name='Has Scholarship', PrintName='Has Scholarship',Updated=TO_TIMESTAMP('2013-09-17 14:44:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56364
;

-- Sep 17, 2013 2:44:57 PM VET
-- LVE-HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56364
;

-- Sep 17, 2013 2:44:58 PM VET
-- LVE-HR
UPDATE AD_Column SET ColumnName='IsScholarship', Name='Has Scholarship', Description=NULL, Help=NULL WHERE AD_Element_ID=56364
;

-- Sep 17, 2013 2:44:58 PM VET
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='IsScholarship', Name='Has Scholarship', Description=NULL, Help=NULL, AD_Element_ID=56364 WHERE UPPER(ColumnName)='ISSCHOLARSHIP' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Sep 17, 2013 2:44:58 PM VET
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='IsScholarship', Name='Has Scholarship', Description=NULL, Help=NULL WHERE AD_Element_ID=56364 AND IsCentrallyMaintained='Y'
;

-- Sep 17, 2013 2:44:58 PM VET
-- LVE-HR
UPDATE AD_Field SET Name='Has Scholarship', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56364) AND IsCentrallyMaintained='Y'
;

-- Sep 17, 2013 2:44:58 PM VET
-- LVE-HR
UPDATE AD_PrintFormatItem SET PrintName='Has Scholarship', Name='Has Scholarship' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56364)
;

-- Sep 17, 2013 2:45:24 PM VET
-- LVE-HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56365,0,'IsDepending',TO_TIMESTAMP('2013-09-17 14:45:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Is Depending','Is Depending',TO_TIMESTAMP('2013-09-17 14:45:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 17, 2013 2:45:24 PM VET
-- LVE-HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56365 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Sep 17, 2013 2:45:48 PM VET
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Dependiente',PrintName='Dependiente',Updated=TO_TIMESTAMP('2013-09-17 14:45:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56365 AND AD_Language='es_MX'
;

-- Sep 17, 2013 2:46:46 PM VET
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67819,56365,0,20,114,'IsDepending',TO_TIMESTAMP('2013-09-17 14:46:45','YYYY-MM-DD HH24:MI:SS'),100,'''N''','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Is Depending',0,TO_TIMESTAMP('2013-09-17 14:46:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 17, 2013 2:46:46 PM VET
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67819 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 17, 2013 2:48:49 PM VET
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67820,56364,0,20,114,'IsScholarship',TO_TIMESTAMP('2013-09-17 14:48:42','YYYY-MM-DD HH24:MI:SS'),100,'''N''','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Has Scholarship',0,TO_TIMESTAMP('2013-09-17 14:48:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 17, 2013 2:48:49 PM VET
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67820 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 17, 2013 2:55:09 PM VET
-- LVE-HR
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53558,TO_TIMESTAMP('2013-09-17 14:55:07','YYYY-MM-DD HH24:MI:SS'),100,'Turn Related','ECA02','Y','N','LVE_HR Turn Related',TO_TIMESTAMP('2013-09-17 14:55:07','YYYY-MM-DD HH24:MI:SS'),100,'L','LL')
;

-- Sep 17, 2013 2:55:09 PM VET
-- LVE-HR
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53558 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Sep 17, 2013 2:55:24 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53558,54066,TO_TIMESTAMP('2013-09-17 14:55:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Diurnal',TO_TIMESTAMP('2013-09-17 14:55:22','YYYY-MM-DD HH24:MI:SS'),100,'D')
;

-- Sep 17, 2013 2:55:24 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54066 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 2:55:29 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Diurno',Updated=TO_TIMESTAMP('2013-09-17 14:55:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54066 AND AD_Language='es_MX'
;

-- Sep 17, 2013 2:55:44 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53558,54067,TO_TIMESTAMP('2013-09-17 14:55:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Nocturnal',TO_TIMESTAMP('2013-09-17 14:55:42','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

-- Sep 17, 2013 2:55:44 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54067 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 2:55:50 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Nocturno',Updated=TO_TIMESTAMP('2013-09-17 14:55:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54067 AND AD_Language='es_MX'
;

-- Sep 17, 2013 2:56:06 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53558,54068,TO_TIMESTAMP('2013-09-17 14:56:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','WeekEnd',TO_TIMESTAMP('2013-09-17 14:56:05','YYYY-MM-DD HH24:MI:SS'),100,'W')
;

-- Sep 17, 2013 2:56:06 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54068 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 2:56:28 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Fines de Semana',Updated=TO_TIMESTAMP('2013-09-17 14:56:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54068 AND AD_Language='es_MX'
;

-- Sep 17, 2013 2:57:06 PM VET
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67821,56363,0,17,53558,114,'Turn',TO_TIMESTAMP('2013-09-17 14:57:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Turn',0,TO_TIMESTAMP('2013-09-17 14:57:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 17, 2013 2:57:06 PM VET
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67821 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 17, 2013 3:07:26 PM VET
-- LVE-HR
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53559,TO_TIMESTAMP('2013-09-17 15:07:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','LVE_HR Gender',TO_TIMESTAMP('2013-09-17 15:07:25','YYYY-MM-DD HH24:MI:SS'),100,'L',NULL)
;

-- Sep 17, 2013 3:07:26 PM VET
-- LVE-HR
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53559 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Sep 17, 2013 3:07:31 PM VET
-- LVE-HR
UPDATE AD_Reference SET Description='Gender',Updated=TO_TIMESTAMP('2013-09-17 15:07:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53559
;

-- Sep 17, 2013 3:07:31 PM VET
-- LVE-HR
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53559
;

-- Sep 17, 2013 3:07:49 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53559,54069,TO_TIMESTAMP('2013-09-17 15:07:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Male',TO_TIMESTAMP('2013-09-17 15:07:48','YYYY-MM-DD HH24:MI:SS'),100,'M')
;

-- Sep 17, 2013 3:07:49 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54069 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 3:07:56 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Masculino',Updated=TO_TIMESTAMP('2013-09-17 15:07:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54069 AND AD_Language='es_MX'
;

-- Sep 17, 2013 3:08:08 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53559,54070,TO_TIMESTAMP('2013-09-17 15:08:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Female',TO_TIMESTAMP('2013-09-17 15:08:07','YYYY-MM-DD HH24:MI:SS'),100,'F')
;

-- Sep 17, 2013 3:08:08 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54070 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 3:08:13 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Femenino',Updated=TO_TIMESTAMP('2013-09-17 15:08:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54070 AND AD_Language='es_MX'
;

-- Sep 17, 2013 3:08:36 PM VET
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67822,56689,0,17,53559,114,'Gender',TO_TIMESTAMP('2013-09-17 15:08:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Gender',0,TO_TIMESTAMP('2013-09-17 15:08:35','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 17, 2013 3:08:36 PM VET
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67822 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 17, 2013 4:33:35 PM VET
-- LVE-HR
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53560,TO_TIMESTAMP('2013-09-17 16:33:32','YYYY-MM-DD HH24:MI:SS'),100,'Academic Degree','ECA02','Y','N','LVE_HR Degree',TO_TIMESTAMP('2013-09-17 16:33:32','YYYY-MM-DD HH24:MI:SS'),100,'L','LL')
;

-- Sep 17, 2013 4:33:35 PM VET
-- LVE-HR
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53560 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Sep 17, 2013 4:34:34 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54071,TO_TIMESTAMP('2013-09-17 16:34:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Motherly',TO_TIMESTAMP('2013-09-17 16:34:30','YYYY-MM-DD HH24:MI:SS'),100,'M1')
;

-- Sep 17, 2013 4:34:34 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54071 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:34:41 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Maternal',Updated=TO_TIMESTAMP('2013-09-17 16:34:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54071 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:35:28 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54072,TO_TIMESTAMP('2013-09-17 16:35:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Preschool 1',TO_TIMESTAMP('2013-09-17 16:35:26','YYYY-MM-DD HH24:MI:SS'),100,'P1')
;

-- Sep 17, 2013 4:35:28 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54072 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:35:37 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Preescolar 1',Updated=TO_TIMESTAMP('2013-09-17 16:35:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54072 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:35:49 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54073,TO_TIMESTAMP('2013-09-17 16:35:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Preschool 2',TO_TIMESTAMP('2013-09-17 16:35:48','YYYY-MM-DD HH24:MI:SS'),100,'P2')
;

-- Sep 17, 2013 4:35:49 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54073 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:35:57 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Preescolar 2',Updated=TO_TIMESTAMP('2013-09-17 16:35:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54073 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:36:13 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54074,TO_TIMESTAMP('2013-09-17 16:36:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Preschool 3',TO_TIMESTAMP('2013-09-17 16:36:11','YYYY-MM-DD HH24:MI:SS'),100,'P3')
;

-- Sep 17, 2013 4:36:13 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54074 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:39:44 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54075,TO_TIMESTAMP('2013-09-17 16:39:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Basic 1',TO_TIMESTAMP('2013-09-17 16:39:40','YYYY-MM-DD HH24:MI:SS'),100,'B1')
;

-- Sep 17, 2013 4:39:44 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54075 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:39:56 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Basico 1',Updated=TO_TIMESTAMP('2013-09-17 16:39:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54075 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:40:06 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54076,TO_TIMESTAMP('2013-09-17 16:40:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Basic 2',TO_TIMESTAMP('2013-09-17 16:40:05','YYYY-MM-DD HH24:MI:SS'),100,'B2')
;

-- Sep 17, 2013 4:40:06 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54076 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:40:11 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Basico 2',Updated=TO_TIMESTAMP('2013-09-17 16:40:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54076 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:40:22 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54077,TO_TIMESTAMP('2013-09-17 16:40:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Basic 3',TO_TIMESTAMP('2013-09-17 16:40:21','YYYY-MM-DD HH24:MI:SS'),100,'B3')
;

-- Sep 17, 2013 4:40:22 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54077 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:40:26 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Basico 3',Updated=TO_TIMESTAMP('2013-09-17 16:40:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54077 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:40:37 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54078,TO_TIMESTAMP('2013-09-17 16:40:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Basic 4',TO_TIMESTAMP('2013-09-17 16:40:36','YYYY-MM-DD HH24:MI:SS'),100,'B4')
;

-- Sep 17, 2013 4:40:37 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54078 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:40:41 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Basico 4',Updated=TO_TIMESTAMP('2013-09-17 16:40:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54078 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:40:50 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54079,TO_TIMESTAMP('2013-09-17 16:40:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Basic 5',TO_TIMESTAMP('2013-09-17 16:40:49','YYYY-MM-DD HH24:MI:SS'),100,'B5')
;

-- Sep 17, 2013 4:40:50 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54079 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:40:54 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Basico 5',Updated=TO_TIMESTAMP('2013-09-17 16:40:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54079 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:41:12 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54080,TO_TIMESTAMP('2013-09-17 16:41:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Basic 6',TO_TIMESTAMP('2013-09-17 16:41:11','YYYY-MM-DD HH24:MI:SS'),100,'B6')
;

-- Sep 17, 2013 4:41:12 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54080 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:41:18 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Basico 6',Updated=TO_TIMESTAMP('2013-09-17 16:41:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54080 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:42:11 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54081,TO_TIMESTAMP('2013-09-17 16:42:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Secundary 1',TO_TIMESTAMP('2013-09-17 16:42:10','YYYY-MM-DD HH24:MI:SS'),100,'S1')
;

-- Sep 17, 2013 4:42:11 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54081 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:42:18 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Secundaria 1',Updated=TO_TIMESTAMP('2013-09-17 16:42:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54081 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:42:29 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54082,TO_TIMESTAMP('2013-09-17 16:42:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Secundary 2',TO_TIMESTAMP('2013-09-17 16:42:28','YYYY-MM-DD HH24:MI:SS'),100,'S2')
;

-- Sep 17, 2013 4:42:29 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54082 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:45:05 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54083,TO_TIMESTAMP('2013-09-17 16:45:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Secundary 3',TO_TIMESTAMP('2013-09-17 16:45:02','YYYY-MM-DD HH24:MI:SS'),100,'S3')
;

-- Sep 17, 2013 4:45:05 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54083 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:45:13 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Secundaria 3',Updated=TO_TIMESTAMP('2013-09-17 16:45:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54083 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:45:25 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Secundaria 2',Updated=TO_TIMESTAMP('2013-09-17 16:45:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54082 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:45:51 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54084,TO_TIMESTAMP('2013-09-17 16:45:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Secundary 4',TO_TIMESTAMP('2013-09-17 16:45:49','YYYY-MM-DD HH24:MI:SS'),100,'S4')
;

-- Sep 17, 2013 4:45:51 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54084 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:45:56 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Secundaria 4',Updated=TO_TIMESTAMP('2013-09-17 16:45:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54084 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:46:15 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54085,TO_TIMESTAMP('2013-09-17 16:46:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Secundary 5',TO_TIMESTAMP('2013-09-17 16:46:13','YYYY-MM-DD HH24:MI:SS'),100,'S5')
;

-- Sep 17, 2013 4:46:15 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54085 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:46:19 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Secundaria 5',Updated=TO_TIMESTAMP('2013-09-17 16:46:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54085 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:54:37 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54086,TO_TIMESTAMP('2013-09-17 16:54:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Universitary 1',TO_TIMESTAMP('2013-09-17 16:54:35','YYYY-MM-DD HH24:MI:SS'),100,'U1')
;

-- Sep 17, 2013 4:54:37 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54086 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:54:46 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Universitario 1',Updated=TO_TIMESTAMP('2013-09-17 16:54:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54086 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:55:00 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54087,TO_TIMESTAMP('2013-09-17 16:54:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Universitary 2',TO_TIMESTAMP('2013-09-17 16:54:59','YYYY-MM-DD HH24:MI:SS'),100,'U2')
;

-- Sep 17, 2013 4:55:00 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54087 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:55:24 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Universitario 2',Updated=TO_TIMESTAMP('2013-09-17 16:55:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54087 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:55:35 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54088,TO_TIMESTAMP('2013-09-17 16:55:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Universitary 3',TO_TIMESTAMP('2013-09-17 16:55:34','YYYY-MM-DD HH24:MI:SS'),100,'U3')
;

-- Sep 17, 2013 4:55:35 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54088 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:55:40 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Universitario 3',Updated=TO_TIMESTAMP('2013-09-17 16:55:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54088 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:55:54 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54089,TO_TIMESTAMP('2013-09-17 16:55:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Universitary 4',TO_TIMESTAMP('2013-09-17 16:55:53','YYYY-MM-DD HH24:MI:SS'),100,'U4')
;

-- Sep 17, 2013 4:55:54 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54089 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:56:00 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Universitario 4',Updated=TO_TIMESTAMP('2013-09-17 16:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54089 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:56:24 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54090,TO_TIMESTAMP('2013-09-17 16:56:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Universitary 5',TO_TIMESTAMP('2013-09-17 16:56:23','YYYY-MM-DD HH24:MI:SS'),100,'U5')
;

-- Sep 17, 2013 4:56:24 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54090 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:56:30 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Universitario 5',Updated=TO_TIMESTAMP('2013-09-17 16:56:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54090 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:56:41 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54091,TO_TIMESTAMP('2013-09-17 16:56:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Universitary 6',TO_TIMESTAMP('2013-09-17 16:56:40','YYYY-MM-DD HH24:MI:SS'),100,'U6')
;

-- Sep 17, 2013 4:56:41 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54091 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 4:56:46 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Universitario 6',Updated=TO_TIMESTAMP('2013-09-17 16:56:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54091 AND AD_Language='es_MX'
;

-- Sep 17, 2013 4:57:38 PM VET
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67823,56361,0,17,53560,114,'Degree',TO_TIMESTAMP('2013-09-17 16:57:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',2,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Academic Degree',0,TO_TIMESTAMP('2013-09-17 16:57:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 17, 2013 4:57:38 PM VET
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67823 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 17, 2013 5:00:46 PM VET
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,67824,56360,0,17,114,'Relationship',TO_TIMESTAMP('2013-09-17 17:00:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',2,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Relationship',0,TO_TIMESTAMP('2013-09-17 17:00:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Sep 17, 2013 5:00:46 PM VET
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67824 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Sep 17, 2013 5:12:17 PM VET
-- LVE-HR
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType,VFormat) VALUES (0,0,53561,TO_TIMESTAMP('2013-09-17 17:12:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','LVE_HR Relationship',TO_TIMESTAMP('2013-09-17 17:12:17','YYYY-MM-DD HH24:MI:SS'),100,'L','LL')
;

-- Sep 17, 2013 5:12:17 PM VET
-- LVE-HR
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53561 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Sep 17, 2013 5:13:35 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53561,54092,TO_TIMESTAMP('2013-09-17 17:13:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Brother/Sister',TO_TIMESTAMP('2013-09-17 17:13:33','YYYY-MM-DD HH24:MI:SS'),100,'BS')
;

-- Sep 17, 2013 5:13:35 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54092 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 5:13:44 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Hermano/a',Updated=TO_TIMESTAMP('2013-09-17 17:13:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54092 AND AD_Language='es_MX'
;

-- Sep 17, 2013 5:14:49 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53561,54093,TO_TIMESTAMP('2013-09-17 17:14:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Husband/Wife',TO_TIMESTAMP('2013-09-17 17:14:48','YYYY-MM-DD HH24:MI:SS'),100,'HW')
;

-- Sep 17, 2013 5:14:49 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54093 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 5:14:57 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Esposo/a',Updated=TO_TIMESTAMP('2013-09-17 17:14:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54093 AND AD_Language='es_MX'
;

-- Sep 17, 2013 5:15:36 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53561,54094,TO_TIMESTAMP('2013-09-17 17:15:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Son/Daughter',TO_TIMESTAMP('2013-09-17 17:15:35','YYYY-MM-DD HH24:MI:SS'),100,'SD')
;

-- Sep 17, 2013 5:15:36 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54094 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 5:15:42 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Hijo/a',Updated=TO_TIMESTAMP('2013-09-17 17:15:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54094 AND AD_Language='es_MX'
;

-- Sep 17, 2013 5:16:20 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53561,54095,TO_TIMESTAMP('2013-09-17 17:16:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Mother/Father',TO_TIMESTAMP('2013-09-17 17:16:19','YYYY-MM-DD HH24:MI:SS'),100,'MF')
;

-- Sep 17, 2013 5:16:20 PM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54095 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 17, 2013 5:16:34 PM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Madre/Padre',Updated=TO_TIMESTAMP('2013-09-17 17:16:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54095 AND AD_Language='es_MX'
;

-- Sep 17, 2013 5:17:05 PM VET
-- LVE-HR
UPDATE AD_Reference SET Description='Relationship',Updated=TO_TIMESTAMP('2013-09-17 17:17:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53561
;

-- Sep 17, 2013 5:17:05 PM VET
-- LVE-HR
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53561
;

-- Sep 17, 2013 5:17:18 PM VET
-- LVE-HR
UPDATE AD_Column SET AD_Reference_Value_ID=53561,Updated=TO_TIMESTAMP('2013-09-17 17:17:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67824
;

-- Sep 17, 2013 5:19:58 PM VET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67823,69420,0,53108,TO_TIMESTAMP('2013-09-17 17:19:55','YYYY-MM-DD HH24:MI:SS'),100,2,'ECA02','Y','Y','Y','N','N','N','N','N','Academic Degree',TO_TIMESTAMP('2013-09-17 17:19:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 17, 2013 5:19:58 PM VET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69420 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 17, 2013 5:19:59 PM VET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67822,69421,0,53108,TO_TIMESTAMP('2013-09-17 17:19:58','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Gender',TO_TIMESTAMP('2013-09-17 17:19:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 17, 2013 5:19:59 PM VET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69421 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 17, 2013 5:19:59 PM VET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67820,69422,0,53108,TO_TIMESTAMP('2013-09-17 17:19:59','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Has Scholarship',TO_TIMESTAMP('2013-09-17 17:19:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 17, 2013 5:19:59 PM VET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69422 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 17, 2013 5:20:00 PM VET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67819,69423,0,53108,TO_TIMESTAMP('2013-09-17 17:19:59','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Is Depending',TO_TIMESTAMP('2013-09-17 17:19:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 17, 2013 5:20:00 PM VET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69423 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 17, 2013 5:20:01 PM VET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67824,69424,0,53108,TO_TIMESTAMP('2013-09-17 17:20:00','YYYY-MM-DD HH24:MI:SS'),100,2,'ECA02','Y','Y','Y','N','N','N','N','N','Relationship',TO_TIMESTAMP('2013-09-17 17:20:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 17, 2013 5:20:01 PM VET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69424 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Sep 17, 2013 5:20:02 PM VET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67821,69425,0,53108,TO_TIMESTAMP('2013-09-17 17:20:01','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Turn',TO_TIMESTAMP('2013-09-17 17:20:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 17, 2013 5:20:02 PM VET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=69425 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

