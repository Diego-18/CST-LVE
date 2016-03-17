-- Jan 18, 2015 5:27:06 PM EST
-- HR Loan
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,183,54553,TO_DATE('2015-01-18 17:27:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','HR Loan',TO_DATE('2015-01-18 17:27:06','YYYY-MM-DD HH24:MI:SS'),100,'HRC')
;

-- Jan 18, 2015 5:27:06 PM EST
-- HR Loan
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54553 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Jan 18, 2015 5:27:17 PM EST
-- HR Loan
UPDATE AD_Ref_List_Trl SET Name='Préstamo de Nómina',Updated=TO_DATE('2015-01-18 17:27:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54553 AND AD_Language='es_MX'
;

