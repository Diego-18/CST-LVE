-- Sep 24, 2013 9:32:10 AM VET
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53561,54096,TO_TIMESTAMP('2013-09-24 09:31:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Concubinage',TO_TIMESTAMP('2013-09-24 09:31:58','YYYY-MM-DD HH24:MI:SS'),100,'C')
;

-- Sep 24, 2013 9:32:10 AM VET
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54096 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Sep 24, 2013 9:32:23 AM VET
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='Concubino/Concubina',Updated=TO_TIMESTAMP('2013-09-24 09:32:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54096 AND AD_Language='es_MX'
;

