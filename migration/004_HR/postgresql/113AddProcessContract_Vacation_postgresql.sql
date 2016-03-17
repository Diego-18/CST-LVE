-- 8/07/2014 10:43:49 AM VET
-- RRHH LVE
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53653,'N',TO_TIMESTAMP('2014-07-08 10:43:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_HR_Expiration_Contrat_Vacation.jrxml','Expiration of Contrat/Vacation','Y',0,0,TO_TIMESTAMP('2014-07-08 10:43:42','YYYY-MM-DD HH24:MI:SS'),100,'LVR_RV_HR_Expiration_CV')
;

-- 8/07/2014 10:43:49 AM VET
-- RRHH LVE
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53653 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 8/07/2014 10:43:49 AM VET
-- RRHH LVE
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53653,0,TO_TIMESTAMP('2014-07-08 10:43:49','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-08 10:43:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/07/2014 10:43:50 AM VET
-- RRHH LVE
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53653,102,TO_TIMESTAMP('2014-07-08 10:43:49','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-08 10:43:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/07/2014 10:43:50 AM VET
-- RRHH LVE
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53653,103,TO_TIMESTAMP('2014-07-08 10:43:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-08 10:43:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/07/2014 10:43:50 AM VET
-- RRHH LVE
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53653,50001,TO_TIMESTAMP('2014-07-08 10:43:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-08 10:43:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/07/2014 10:43:50 AM VET
-- RRHH LVE
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53653,50002,TO_TIMESTAMP('2014-07-08 10:43:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-08 10:43:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/07/2014 10:44:25 AM VET
-- RRHH LVE
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53653,54873,19,'AD_Org_ID',TO_TIMESTAMP('2014-07-08 10:44:23','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',10,TO_TIMESTAMP('2014-07-08 10:44:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/07/2014 10:44:25 AM VET
-- RRHH LVE
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54873 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 8/07/2014 10:45:01 AM VET
-- RRHH LVE
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53653,54874,30,'C_BPartner_ID',TO_TIMESTAMP('2014-07-08 10:44:59','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',20,TO_TIMESTAMP('2014-07-08 10:44:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/07/2014 10:45:01 AM VET
-- RRHH LVE
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54874 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 8/07/2014 10:45:56 AM VET
-- RRHH LVE
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53653,54875,15,'DateDoc',TO_TIMESTAMP('2014-07-08 10:45:55','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','N','Document Date',30,TO_TIMESTAMP('2014-07-08 10:45:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/07/2014 10:45:56 AM VET
-- RRHH LVE
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54875 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 8/07/2014 10:48:39 AM VET
-- RRHH LVE
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1496,0,53653,54876,11,'DaysDue',TO_TIMESTAMP('2014-07-08 10:48:37','YYYY-MM-DD HH24:MI:SS'),100,'Number of days due (negative: due in number of days)','ECA02',22,'Y','Y','N','N','Days due',40,TO_TIMESTAMP('2014-07-08 10:48:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/07/2014 10:48:39 AM VET
-- RRHH LVE
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54876 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 8/07/2014 10:48:45 AM VET
-- RRHH LVE
UPDATE AD_Process_Para SET IsRange='Y',Updated=TO_TIMESTAMP('2014-07-08 10:48:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54876
;

-- 8/07/2014 10:49:16 AM VET
-- RRHH LVE
UPDATE AD_Process_Para SET DefaultValue='1', DefaultValue2='30',Updated=TO_TIMESTAMP('2014-07-08 10:49:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54876
;

-- 8/07/2014 10:50:29 AM VET
-- RRHH LVE
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57249,0,'IsVacation',TO_TIMESTAMP('2014-07-08 10:50:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Vacation','Vacation',TO_TIMESTAMP('2014-07-08 10:50:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/07/2014 10:50:29 AM VET
-- RRHH LVE
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57249 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 8/07/2014 10:50:44 AM VET
-- RRHH LVE
UPDATE AD_Element_Trl SET Name='Vacacion',PrintName='Vacacion',Updated=TO_TIMESTAMP('2014-07-08 10:50:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57249 AND AD_Language='es_MX'
;

-- 8/07/2014 10:51:26 AM VET
-- RRHH LVE
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57249,0,53653,54877,20,'IsVacation',TO_TIMESTAMP('2014-07-08 10:51:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Vacation',50,TO_TIMESTAMP('2014-07-08 10:51:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 8/07/2014 10:51:26 AM VET
-- RRHH LVE
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54877 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 8/07/2014 10:52:03 AM VET
-- RRHH LVE
UPDATE AD_Process_Trl SET Name='Vencimiento de Contratos/Vacaciones',Updated=TO_TIMESTAMP('2014-07-08 10:52:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53653 AND AD_Language='es_MX'
;

