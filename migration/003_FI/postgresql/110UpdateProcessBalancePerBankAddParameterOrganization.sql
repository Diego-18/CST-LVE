-- Nov 12, 2014 9:45:22 AM VET
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53715,55032,19,'AD_Org_ID',TO_TIMESTAMP('2014-11-12 09:45:15','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',5,TO_TIMESTAMP('2014-11-12 09:45:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 12, 2014 9:45:22 AM VET
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55032 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 12, 2014 9:46:08 AM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='C_BankAccount.C_Bank_ID = @C_Bank_ID@ AND C_BankAccount.AD_Org_ID = @AD_Org_ID@', Name='C_BankAccount of Bank and Organization',Updated=TO_TIMESTAMP('2014-11-12 09:46:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52406
;

-- Nov 12, 2014 9:55:31 AM VET
-- LVE EFT
UPDATE AD_Process_Para SET AD_Val_Rule_ID=NULL,Updated=TO_TIMESTAMP('2014-11-12 09:55:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55029
;

