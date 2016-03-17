-- Jun 18, 2014 5:26:10 PM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53644,'N',TO_TIMESTAMP('2014-06-18 17:26:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:inf_LoanAccountStatement.jrxml','Loan Account Statement','Y',0,0,TO_TIMESTAMP('2014-06-18 17:26:03','YYYY-MM-DD HH24:MI:SS'),100,'inf_LoanAccountStatement')
;

-- Jun 18, 2014 5:26:10 PM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53644 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jun 18, 2014 5:26:19 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Estado de Cuenta (Prestamo)',Updated=TO_TIMESTAMP('2014-06-18 17:26:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53644 AND AD_Language='es_MX'
;

-- Jun 18, 2014 5:26:21 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Estado de Cuenta (Prestamo)',Updated=TO_TIMESTAMP('2014-06-18 17:26:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53644 AND AD_Language='es_VE'
;

-- Jun 18, 2014 5:26:46 PM VET
-- LVE HR
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53843,0,53644,TO_TIMESTAMP('2014-06-18 17:26:45','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Loan Account Statement',TO_TIMESTAMP('2014-06-18 17:26:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 18, 2014 5:26:46 PM VET
-- LVE HR
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53843 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jun 18, 2014 5:26:46 PM VET
-- LVE HR
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-06-18 17:26:46','YYYY-MM-DD HH24:MI:SS'),100,'Y',53843,0,999,TO_TIMESTAMP('2014-06-18 17:26:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 18, 2014 5:26:54 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=1,Updated=TO_TIMESTAMP('2014-06-18 17:26:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53843
;

-- Jun 18, 2014 5:26:54 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=2,Updated=TO_TIMESTAMP('2014-06-18 17:26:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53607
;

-- Jun 18, 2014 5:26:56 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53838, SeqNo=0,Updated=TO_TIMESTAMP('2014-06-18 17:26:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53843
;

-- Jun 18, 2014 5:26:57 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53838, SeqNo=1,Updated=TO_TIMESTAMP('2014-06-18 17:26:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53837
;

-- Jun 18, 2014 5:27:29 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57208,0,53644,54832,19,'LVE_HR_LoanDefinition_ID',TO_TIMESTAMP('2014-06-18 17:27:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Loan Definition',10,TO_TIMESTAMP('2014-06-18 17:27:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 18, 2014 5:27:29 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54832 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 18, 2014 5:27:36 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53407,0,53644,54833,19,'HR_Process_ID',TO_TIMESTAMP('2014-06-18 17:27:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','Y','N','Payroll Process',20,TO_TIMESTAMP('2014-06-18 17:27:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 18, 2014 5:27:36 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54833 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 18, 2014 5:27:46 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53644,54834,30,'C_BPartner_ID',TO_TIMESTAMP('2014-06-18 17:27:45','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','Business Partner ',30,TO_TIMESTAMP('2014-06-18 17:27:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 18, 2014 5:27:46 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54834 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 18, 2014 5:28:40 PM VET
-- LVE HR
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52368,'LVE_HR_LoanDefinition.Processed = ''Y''',TO_TIMESTAMP('2014-06-18 17:28:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_HR_LoanDefinition In Processed','S',TO_TIMESTAMP('2014-06-18 17:28:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 18, 2014 5:28:46 PM VET
-- LVE HR
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52368,Updated=TO_TIMESTAMP('2014-06-18 17:28:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54832
;

-- Jun 18, 2014 5:30:13 PM VET
-- LVE HR
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52073,Updated=TO_TIMESTAMP('2014-06-18 17:30:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54834
;

