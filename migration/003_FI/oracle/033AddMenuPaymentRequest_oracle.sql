-- Jul 10, 2014 3:02:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53854,0,53368,TO_DATE('2014-07-10 15:02:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Payment Request ',TO_DATE('2014-07-10 15:02:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 10, 2014 3:02:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53854 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jul 10, 2014 3:02:12 PM VET
-- Farming Technical Assistance
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2014-07-10 15:02:12','YYYY-MM-DD HH24:MI:SS'),100,'Y',53854,0,999,TO_DATE('2014-07-10 15:02:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 10, 2014 3:02:24 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=15,Updated=TO_DATE('2014-07-10 15:02:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53854
;

-- Jul 10, 2014 3:02:24 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=16,Updated=TO_DATE('2014-07-10 15:02:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53193
;

-- Jul 10, 2014 3:02:24 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=155, SeqNo=17,Updated=TO_DATE('2014-07-10 15:02:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=383
;

-- Jul 10, 2014 3:02:52 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0,Updated=TO_DATE('2014-07-10 15:02:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53854
;

-- Jul 10, 2014 3:02:52 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1,Updated=TO_DATE('2014-07-10 15:02:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53647
;

-- Jul 10, 2014 3:02:52 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13,Updated=TO_DATE('2014-07-10 15:02:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Jul 10, 2014 3:02:52 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14,Updated=TO_DATE('2014-07-10 15:02:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000209
;

-- Jul 10, 2014 3:02:52 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15,Updated=TO_DATE('2014-07-10 15:02:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Jul 10, 2014 3:02:52 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16,Updated=TO_DATE('2014-07-10 15:02:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Jul 10, 2014 3:02:52 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17,Updated=TO_DATE('2014-07-10 15:02:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Jul 10, 2014 3:02:53 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18,Updated=TO_DATE('2014-07-10 15:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Jul 10, 2014 3:02:53 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19,Updated=TO_DATE('2014-07-10 15:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Jul 10, 2014 3:02:53 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20,Updated=TO_DATE('2014-07-10 15:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Jul 10, 2014 3:02:53 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21,Updated=TO_DATE('2014-07-10 15:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Jul 10, 2014 3:02:53 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22,Updated=TO_DATE('2014-07-10 15:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Jul 10, 2014 3:02:53 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23,Updated=TO_DATE('2014-07-10 15:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Jul 10, 2014 3:02:53 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24,Updated=TO_DATE('2014-07-10 15:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Jul 10, 2014 3:02:53 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25,Updated=TO_DATE('2014-07-10 15:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Jul 10, 2014 3:02:53 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26,Updated=TO_DATE('2014-07-10 15:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Jul 10, 2014 3:02:53 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27,Updated=TO_DATE('2014-07-10 15:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Jul 10, 2014 3:02:53 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28,Updated=TO_DATE('2014-07-10 15:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Jul 10, 2014 3:02:53 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29,Updated=TO_DATE('2014-07-10 15:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Jul 10, 2014 3:02:53 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30,Updated=TO_DATE('2014-07-10 15:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Jul 10, 2014 3:03:02 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12,Updated=TO_DATE('2014-07-10 15:03:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53854
;

-- Jul 10, 2014 3:03:02 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13,Updated=TO_DATE('2014-07-10 15:03:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000207
;

-- Jul 10, 2014 3:03:02 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14,Updated=TO_DATE('2014-07-10 15:03:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000209
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Jul 10, 2014 3:03:03 PM VET
-- Farming Technical Assistance
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31,Updated=TO_DATE('2014-07-10 15:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53187
;

