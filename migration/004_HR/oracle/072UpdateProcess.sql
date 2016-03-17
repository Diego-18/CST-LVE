-- 26-abr-2014 10:43:17 VET
-- LVE-HR
UPDATE AD_Table_Trl SET Name='Concepto de Nómina',Updated=TO_DATE('2014-04-26 10:43:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53795 AND AD_Language='es_MX'
;

-- 26-abr-2014 10:43:23 VET
-- LVE-HR
UPDATE AD_Table_Trl SET Name='Concepto de Nómina',Updated=TO_DATE('2014-04-26 10:43:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53795 AND AD_Language='es_VE'
;

-- 26-abr-2014 10:48:24 VET
-- LVE-HR
UPDATE AD_Column_Trl SET Name='Concepto de Nómina',Updated=TO_DATE('2014-04-26 10:48:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72736 AND AD_Language='es_MX'
;

-- 26-abr-2014 10:48:26 VET
-- LVE-HR
UPDATE AD_Column_Trl SET Name='Concepto de Nómina',Updated=TO_DATE('2014-04-26 10:48:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72736 AND AD_Language='es_VE'
;

-- Apr 26, 2014 10:52:30 AM VET
-- LVE-HR
UPDATE AD_Tab SET Name='HR Process Report Detail',Updated=TO_DATE('2014-04-26 10:52:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53950
;

-- Apr 26, 2014 10:52:30 AM VET
-- LVE-HR
UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=53950
;

-- Apr 26, 2014 10:53:58 AM VET
-- LVE-HR
UPDATE AD_Tab_Trl SET Name='Concepto de Nómina',Updated=TO_DATE('2014-04-26 10:53:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53950 AND AD_Language='es_VE'
;

-- Apr 26, 2014 10:54:03 AM VET
-- LVE-HR
UPDATE AD_Tab_Trl SET Name='Concepto de Nómina',Updated=TO_DATE('2014-04-26 10:54:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53950 AND AD_Language='es_MX'
;

-- Apr 26, 2014 10:56:12 AM VET
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Copiar desde Nómina',Updated=TO_DATE('2014-04-26 10:56:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53612 AND AD_Language='es_VE'
;

-- Apr 26, 2014 10:56:28 AM VET
-- LVE-HR
UPDATE AD_Process_Para_Trl SET Name='Copiar desde Nómina',Updated=TO_DATE('2014-04-26 10:56:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54688 AND AD_Language='es_VE'
;

-- Apr 26, 2014 10:56:38 AM VET
-- LVE-HR
UPDATE AD_Process_Para_Trl SET Name='Nómina',Updated=TO_DATE('2014-04-26 10:56:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54688 AND AD_Language='es_VE'
;

-- Apr 26, 2014 10:56:49 AM VET
-- LVE-HR
UPDATE AD_Process_Para_Trl SET Name='Eliminar Registro Viejos',Updated=TO_DATE('2014-04-26 10:56:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54689 AND AD_Language='es_VE'
;

-- Apr 26, 2014 10:57:13 AM VET
-- LVE-HR
UPDATE AD_Process_Para_Trl SET Description='Otros registros serán añadidos',Updated=TO_DATE('2014-04-26 10:57:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54689 AND AD_Language='es_VE'
;

-- Apr 26, 2014 10:57:17 AM VET
-- LVE-HR
UPDATE AD_Process_Para_Trl SET IsTranslated='Y',Updated=TO_DATE('2014-04-26 10:57:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54689 AND AD_Language='es_VE'
;

-- Apr 26, 2014 10:57:55 AM VET
-- LVE-HR
UPDATE AD_Process SET Value='LVE_Process HR_Payroll  CopyFrom',Updated=TO_DATE('2014-04-26 10:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53612
;

-- Apr 26, 2014 10:58:24 AM VET
-- LVE-HR
UPDATE AD_Process SET Value='HR_Payroll  CopyFrom',Updated=TO_DATE('2014-04-26 10:58:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53612
;

-- Apr 26, 2014 11:01:05 AM VET
-- LVE-HR
UPDATE AD_Column SET AD_Process_ID=53612,Updated=TO_DATE('2014-04-26 11:01:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72723
;

-- Apr 26, 2014 11:03:03 AM VET
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53622,'org.spin.process.CreateConcepts','N',TO_DATE('2014-04-26 11:03:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Create Concepts','Y',2,2,TO_DATE('2014-04-26 11:03:00','YYYY-MM-DD HH24:MI:SS'),100,'LVE_HR_ProcessReport CreateConcepts')
;

-- Apr 26, 2014 11:03:03 AM VET
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53622 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Apr 26, 2014 11:03:10 AM VET
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Crear Conceptos',Updated=TO_DATE('2014-04-26 11:03:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53622 AND AD_Language='es_MX'
;

-- Apr 26, 2014 11:03:13 AM VET
-- LVE-HR
UPDATE AD_Process_Trl SET Name='Crear Conceptos',Updated=TO_DATE('2014-04-26 11:03:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53622 AND AD_Language='es_VE'
;

-- Apr 26, 2014 11:03:14 AM VET
-- LVE-HR
UPDATE AD_Process_Trl SET IsTranslated='Y',Updated=TO_DATE('2014-04-26 11:03:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53622 AND AD_Language='es_VE'
;

-- Apr 26, 2014 11:03:16 AM VET
-- LVE-HR
UPDATE AD_Process_Trl SET IsTranslated='Y',Updated=TO_DATE('2014-04-26 11:03:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53622 AND AD_Language='es_MX'
;

-- Apr 26, 2014 11:03:53 AM VET
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53393,0,53622,54725,19,'HR_Payroll_ID',TO_DATE('2014-04-26 11:03:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll',10,TO_DATE('2014-04-26 11:03:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 26, 2014 11:03:53 AM VET
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54725 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Apr 26, 2014 11:04:08 AM VET
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1669,0,53622,54726,20,'DeleteOld',TO_DATE('2014-04-26 11:04:07','YYYY-MM-DD HH24:MI:SS'),100,'Otherwise records will be added','ECA02',1,'Y','Y','N','N','Delete old/existing records',20,TO_DATE('2014-04-26 11:04:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 26, 2014 11:04:08 AM VET
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54726 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Apr 26, 2014 11:04:33 AM VET
-- LVE-HR
UPDATE AD_Column SET AD_Process_ID=53622,Updated=TO_DATE('2014-04-26 11:04:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72723
;

-- Apr 26, 2014 11:57:23 AM VET
-- LVE-HR
UPDATE AD_Process SET Classname='org.spin.process.CreateCopyConcepts', Name='Create/Copy Concepts',Updated=TO_DATE('2014-04-26 11:57:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53622
;

-- Apr 26, 2014 11:57:23 AM VET
-- LVE-HR
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53622
;

-- Apr 26, 2014 11:57:38 AM VET
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53403,0,53622,54727,19,'HR_Concept_Category_ID',TO_DATE('2014-04-26 11:57:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll Concept Category',5,TO_DATE('2014-04-26 11:57:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 26, 2014 11:57:38 AM VET
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54727 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

