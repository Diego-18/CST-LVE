-- 7/08/2014 02:49:16 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,DefaultValue2,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57027,0,53478,54923,12,'SSDiscountRate',TO_TIMESTAMP('2014-08-07 14:49:14','YYYY-MM-DD HH24:MI:SS'),100,'0','999','ECA02',10,'Y','Y','N','Y','Social Security Discount',89,TO_TIMESTAMP('2014-08-07 14:49:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 7/08/2014 02:49:16 PM CEST
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54923 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 7/08/2014 02:49:35 PM CEST
-- LVE-HR
UPDATE AD_Process_Para SET SeqNo=61,Updated=TO_TIMESTAMP('2014-08-07 14:49:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54923
;

