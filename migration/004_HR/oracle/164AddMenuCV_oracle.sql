-- 11/08/2014 04:30:00 PM VET
-- LVE HR
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53870,0,53653,TO_DATE('2014-08-11 16:29:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Expiration of Contract/Vacation',TO_DATE('2014-08-11 16:29:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/08/2014 04:30:00 PM VET
-- LVE HR
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53870 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 11/08/2014 04:30:00 PM VET
-- LVE HR
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2014-08-11 16:30:00','YYYY-MM-DD HH24:MI:SS'),100,'Y',53870,0,999,TO_DATE('2014-08-11 16:30:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/08/2014 04:31:09 PM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Vencimiento De Contratos/Vacaciones',Updated=TO_DATE('2014-08-11 16:31:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53870 AND AD_Language='es_MX'
;

