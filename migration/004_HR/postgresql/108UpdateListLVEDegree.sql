-- Jul 3, 2014 11:26:14 AM VET
-- LVE HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54415,TO_TIMESTAMP('2014-07-03 11:26:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Técnico 1',TO_TIMESTAMP('2014-07-03 11:26:06','YYYY-MM-DD HH24:MI:SS'),100,'T1')
;

-- Jul 3, 2014 11:26:14 AM VET
-- LVE HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54415 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Jul 3, 2014 11:26:36 AM VET
-- LVE HR
UPDATE AD_Ref_List SET Name='Technical 1',Updated=TO_TIMESTAMP('2014-07-03 11:26:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54415
;

-- Jul 3, 2014 11:26:36 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54415
;

-- Jul 3, 2014 11:26:54 AM VET
-- LVE HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54416,TO_TIMESTAMP('2014-07-03 11:26:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Technical 2',TO_TIMESTAMP('2014-07-03 11:26:53','YYYY-MM-DD HH24:MI:SS'),100,'T2')
;

-- Jul 3, 2014 11:26:54 AM VET
-- LVE HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54416 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Jul 3, 2014 11:27:04 AM VET
-- LVE HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54417,TO_TIMESTAMP('2014-07-03 11:27:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Technical 3',TO_TIMESTAMP('2014-07-03 11:27:00','YYYY-MM-DD HH24:MI:SS'),100,'T3')
;

-- Jul 3, 2014 11:27:04 AM VET
-- LVE HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54417 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Jul 3, 2014 11:27:12 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET Name='Técnico 2',Updated=TO_TIMESTAMP('2014-07-03 11:27:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54416 AND AD_Language='es_MX'
;

-- Jul 3, 2014 11:27:18 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET Name='Técnico 2',Updated=TO_TIMESTAMP('2014-07-03 11:27:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54416 AND AD_Language='es_VE'
;

-- Jul 3, 2014 11:27:24 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET Name='Técnico 3',Updated=TO_TIMESTAMP('2014-07-03 11:27:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54417 AND AD_Language='es_MX'
;

-- Jul 3, 2014 11:27:27 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET Name='Técnico 3',Updated=TO_TIMESTAMP('2014-07-03 11:27:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54417 AND AD_Language='es_VE'
;

