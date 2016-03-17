-- Jun 12, 2014 10:52:11 AM VET
-- LVE HR
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,53838,0,TO_DATE('2014-06-12 10:52:03','YYYY-MM-DD HH24:MI:SS'),100,'Loan Definition','ECA02','Y','Y','N','N','Y','Loan Definition',TO_DATE('2014-06-12 10:52:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 12, 2014 10:52:11 AM VET
-- LVE HR
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53838 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jun 12, 2014 10:52:11 AM VET
-- LVE HR
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2014-06-12 10:52:11','YYYY-MM-DD HH24:MI:SS'),100,'Y',53838,0,999,TO_DATE('2014-06-12 10:52:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 12, 2014 10:52:15 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=0,Updated=TO_DATE('2014-06-12 10:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53838
;

-- Jun 12, 2014 10:52:15 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=1,Updated=TO_DATE('2014-06-12 10:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53607
;

-- Jun 12, 2014 10:52:15 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=2,Updated=TO_DATE('2014-06-12 10:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53837
;

-- Jun 12, 2014 10:52:15 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=3,Updated=TO_DATE('2014-06-12 10:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53118
;

-- Jun 12, 2014 10:52:15 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=4,Updated=TO_DATE('2014-06-12 10:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53115
;

-- Jun 12, 2014 10:52:15 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=5,Updated=TO_DATE('2014-06-12 10:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53119
;

-- Jun 12, 2014 10:52:15 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=6,Updated=TO_DATE('2014-06-12 10:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53120
;

-- Jun 12, 2014 10:52:15 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=7,Updated=TO_DATE('2014-06-12 10:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53117
;

-- Jun 12, 2014 10:52:15 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=8,Updated=TO_DATE('2014-06-12 10:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53123
;

-- Jun 12, 2014 10:52:15 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=9,Updated=TO_DATE('2014-06-12 10:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53127
;

-- Jun 12, 2014 10:52:15 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=10,Updated=TO_DATE('2014-06-12 10:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53116
;

-- Jun 12, 2014 10:52:15 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=11,Updated=TO_DATE('2014-06-12 10:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53121
;

-- Jun 12, 2014 10:52:15 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=12,Updated=TO_DATE('2014-06-12 10:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53122
;

-- Jun 12, 2014 10:52:15 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=13,Updated=TO_DATE('2014-06-12 10:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53254
;

-- Jun 12, 2014 10:52:15 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=14,Updated=TO_DATE('2014-06-12 10:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53826
;

-- Jun 12, 2014 10:52:15 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=15,Updated=TO_DATE('2014-06-12 10:52:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53255
;

-- Jun 12, 2014 10:52:18 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53838, SeqNo=0,Updated=TO_DATE('2014-06-12 10:52:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53837
;

-- Jun 12, 2014 10:52:38 AM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Préstamo',Description='Préstamo',Updated=TO_DATE('2014-06-12 10:52:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53838 AND AD_Language='es_MX'
;

-- Jun 12, 2014 10:52:41 AM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Préstamo',Description='Préstamo',Updated=TO_DATE('2014-06-12 10:52:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53838 AND AD_Language='es_VE'
;

-- Jun 12, 2014 10:53:30 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Deducción de Préstamo)',PrintName='Concepto (Deducción de Préstamo)',Updated=TO_DATE('2014-06-12 10:53:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57210 AND AD_Language='es_MX'
;

-- Jun 12, 2014 10:53:33 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Deducción de Préstamo)',PrintName='Concepto (Deducción de Préstamo)',Updated=TO_DATE('2014-06-12 10:53:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57210 AND AD_Language='es_VE'
;

-- Jun 12, 2014 10:54:35 AM VET
-- LVE HR
UPDATE AD_Element SET Name='Concept (Days of Month of Interest)', PrintName='Concept (Days of Month of Interest)',Updated=TO_DATE('2014-06-12 10:54:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57219
;

-- Jun 12, 2014 10:54:35 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57219
;

-- Jun 12, 2014 10:54:35 AM VET
-- LVE HR
UPDATE AD_Column SET ColumnName='Interest_DM_Concept_ID', Name='Concept (Days of Month of Interest)', Description=NULL, Help=NULL WHERE AD_Element_ID=57219
;

-- Jun 12, 2014 10:54:35 AM VET
-- LVE HR
UPDATE AD_Process_Para SET ColumnName='Interest_DM_Concept_ID', Name='Concept (Days of Month of Interest)', Description=NULL, Help=NULL, AD_Element_ID=57219 WHERE UPPER(ColumnName)='INTEREST_DM_CONCEPT_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jun 12, 2014 10:54:35 AM VET
-- LVE HR
UPDATE AD_Process_Para SET ColumnName='Interest_DM_Concept_ID', Name='Concept (Days of Month of Interest)', Description=NULL, Help=NULL WHERE AD_Element_ID=57219 AND IsCentrallyMaintained='Y'
;

-- Jun 12, 2014 10:54:35 AM VET
-- LVE HR
UPDATE AD_Field SET Name='Concept (Days of Month of Interest)', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57219) AND IsCentrallyMaintained='Y'
;

-- Jun 12, 2014 10:54:35 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem pi SET PrintName='Concept (Days of Month of Interest)', Name='Concept (Days of Month of Interest)' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=57219)
;

-- Jun 12, 2014 11:27:38 AM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53637,'N',TO_DATE('2014-06-12 11:27:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_LVE_HR_ECDeterminedbyTime.jrxml','Employment Contract Determined by Time','Y',0,0,TO_DATE('2014-06-12 11:27:31','YYYY-MM-DD HH24:MI:SS'),100,'inf_LVE_HR_ECDeterminedbyTime')
;

-- Jun 12, 2014 11:27:38 AM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53637 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jun 12, 2014 11:27:45 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Contrato de Trabajo por Tiempo Determinado',Updated=TO_DATE('2014-06-12 11:27:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53637 AND AD_Language='es_MX'
;

-- Jun 12, 2014 11:27:48 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Contrato de Trabajo por Tiempo Determinado',Updated=TO_DATE('2014-06-12 11:27:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53637 AND AD_Language='es_VE'
;

-- Jun 12, 2014 11:34:37 AM VET
-- LVE HR
INSERT INTO AD_Attachment (AD_Attachment_ID,AD_Client_ID,AD_Org_ID,AD_Table_ID,Created,CreatedBy,IsActive,Record_ID,TextMsg,Title,Updated,UpdatedBy) VALUES (50009,0,0,284,TO_DATE('2014-06-12 11:34:19','YYYY-MM-DD HH24:MI:SS'),100,'Y',53637,NULL,'zip',TO_DATE('2014-06-12 11:34:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 12, 2014 11:38:16 AM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53638,'N',TO_DATE('2014-06-12 11:38:13','YYYY-MM-DD HH24:MI:SS'),100,NULL,'ECA02','Y','N','N','Y','N','Emplyment Contract for Unknown Time','Y',0,0,TO_DATE('2014-06-12 11:38:13','YYYY-MM-DD HH24:MI:SS'),100,'inf:LVE_HR_ECForUnknowTime')
;

-- Jun 12, 2014 11:38:16 AM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53638 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jun 12, 2014 11:40:07 AM VET
-- LVE HR
UPDATE AD_Process SET JasperReport='attachment:inf_LVE_HR_ECForUnknowTime.jrxml', Value='inf_LVE_HR_ECForUnknowTime',Updated=TO_DATE('2014-06-12 11:40:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53638
;

-- Jun 12, 2014 11:40:39 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Contrato de Trabajo por Tiempo Indeterminado',Updated=TO_DATE('2014-06-12 11:40:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53638 AND AD_Language='es_MX'
;

-- Jun 12, 2014 11:40:41 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Contrato de Trabajo por Tiempo Indeterminado',Updated=TO_DATE('2014-06-12 11:40:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53638 AND AD_Language='es_VE'
;

-- Jun 12, 2014 11:45:15 AM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53639,'N',TO_DATE('2014-06-12 11:45:14','YYYY-MM-DD HH24:MI:SS'),100,NULL,'ECA02','Y','N','N','Y','N','attachment:inf_LVE_HR_IWContractforProbation.jrxml','Individual Work Contract for Probation','Y',0,0,TO_DATE('2014-06-12 11:45:14','YYYY-MM-DD HH24:MI:SS'),100,'inf_LVE_HR_IWContractforProbation')
;

-- Jun 12, 2014 11:45:15 AM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53639 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jun 12, 2014 11:45:27 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Contrato Individual de Trabajo por Periodo de Prueba',Updated=TO_DATE('2014-06-12 11:45:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53639 AND AD_Language='es_MX'
;

-- Jun 12, 2014 11:45:29 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Contrato Individual de Trabajo por Periodo de Prueba',Updated=TO_DATE('2014-06-12 11:45:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53639 AND AD_Language='es_VE'
;

-- Jun 12, 2014 11:50:17 AM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53640,'N',TO_DATE('2014-06-12 11:50:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_LVE_HR_ECToSubstitute.jrxml','Employment Contract to Substitute','Y',0,0,TO_DATE('2014-06-12 11:50:15','YYYY-MM-DD HH24:MI:SS'),100,'inf_LVE_HR_ECToSubstitute')
;

-- Jun 12, 2014 11:50:17 AM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53640 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jun 12, 2014 11:56:28 AM VET
-- LVE HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50222,100,100,53090,'N',TO_DATE('2014-06-12 11:56:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53637,'Employment Contract Determined by Time',TO_DATE('2014-06-12 11:56:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 12, 2014 11:56:43 AM VET
-- LVE HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50223,100,100,53090,'N',TO_DATE('2014-06-12 11:56:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53638,'Emplyment Contract for Unknown Time',TO_DATE('2014-06-12 11:56:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 12, 2014 11:56:53 AM VET
-- LVE HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50224,100,100,53090,'N',TO_DATE('2014-06-12 11:56:52','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53639,'Individual Work Contract for Probation',TO_DATE('2014-06-12 11:56:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 12, 2014 11:57:09 AM VET
-- LVE HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,JasperProcess_ID,Name,Updated,UpdatedBy) VALUES (0,0,100,130,50225,100,100,53090,'N',TO_DATE('2014-06-12 11:57:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y',53640,'Employment Contract to Substitute',TO_DATE('2014-06-12 11:57:08','YYYY-MM-DD HH24:MI:SS'),100)
;

