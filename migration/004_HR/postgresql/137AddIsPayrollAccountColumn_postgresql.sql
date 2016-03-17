-- 17/07/2014 06:12:14 PM CEST
-- LVE-HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57291,0,20,'IsPayFromPayroll',TO_TIMESTAMP('2014-07-17 18:12:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Is Payment from Payroll','Is Payment from Payroll',TO_TIMESTAMP('2014-07-17 18:12:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 06:12:14 PM CEST
-- LVE-HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57291 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 17/07/2014 06:15:40 PM CEST
-- LVE-HR
UPDATE AD_Element SET ColumnName='IsPayrollAccount', Name='Is Payroll Account', PrintName='Is Payroll Account',Updated=TO_TIMESTAMP('2014-07-17 18:15:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57291
;

-- 17/07/2014 06:15:40 PM CEST
-- LVE-HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57291
;

-- 17/07/2014 06:15:40 PM CEST
-- LVE-HR
UPDATE AD_Column SET ColumnName='IsPayrollAccount', Name='Is Payroll Account', Description=NULL, Help=NULL WHERE AD_Element_ID=57291
;

-- 17/07/2014 06:15:40 PM CEST
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='IsPayrollAccount', Name='Is Payroll Account', Description=NULL, Help=NULL, AD_Element_ID=57291 WHERE UPPER(ColumnName)='ISPAYROLLACCOUNT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 17/07/2014 06:15:40 PM CEST
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='IsPayrollAccount', Name='Is Payroll Account', Description=NULL, Help=NULL WHERE AD_Element_ID=57291 AND IsCentrallyMaintained='Y'
;

-- 17/07/2014 06:15:40 PM CEST
-- LVE-HR
UPDATE AD_Field SET Name='Is Payroll Account', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57291) AND IsCentrallyMaintained='Y'
;

-- 17/07/2014 06:15:40 PM CEST
-- LVE-HR
UPDATE AD_PrintFormatItem SET PrintName='Is Payroll Account', Name='Is Payroll Account' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57291)
;

-- 17/07/2014 06:16:04 PM CEST
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Cuenta Nómina',PrintName='Cuenta Nómina',Updated=TO_TIMESTAMP('2014-07-17 18:16:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57291 AND AD_Language='es_MX'
;

-- 17/07/2014 06:16:39 PM CEST
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73692,57291,0,20,298,'IsPayrollAccount',TO_TIMESTAMP('2014-07-17 18:16:37','YYYY-MM-DD HH24:MI:SS'),100,'N','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Is Payroll Account',0,TO_TIMESTAMP('2014-07-17 18:16:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 17/07/2014 06:16:39 PM CEST
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73692 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 17/07/2014 06:17:30 PM CEST
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,73692,74089,0,53106,TO_TIMESTAMP('2014-07-17 18:17:29','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','Y','Y','N','N','N','N','N','Is Payroll Account',0,280,0,TO_TIMESTAMP('2014-07-17 18:17:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/07/2014 06:17:30 PM CEST
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74089 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 17/07/2014 06:19:49 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-07-17 18:19:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74089
;

-- 17/07/2014 06:19:49 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-07-17 18:19:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69629
;

-- 17/07/2014 06:19:49 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-07-17 18:19:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69630
;

-- 17/07/2014 06:19:50 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-07-17 18:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69631
;

-- 17/07/2014 06:19:50 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-07-17 18:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69632
;

-- 17/07/2014 06:19:50 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-07-17 18:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69633
;

-- 17/07/2014 06:19:50 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-07-17 18:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69634
;

-- 17/07/2014 06:19:50 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-07-17 18:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69635
;

-- 17/07/2014 06:19:50 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-07-17 18:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69636
;

-- 17/07/2014 06:19:50 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-07-17 18:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69637
;

-- 17/07/2014 06:19:50 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-07-17 18:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69638
;

-- 17/07/2014 06:19:50 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-07-17 18:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69639
;

-- 17/07/2014 06:19:50 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-07-17 18:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69640
;

-- 17/07/2014 06:19:50 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-07-17 18:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69641
;

-- 17/07/2014 06:19:50 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-07-17 18:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69642
;

-- 17/07/2014 06:19:50 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-07-17 18:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69643
;

-- 17/07/2014 06:19:50 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-07-17 18:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69644
;

-- 17/07/2014 06:19:50 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-07-17 18:19:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69645
;

-- 17/07/2014 06:19:51 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-07-17 18:19:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69646
;

-- 17/07/2014 06:19:51 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2014-07-17 18:19:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69647
;

-- 17/07/2014 06:19:51 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_TIMESTAMP('2014-07-17 18:19:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69648
;

-- 17/07/2014 06:19:51 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2014-07-17 18:19:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69649
;

-- 17/07/2014 06:19:51 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_TIMESTAMP('2014-07-17 18:19:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69650
;

-- 17/07/2014 06:19:51 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=270,Updated=TO_TIMESTAMP('2014-07-17 18:19:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69651
;

-- 17/07/2014 06:19:51 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=280,Updated=TO_TIMESTAMP('2014-07-17 18:19:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69652
;

-- 17/07/2014 06:19:58 PM CEST
-- LVE-HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-07-17 18:19:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74089
;

