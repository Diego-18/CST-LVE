-- Jun 10, 2014 2:12:42 PM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53635,'org.spin.process.PrintHRContract','N',TO_TIMESTAMP('2014-06-10 14:12:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Print HR Contract','Y',0,0,TO_TIMESTAMP('2014-06-10 14:12:33','YYYY-MM-DD HH24:MI:SS'),100,'LVE_HR_PrintHRContract PrintHRContract')
;

-- Jun 10, 2014 2:12:42 PM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53635 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jun 10, 2014 2:13:55 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Imprimir Contrato de Nómina',Updated=TO_TIMESTAMP('2014-06-10 14:13:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53635 AND AD_Language='es_MX'
;

-- Jun 10, 2014 2:13:58 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Imprimir Contratos de Nómina',Updated=TO_TIMESTAMP('2014-06-10 14:13:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53635 AND AD_Language='es_VE'
;

-- Jun 10, 2014 2:14:18 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Imprimir Contrato de Nómina',Updated=TO_TIMESTAMP('2014-06-10 14:14:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53635 AND AD_Language='es_VE'
;

-- Jun 10, 2014 2:15:00 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73010,524,0,53635,28,53086,'Processing',TO_TIMESTAMP('2014-06-10 14:14:57','YYYY-MM-DD HH24:MI:SS'),100,'EE02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Process Now',0,TO_TIMESTAMP('2014-06-10 14:14:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 10, 2014 2:15:00 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73010 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 10, 2014 2:15:03 PM VET
-- LVE HR
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_TIMESTAMP('2014-06-10 14:15:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73010
;

-- Jun 10, 2014 2:15:21 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73010,73643,0,53102,TO_TIMESTAMP('2014-06-10 14:15:19','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Process Now',TO_TIMESTAMP('2014-06-10 14:15:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 10, 2014 2:15:21 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73643 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 10, 2014 2:15:40 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-10 14:15:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73643
;

-- Jun 10, 2014 2:16:11 PM VET
-- LVE HR
ALTER TABLE HR_Employee ADD COLUMN Processing CHAR(1) DEFAULT NULL 
;

-- Jun 10, 2014 3:09:44 PM VET
-- LVE HR
UPDATE AD_Column SET DefaultValue='@SQL=SELECT COALESCE(MAX(SeqNo),0)+10 AS DefaultValue FROM LVE_HR_ProcessReportLine WHERE LVE_HR_ProcessReport_ID=@LVE_HR_ProcessReport_ID@',Updated=TO_TIMESTAMP('2014-06-10 15:09:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72733
;

-- Jun 10, 2014 3:50:08 PM VET
-- LVE HR
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-10 15:50:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54977
;

