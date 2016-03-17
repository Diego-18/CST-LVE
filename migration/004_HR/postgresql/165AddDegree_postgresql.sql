-- 12/08/2014 03:15:28 PM CEST
-- LVE-HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53560,54445,TO_TIMESTAMP('2014-08-12 15:14:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Secundary 6',TO_TIMESTAMP('2014-08-12 15:14:55','YYYY-MM-DD HH24:MI:SS'),100,'S6')
;

-- 12/08/2014 03:15:28 PM CEST
-- LVE-HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54445 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 12/08/2014 03:15:51 PM CEST
-- LVE-HR
UPDATE AD_Ref_List_Trl SET Name='3er. Año (CD)',Updated=TO_TIMESTAMP('2014-08-12 15:15:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54445 AND AD_Language='es_MX'
;

