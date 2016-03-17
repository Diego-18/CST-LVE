-- 18/01/2015 05:12:23 PM EST
-- HR Loan
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53918,0,53396,TO_DATE('2015-01-18 17:12:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','HR Loan',TO_DATE('2015-01-18 17:12:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/01/2015 05:12:23 PM EST
-- HR Loan
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53918 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 18/01/2015 05:12:23 PM EST
-- HR Loan
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2015-01-18 17:12:23','YYYY-MM-DD HH24:MI:SS'),100,'Y',53918,0,999,TO_DATE('2015-01-18 17:12:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/01/2015 05:12:29 PM EST
-- HR Loan
UPDATE AD_TreeNodeMM SET Parent_ID=53838, SeqNo=1,Updated=TO_DATE('2015-01-18 17:12:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53918
;

-- 18/01/2015 05:12:29 PM EST
-- HR Loan
UPDATE AD_TreeNodeMM SET Parent_ID=53838, SeqNo=2,Updated=TO_DATE('2015-01-18 17:12:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53837
;

