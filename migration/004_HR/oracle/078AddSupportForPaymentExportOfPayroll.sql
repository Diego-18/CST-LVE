-- May 25, 2014 12:24:16 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Cuenta Bancaria del Empleado',Updated=TO_DATE('2014-05-25 00:24:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53474 AND AD_Language='es_MX'
;

-- May 25, 2014 12:24:22 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Cuenta Bancaria del Empleado',Updated=TO_DATE('2014-05-25 00:24:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53474 AND AD_Language='es_VE'
;

-- May 25, 2014 12:28:14 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Cambio de Atributo en Conceptos',Updated=TO_DATE('2014-05-25 00:28:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53628 AND AD_Language='es_MX'
;

-- May 25, 2014 12:34:18 AM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57175,0,10,'PaymentExportClassHR',TO_DATE('2014-05-25 00:34:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',60,'Y','Payment Export Class Payroll','Payment Export Class Payroll',TO_DATE('2014-05-25 00:34:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 25, 2014 12:34:18 AM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57175 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- May 25, 2014 12:35:49 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Clase Exporta Pagos de Nómina',PrintName='Clase Exporta Pagos de Nómina',Updated=TO_DATE('2014-05-25 00:35:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57175 AND AD_Language='es_MX'
;

-- May 25, 2014 12:36:21 AM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72995,57175,0,10,297,'PaymentExportClassHR',TO_DATE('2014-05-25 00:36:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Payment Export Class Payroll',0,TO_DATE('2014-05-25 00:36:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- May 25, 2014 12:36:21 AM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72995 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- May 25, 2014 12:36:52 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72995,73496,0,228,TO_DATE('2014-05-25 00:36:51','YYYY-MM-DD HH24:MI:SS'),100,60,'ECA02','Y','Y','Y','N','N','N','N','N','Payment Export Class Payroll',TO_DATE('2014-05-25 00:36:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 25, 2014 12:36:53 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73496 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- May 25, 2014 1:04:47 AM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57176,0,'IsNotRegularPayroll',TO_DATE('2014-05-25 01:04:45','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Is Not Regular Payroll','Is Not Regular Payroll',TO_DATE('2014-05-25 01:04:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 25, 2014 1:04:47 AM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57176 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- May 25, 2014 1:04:56 AM VET
-- LVE HR
UPDATE AD_Element SET AD_Reference_ID=20, FieldLength=1,Updated=TO_DATE('2014-05-25 01:04:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57176
;

-- May 25, 2014 1:05:02 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='No es Nómina Regular',PrintName='No es Nómina Regular',Updated=TO_DATE('2014-05-25 01:05:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57176 AND AD_Language='es_MX'
;

-- May 25, 2014 1:05:26 AM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72996,57176,0,20,53093,'IsNotRegularPayroll',TO_DATE('2014-05-25 01:05:17','YYYY-MM-DD HH24:MI:SS'),100,'EE02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Is Not Regular Payroll',0,TO_DATE('2014-05-25 01:05:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- May 25, 2014 1:05:26 AM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72996 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- May 25, 2014 1:06:04 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72996,73497,0,53115,TO_DATE('2014-05-25 01:06:01','YYYY-MM-DD HH24:MI:SS'),100,1,'EE02','Y','Y','Y','N','N','N','N','N','Is Not Regular Payroll',TO_DATE('2014-05-25 01:06:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- May 25, 2014 1:06:04 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73497 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- May 25, 2014 1:06:23 AM VET
-- LVE HR
UPDATE AD_Field SET EntityType='ECA02',Updated=TO_DATE('2014-05-25 01:06:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73497
;

-- May 25, 2014 1:06:35 AM VET
-- LVE HR
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_DATE('2014-05-25 01:06:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72996
;

