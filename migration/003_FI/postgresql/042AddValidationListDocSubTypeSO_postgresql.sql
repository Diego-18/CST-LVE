-- 11/07/2014 12:05:25 PM VET
-- LVE-EFT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,148,54419,TO_TIMESTAMP('2014-07-11 12:05:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Payment Request',TO_TIMESTAMP('2014-07-11 12:05:24','YYYY-MM-DD HH24:MI:SS'),100,'PRQ')
;

-- 11/07/2014 12:05:25 PM VET
-- LVE-EFT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54419 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 11/07/2014 12:06:30 PM VET
-- LVE-EFT
UPDATE AD_Ref_List_Trl SET Name='Orden de Pago',Updated=TO_TIMESTAMP('2014-07-11 12:06:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54419 AND AD_Language='es_MX'
;

