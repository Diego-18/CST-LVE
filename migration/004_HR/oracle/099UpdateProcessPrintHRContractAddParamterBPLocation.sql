-- Jun 23, 2014 11:26:01 AM VET
-- LVE HR
UPDATE AD_Process SET ShowHelp='Y',Updated=TO_DATE('2014-06-23 11:26:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53628
;

-- Jun 23, 2014 11:27:13 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,189,0,53635,54847,19,131,'C_BPartner_Location_ID',TO_DATE('2014-06-23 11:27:09','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the (ship to) address for this Business Partner','ECA02',22,'The Partner address indicates the location of a Business Partner','Y','Y','Y','N','Partner Location',10,TO_DATE('2014-06-23 11:27:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 23, 2014 11:27:13 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54847 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 23, 2014 4:11:42 PM VET
-- LVE HR
UPDATE AD_Process_Para SET AD_Val_Rule_ID=200,Updated=TO_DATE('2014-06-23 16:11:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54847
;

