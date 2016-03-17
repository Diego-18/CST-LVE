-- 2/10/2013 10:37:45 AM VET
-- LVE HR
UPDATE AD_ReportView SET AD_Table_ID=53607, Name='LVE_RV_HR_ProcessDetail',Updated=TO_TIMESTAMP('2013-10-02 10:37:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53072
;

-- 2/10/2013 10:38:18 AM VET
-- LVE HR
UPDATE AD_Process SET Name='Process Detail', Value='LVE_RV_HR_ProcessDetail ProcessDetail',Updated=TO_TIMESTAMP('2013-10-02 10:38:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53478
;

-- 2/10/2013 10:38:18 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53478
;

-- 2/10/2013 10:38:18 AM VET
-- LVE HR
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='Process Detail',Updated=TO_TIMESTAMP('2013-10-02 10:38:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53642
;

-- 2/10/2013 10:38:18 AM VET
-- LVE HR
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53642
;

-- 2/10/2013 10:38:49 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53478,54111,30,'C_BPartner_ID',TO_TIMESTAMP('2013-10-02 10:38:48','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',40,TO_TIMESTAMP('2013-10-02 10:38:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2/10/2013 10:38:49 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54111 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 2/10/2013 10:38:59 AM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=10,Updated=TO_TIMESTAMP('2013-10-02 10:38:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54111
;

-- 2/10/2013 12:12:00 PM VET
-- LVE HR
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=54113
;

-- 2/10/2013 12:12:00 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54113
;

-- 2/10/2013 12:12:38 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53407,0,53478,54117,19,52072,'HR_Process_ID',TO_TIMESTAMP('2013-10-02 12:12:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','Y','N','Payroll Process',59,TO_TIMESTAMP('2013-10-02 12:12:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2/10/2013 12:12:38 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54117 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 2/10/2013 12:13:07 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=19,Updated=TO_TIMESTAMP('2013-10-02 12:13:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54117
;

