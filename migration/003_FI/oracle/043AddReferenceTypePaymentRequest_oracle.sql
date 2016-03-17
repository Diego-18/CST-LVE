-- 11/07/2014 02:14:26 PM VET
-- LVE-EFT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53707,TO_DATE('2014-07-11 14:14:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','Type Payment Request',TO_DATE('2014-07-11 14:14:22','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 11/07/2014 02:14:26 PM VET
-- LVE-EFT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53707 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 11/07/2014 02:16:04 PM VET
-- LVE-EFT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53707,54420,TO_DATE('2014-07-11 14:15:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','AP Invoice',TO_DATE('2014-07-11 14:15:12','YYYY-MM-DD HH24:MI:SS'),100,'API')
;

-- 11/07/2014 02:16:04 PM VET
-- LVE-EFT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54420 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 11/07/2014 02:28:49 PM VET
-- LVE-EFT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53707,54421,TO_DATE('2014-07-11 14:28:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Purchase Order',TO_DATE('2014-07-11 14:28:48','YYYY-MM-DD HH24:MI:SS'),100,'POO')
;

-- 11/07/2014 02:28:49 PM VET
-- LVE-EFT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54421 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 11/07/2014 02:37:24 PM VET
-- LVE-EFT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53707,54422,TO_DATE('2014-07-11 14:37:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','GL Journal',TO_DATE('2014-07-11 14:37:23','YYYY-MM-DD HH24:MI:SS'),100,'GLJ')
;

-- 11/07/2014 02:37:24 PM VET
-- LVE-EFT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54422 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 11/07/2014 02:42:30 PM VET
-- LVE-EFT
UPDATE AD_Ref_List_Trl SET Name='Orden de Compra',Updated=TO_DATE('2014-07-11 14:42:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54421 AND AD_Language='es_MX'
;

-- 11/07/2014 02:43:56 PM VET
-- LVE-EFT
UPDATE AD_Ref_List_Trl SET Name='Diario Contable',Updated=TO_DATE('2014-07-11 14:43:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54422 AND AD_Language='es_MX'
;

-- 11/07/2014 02:44:38 PM VET
-- LVE-EFT
UPDATE AD_Ref_List_Trl SET Name='Factura CxP',Updated=TO_DATE('2014-07-11 14:44:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54420 AND AD_Language='es_MX'
;

