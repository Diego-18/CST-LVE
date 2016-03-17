-- Jun 20, 2014 9:09:23 AM VET
-- LVE HR
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_DATE('2014-06-20 09:09:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54750
;

-- Jun 20, 2014 9:11:34 AM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57232,0,18,53556,'ConceptValidation',TO_DATE('2014-06-20 09:11:33','YYYY-MM-DD HH24:MI:SS'),100,'Concept of Validation ','ECA02',40,'Y','Concept Validation','Concept Validation',TO_DATE('2014-06-20 09:11:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 20, 2014 9:11:34 AM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57232 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 20, 2014 9:12:22 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto de Validación',PrintName='Concepto de Validación',Description='Concepto de Validación',Updated=TO_DATE('2014-06-20 09:12:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57232 AND AD_Language='es_MX'
;

-- Jun 20, 2014 9:12:27 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto de Validación',PrintName='Concepto de Validación',Description='Concepto de Validación',Updated=TO_DATE('2014-06-20 09:12:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57232 AND AD_Language='es_VE'
;

-- Jun 20, 2014 9:12:53 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57232,0,53628,54835,18,53556,'ConceptValidation',TO_DATE('2014-06-20 09:12:47','YYYY-MM-DD HH24:MI:SS'),100,'Concept of Validation ','ECA02',40,'Y','Y','Y','N','Concept Validation',110,TO_DATE('2014-06-20 09:12:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 20, 2014 9:12:53 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54835 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 20, 2014 9:13:13 AM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=80,Updated=TO_DATE('2014-06-20 09:13:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54835
;

-- Jun 20, 2014 9:13:42 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53390,0,53628,54836,19,'HR_Department_ID',TO_DATE('2014-06-20 09:13:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll Department',110,TO_DATE('2014-06-20 09:13:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 20, 2014 9:13:42 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54836 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 20, 2014 9:14:00 AM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=35,Updated=TO_DATE('2014-06-20 09:14:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54836
;

-- Jun 20, 2014 10:08:53 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Contrato de Trabajo por Sustituir',Updated=TO_DATE('2014-06-20 10:08:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53640 AND AD_Language='es_MX'
;

-- Jun 20, 2014 10:08:56 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Contrato de Trabajo por Sustituir',Updated=TO_DATE('2014-06-20 10:08:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53640 AND AD_Language='es_VE'
;

-- Jun 20, 2014 12:14:43 PM VET
-- LVE HR
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53276,0,TO_DATE('2014-06-20 12:14:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Records do not match','E',TO_DATE('2014-06-20 12:14:40','YYYY-MM-DD HH24:MI:SS'),100,'Recordsdonotmatch')
;

-- Jun 20, 2014 12:14:43 PM VET
-- LVE HR
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53276 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Jun 20, 2014 12:14:54 PM VET
-- LVE HR
UPDATE AD_Message_Trl SET MsgText='Registros no coinciden',Updated=TO_DATE('2014-06-20 12:14:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53276 AND AD_Language='es_MX'
;

-- Jun 20, 2014 12:14:58 PM VET
-- LVE HR
UPDATE AD_Message_Trl SET MsgText='Registros no coinciden',Updated=TO_DATE('2014-06-20 12:14:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53276 AND AD_Language='es_VE'
;

-- Jun 20, 2014 12:15:57 PM VET
-- LVE HR
UPDATE AD_Element SET ColumnName='ValidConcept_ID', Name='Valid Concept', PrintName='Valid Concept',Updated=TO_DATE('2014-06-20 12:15:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57232
;

-- Jun 20, 2014 12:15:57 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57232
;

-- Jun 20, 2014 12:15:57 PM VET
-- LVE HR
UPDATE AD_Column SET ColumnName='ValidConcept_ID', Name='Valid Concept', Description='Concept of Validation ', Help=NULL WHERE AD_Element_ID=57232
;

-- Jun 20, 2014 12:15:57 PM VET
-- LVE HR
UPDATE AD_Process_Para SET ColumnName='ValidConcept_ID', Name='Valid Concept', Description='Concept of Validation ', Help=NULL, AD_Element_ID=57232 WHERE UPPER(ColumnName)='VALIDCONCEPT_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jun 20, 2014 12:15:57 PM VET
-- LVE HR
UPDATE AD_Process_Para SET ColumnName='ValidConcept_ID', Name='Valid Concept', Description='Concept of Validation ', Help=NULL WHERE AD_Element_ID=57232 AND IsCentrallyMaintained='Y'
;

-- Jun 20, 2014 12:15:57 PM VET
-- LVE HR
UPDATE AD_Field SET Name='Valid Concept', Description='Concept of Validation ', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57232) AND IsCentrallyMaintained='Y'
;

-- Jun 20, 2014 12:15:57 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem pi SET PrintName='Valid Concept', Name='Valid Concept' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=57232)
;

