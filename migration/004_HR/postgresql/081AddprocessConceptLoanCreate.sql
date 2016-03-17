-- Jun 2, 2014 5:27:18 PM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53633,'org.spin.process.ConceptLoanCreate','N',TO_TIMESTAMP('2014-06-02 17:27:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Concept Loan Create','Y',4,4,TO_TIMESTAMP('2014-06-02 17:27:15','YYYY-MM-DD HH24:MI:SS'),100,'prc_ConceptLoanCreate ConceptLoanCreate')
;

-- Jun 2, 2014 5:27:18 PM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53633 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jun 2, 2014 5:27:36 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,620,0,53633,54794,10,'Value',TO_TIMESTAMP('2014-06-02 17:27:34','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique','ECA02',60,'A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','Search Key',10,TO_TIMESTAMP('2014-06-02 17:27:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 2, 2014 5:27:36 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54794 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 2, 2014 5:27:45 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,469,0,53633,54795,10,'Name',TO_TIMESTAMP('2014-06-02 17:27:43','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','N','N','Name',20,TO_TIMESTAMP('2014-06-02 17:27:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 2, 2014 5:27:45 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54795 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 2, 2014 5:27:54 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,275,0,53633,54796,10,'Description',TO_TIMESTAMP('2014-06-02 17:27:51','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02',255,'A description is limited to 255 characters.','Y','Y','N','N','Description',30,TO_TIMESTAMP('2014-06-02 17:27:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 2, 2014 5:27:54 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54796 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 2, 2014 5:29:28 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57179,0,'LVE_HR_I_CC_ID',TO_TIMESTAMP('2014-06-02 17:29:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Category Concept (Incidents)','Category Concept (Incidents)',TO_TIMESTAMP('2014-06-02 17:29:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 2, 2014 5:29:28 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57179 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 2, 2014 5:29:43 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Categoría de Concepto (Incidencias)',PrintName='Categoría de Concepto (Incidencias)',Updated=TO_TIMESTAMP('2014-06-02 17:29:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57179 AND AD_Language='es_MX'
;

-- Jun 2, 2014 5:30:21 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57180,0,'LVE_HR_F_CC_ID',TO_TIMESTAMP('2014-06-02 17:30:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Category Concept (Factor)','Category Concept (Factor)',TO_TIMESTAMP('2014-06-02 17:30:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 2, 2014 5:30:21 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57180 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 2, 2014 5:30:43 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Categoría de Concepto (Factor)',PrintName='Categoría de Concepto (Factor)',Updated=TO_TIMESTAMP('2014-06-02 17:30:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57180 AND AD_Language='es_MX'
;

-- Jun 2, 2014 5:31:34 PM VET
-- LVE HR
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53697,TO_TIMESTAMP('2014-06-02 17:31:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','HR_Concept Category Table',TO_TIMESTAMP('2014-06-02 17:31:32','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Jun 2, 2014 5:31:34 PM VET
-- LVE HR
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53697 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Jun 2, 2014 5:32:01 PM VET
-- LVE HR
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,54956,54962,0,53697,53097,TO_TIMESTAMP('2014-06-02 17:32:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y',TO_TIMESTAMP('2014-06-02 17:32:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 2, 2014 5:32:11 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57179,0,53633,54797,18,53697,'LVE_HR_I_CC_ID',TO_TIMESTAMP('2014-06-02 17:32:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Category Concept (Incidents)',40,TO_TIMESTAMP('2014-06-02 17:32:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 2, 2014 5:32:11 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54797 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 2, 2014 5:32:26 PM VET
-- LVE HR
UPDATE AD_Element SET AD_Reference_ID=18, AD_Reference_Value_ID=53697,Updated=TO_TIMESTAMP('2014-06-02 17:32:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57179
;

-- Jun 2, 2014 5:32:37 PM VET
-- LVE HR
UPDATE AD_Reference SET Name='LVE_HR_Concept Category Table',Updated=TO_TIMESTAMP('2014-06-02 17:32:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53697
;

-- Jun 2, 2014 5:32:37 PM VET
-- LVE HR
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53697
;

-- Jun 2, 2014 5:32:40 PM VET
-- LVE HR
UPDATE AD_Reference SET Name='HR_Concept Category Table',Updated=TO_TIMESTAMP('2014-06-02 17:32:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53697
;

-- Jun 2, 2014 5:32:40 PM VET
-- LVE HR
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53697
;

-- Jun 2, 2014 5:32:50 PM VET
-- LVE HR
UPDATE AD_Element SET AD_Reference_ID=18, AD_Reference_Value_ID=53697,Updated=TO_TIMESTAMP('2014-06-02 17:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57180
;

-- Jun 2, 2014 5:32:53 PM VET
-- LVE HR
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-02 17:32:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54797
;

-- Jun 2, 2014 5:33:01 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57180,0,53633,54798,18,53697,'LVE_HR_F_CC_ID',TO_TIMESTAMP('2014-06-02 17:32:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Category Concept (Factor)',50,TO_TIMESTAMP('2014-06-02 17:32:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 2, 2014 5:33:01 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54798 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 2, 2014 5:33:04 PM VET
-- LVE HR
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-02 17:33:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54798
;

-- Jun 2, 2014 5:33:30 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57181,0,18,53697,'LVE_HR_A_CC_ID',TO_TIMESTAMP('2014-06-02 17:33:28','YYYY-MM-DD HH24:MI:SS'),100,'U',0,'Y','Category Concept (Accumulated)','Category Concept (Accumulated)',TO_TIMESTAMP('2014-06-02 17:33:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 2, 2014 5:33:30 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57181 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 2, 2014 5:33:53 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Categoría de Concepto (Acumulado',PrintName='Categoría de Concepto (Acumulado',Updated=TO_TIMESTAMP('2014-06-02 17:33:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57181 AND AD_Language='es_MX'
;

-- Jun 2, 2014 5:33:56 PM VET
-- LVE HR
UPDATE AD_Element SET EntityType='ECA02',Updated=TO_TIMESTAMP('2014-06-02 17:33:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57181
;

-- Jun 2, 2014 5:34:07 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57181,0,53633,54799,18,53697,'LVE_HR_A_CC_ID',TO_TIMESTAMP('2014-06-02 17:34:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Category Concept (Accumulated)',60,TO_TIMESTAMP('2014-06-02 17:34:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 2, 2014 5:34:07 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54799 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 2, 2014 5:34:19 PM VET
-- LVE HR
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-06-02 17:34:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54797
;

-- Jun 2, 2014 5:34:24 PM VET
-- LVE HR
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-06-02 17:34:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54798
;

-- Jun 2, 2014 5:34:29 PM VET
-- LVE HR
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_TIMESTAMP('2014-06-02 17:34:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54799
;

-- Jun 2, 2014 5:35:00 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57182,0,18,53697,'LVE_HR_D_CC_ID',TO_TIMESTAMP('2014-06-02 17:34:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Category Concept (Deduction)','Category Concept (Deduction)',TO_TIMESTAMP('2014-06-02 17:34:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 2, 2014 5:35:00 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57182 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 2, 2014 5:35:07 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Categoría de Concepto (Acumulado)',PrintName='Categoría de Concepto (Acumulado)',Updated=TO_TIMESTAMP('2014-06-02 17:35:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57181 AND AD_Language='es_MX'
;

-- Jun 2, 2014 5:35:24 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Categoría de Concepto (Deducción)',PrintName='Categoría de Concepto (Deducción)',Updated=TO_TIMESTAMP('2014-06-02 17:35:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57182 AND AD_Language='es_MX'
;

-- Jun 2, 2014 5:35:37 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57182,0,53633,54800,18,53697,'LVE_HR_D_CC_ID',TO_TIMESTAMP('2014-06-02 17:35:34','YYYY-MM-DD HH24:MI:SS'),100,'-1','ECA02',0,'Y','Y','Y','N','Category Concept (Deduction)',70,TO_TIMESTAMP('2014-06-02 17:35:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 2, 2014 5:35:37 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54800 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 2, 2014 5:35:50 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,617,0,53633,54801,15,'ValidFrom',TO_TIMESTAMP('2014-06-02 17:35:48','YYYY-MM-DD HH24:MI:SS'),100,'Valid from including this date (first day)','ECA02',7,'The Valid From date indicates the first day of a date range','Y','Y','Y','N','Valid from',80,TO_TIMESTAMP('2014-06-02 17:35:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 2, 2014 5:35:50 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54801 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 2, 2014 5:36:26 PM VET
-- LVE HR
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53832,0,53633,TO_TIMESTAMP('2014-06-02 17:36:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Concept Loan Create',TO_TIMESTAMP('2014-06-02 17:36:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 2, 2014 5:36:26 PM VET
-- LVE HR
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53832 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jun 2, 2014 5:36:26 PM VET
-- LVE HR
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-06-02 17:36:26','YYYY-MM-DD HH24:MI:SS'),100,'Y',53832,0,999,TO_TIMESTAMP('2014-06-02 17:36:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 2, 2014 5:36:52 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Crear Concepto de Préstamo',Updated=TO_TIMESTAMP('2014-06-02 17:36:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53633 AND AD_Language='es_MX'
;

-- Jun 2, 2014 5:37:00 PM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Crear Concepto de Préstamo',Updated=TO_TIMESTAMP('2014-06-02 17:37:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53832 AND AD_Language='es_MX'
;

-- Jun 2, 2014 5:37:04 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=0,Updated=TO_TIMESTAMP('2014-06-02 17:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53832
;

-- Jun 2, 2014 5:37:04 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=1,Updated=TO_TIMESTAMP('2014-06-02 17:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53607
;

-- Jun 2, 2014 5:37:04 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=2,Updated=TO_TIMESTAMP('2014-06-02 17:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53118
;

-- Jun 2, 2014 5:37:04 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=3,Updated=TO_TIMESTAMP('2014-06-02 17:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53115
;

-- Jun 2, 2014 5:37:04 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=4,Updated=TO_TIMESTAMP('2014-06-02 17:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53119
;

-- Jun 2, 2014 5:37:04 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=5,Updated=TO_TIMESTAMP('2014-06-02 17:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53120
;

-- Jun 2, 2014 5:37:04 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=6,Updated=TO_TIMESTAMP('2014-06-02 17:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53117
;

-- Jun 2, 2014 5:37:04 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=7,Updated=TO_TIMESTAMP('2014-06-02 17:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53123
;

-- Jun 2, 2014 5:37:04 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=8,Updated=TO_TIMESTAMP('2014-06-02 17:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53127
;

-- Jun 2, 2014 5:37:04 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=9,Updated=TO_TIMESTAMP('2014-06-02 17:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53116
;

-- Jun 2, 2014 5:37:04 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=10,Updated=TO_TIMESTAMP('2014-06-02 17:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53121
;

-- Jun 2, 2014 5:37:04 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=11,Updated=TO_TIMESTAMP('2014-06-02 17:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53122
;

-- Jun 2, 2014 5:37:04 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=12,Updated=TO_TIMESTAMP('2014-06-02 17:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53826
;

-- Jun 2, 2014 5:37:05 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=13,Updated=TO_TIMESTAMP('2014-06-02 17:37:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53254
;

-- Jun 2, 2014 5:37:05 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=14,Updated=TO_TIMESTAMP('2014-06-02 17:37:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53255
;

-- Jun 2, 2014 5:37:09 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=13,Updated=TO_TIMESTAMP('2014-06-02 17:37:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53832
;

-- Jun 2, 2014 5:37:09 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=14,Updated=TO_TIMESTAMP('2014-06-02 17:37:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53254
;

-- Jun 2, 2014 5:37:09 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=15,Updated=TO_TIMESTAMP('2014-06-02 17:37:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53255
;

