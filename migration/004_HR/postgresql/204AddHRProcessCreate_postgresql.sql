-- Jan 20, 2015 11:34:23 AM EST
-- HR Loan
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53737,'org.spin.process.LoanProcessCreate','N',TO_TIMESTAMP('2015-01-20 11:34:21','YYYY-MM-DD HH24:MI:SS'),100,'Process Create','ECA02','Create a HR Process from the Loan Generated','Y','N','N','N','N','HR Process Create','Y',0,0,TO_TIMESTAMP('2015-01-20 11:34:21','YYYY-MM-DD HH24:MI:SS'),100,'LVE_HR_Loan_HR_Process_Create')
;

-- Jan 20, 2015 11:34:23 AM EST
-- HR Loan
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53737 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jan 20, 2015 12:02:00 PM EST
-- HR Loan
UPDATE AD_Process_Trl SET Name='Crear Proceso de Nómina',Description='Crea un Proceso de Nómina',Help='Crea un Proceso de Nómina desde el Préstamo Generado',Updated=TO_TIMESTAMP('2015-01-20 12:02:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53737 AND AD_Language='es_MX'
;

-- Jan 20, 2015 12:03:38 PM EST
-- HR Loan
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53393,0,53737,55108,19,'HR_Payroll_ID',TO_TIMESTAMP('2015-01-20 12:03:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','Y','N','Payroll',10,TO_TIMESTAMP('2015-01-20 12:03:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 20, 2015 12:03:38 PM EST
-- HR Loan
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55108 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 20, 2015 12:04:50 PM EST
-- HR Loan
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,197,0,53737,55109,18,170,52021,'C_DocTypeTarget_ID',TO_TIMESTAMP('2015-01-20 12:04:49','YYYY-MM-DD HH24:MI:SS'),100,'Target document type for conversing documents','ECA02',22,'You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','Y','Y','Y','N','Target Document Type',20,TO_TIMESTAMP('2015-01-20 12:04:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 20, 2015 12:04:50 PM EST
-- HR Loan
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55109 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jan 20, 2015 12:05:29 PM EST
-- HR Loan
UPDATE AD_Process SET Name='HR Loan Process',Updated=TO_TIMESTAMP('2015-01-20 12:05:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53734
;

-- Jan 20, 2015 12:05:29 PM EST
-- HR Loan
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53734
;

-- Jan 20, 2015 12:05:55 PM EST
-- HR Loan
UPDATE AD_Column SET AD_Process_ID=53737,Updated=TO_TIMESTAMP('2015-01-20 12:05:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=75438
;

-- Jan 20, 2015 2:52:21 PM EST
-- HR Loan
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2015-01-20 14:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55108
;

-- Jan 20, 2015 2:52:27 PM EST
-- HR Loan
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2015-01-20 14:52:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55109
;

-- Jan 20, 2015 2:52:21 PM EST
-- HR Loan
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2015-01-20 14:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55108
;

-- Jan 20, 2015 2:52:27 PM EST
-- HR Loan
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2015-01-20 14:52:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55109
;

