-- Sep 25, 2014 3:41:26 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1384,0,53702,54976,30,343,'C_Payment_ID',TO_TIMESTAMP('2014-09-25 15:41:20','YYYY-MM-DD HH24:MI:SS'),100,'Payment identifier','ECA02',22,'The Payment is a unique identifier of this payment.','Y','Y','N','N','Payment',40,TO_TIMESTAMP('2014-09-25 15:41:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 25, 2014 3:41:26 PM VET
-- LVE ADempiere
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54976 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 25, 2014 3:41:31 PM VET
-- LVE ADempiere
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-09-25 15:41:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54970
;

