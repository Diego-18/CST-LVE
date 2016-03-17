-- Sep 23, 2014 5:40:24 PM VET
-- LVE EFT
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53702,'org.spin.process.EmailNotificationOfPayment','N',TO_TIMESTAMP('2014-09-23 17:40:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','Email Notification of Payment','Y',0,0,TO_TIMESTAMP('2014-09-23 17:40:14','YYYY-MM-DD HH24:MI:SS'),100,'prc_EmailNotificationofPayment')
;

-- Sep 23, 2014 5:40:24 PM VET
-- LVE EFT
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53702 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Sep 23, 2014 5:40:38 PM VET
-- LVE EFT
UPDATE AD_Process_Trl SET Name='Enviar Notificación de Pago',Updated=TO_TIMESTAMP('2014-09-23 17:40:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53702 AND AD_Language='es_MX'
;

-- Sep 23, 2014 5:41:12 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1515,0,53702,54969,19,'R_MailText_ID',TO_TIMESTAMP('2014-09-23 17:41:07','YYYY-MM-DD HH24:MI:SS'),100,'Text templates for mailings','ECA02',22,'The Mail Template indicates the mail template for return messages. Mail text can include variables.  The priority of parsing is User/Contact, Business Partner and then the underlying business object (like Request, Dunning, Workflow object).<br>
So, @Name@ would resolve into the User name (if user is defined defined), then Business Partner name (if business partner is defined) and then the Name of the business object if it has a Name.<br>
For Multi-Lingual systems, the template is translated based on the Business Partner''s language selection.','Y','Y','Y','N','Mail Template',10,TO_TIMESTAMP('2014-09-23 17:41:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2014 5:41:12 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54969 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 23, 2014 5:42:07 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1465,0,53702,54970,18,3000206,'C_PaymentBatch_ID',TO_TIMESTAMP('2014-09-23 17:42:05','YYYY-MM-DD HH24:MI:SS'),100,'Payment batch for EFT','ECA02',22,'Electronic Fund Transfer Payment Batch.','Y','Y','N','N','Payment Batch',20,TO_TIMESTAMP('2014-09-23 17:42:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2014 5:42:07 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54970 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 23, 2014 5:42:52 PM VET
-- LVE EFT
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53878,0,53702,TO_TIMESTAMP('2014-09-23 17:42:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Email Notification of Payment',TO_TIMESTAMP('2014-09-23 17:42:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2014 5:42:53 PM VET
-- LVE EFT
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53878 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Sep 23, 2014 5:42:53 PM VET
-- LVE EFT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-09-23 17:42:53','YYYY-MM-DD HH24:MI:SS'),100,'Y',53878,0,999,TO_TIMESTAMP('2014-09-23 17:42:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 23, 2014 5:43:29 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0,Updated=TO_TIMESTAMP('2014-09-23 17:43:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53863
;

-- Sep 23, 2014 5:43:29 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1,Updated=TO_TIMESTAMP('2014-09-23 17:43:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53647
;

-- Sep 23, 2014 5:43:29 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2,Updated=TO_TIMESTAMP('2014-09-23 17:43:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53627
;

-- Sep 23, 2014 5:43:30 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3,Updated=TO_TIMESTAMP('2014-09-23 17:43:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Sep 23, 2014 5:43:30 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4,Updated=TO_TIMESTAMP('2014-09-23 17:43:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Sep 23, 2014 5:43:30 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5,Updated=TO_TIMESTAMP('2014-09-23 17:43:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Sep 23, 2014 5:43:30 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6,Updated=TO_TIMESTAMP('2014-09-23 17:43:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Sep 23, 2014 5:43:30 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7,Updated=TO_TIMESTAMP('2014-09-23 17:43:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53878
;

-- Sep 23, 2014 5:43:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=53863, SeqNo=0,Updated=TO_TIMESTAMP('2014-09-23 17:43:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53878
;

-- Sep 23, 2014 5:43:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=53863, SeqNo=1,Updated=TO_TIMESTAMP('2014-09-23 17:43:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53864
;

-- Sep 23, 2014 5:43:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=53863, SeqNo=2,Updated=TO_TIMESTAMP('2014-09-23 17:43:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53854
;

-- Sep 23, 2014 5:43:35 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=53863, SeqNo=2,Updated=TO_TIMESTAMP('2014-09-23 17:43:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53878
;

-- Sep 23, 2014 5:43:35 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=53863, SeqNo=3,Updated=TO_TIMESTAMP('2014-09-23 17:43:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53854
;

