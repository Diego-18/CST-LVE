-- Jun 21, 2014 1:56:11 PM VET
-- LVE HR
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-21 13:56:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54744
;

-- Jun 21, 2014 1:56:15 PM VET
-- LVE HR
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-06-21 13:56:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54751
;

-- Jun 21, 2014 1:59:11 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56701,0,53471,54845,17,53557,'EmployeeStatus',TO_TIMESTAMP('2014-06-21 13:59:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',2,'Y','Y','N','N','Employee Status',150,TO_TIMESTAMP('2014-06-21 13:59:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 21, 2014 1:59:11 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54845 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 21, 2014 1:59:19 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=160,Updated=TO_TIMESTAMP('2014-06-21 13:59:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54067
;

-- Jun 21, 2014 2:02:25 PM VET
-- LVE HR
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=54845
;

-- Jun 21, 2014 2:02:25 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54845
;

-- Jun 21, 2014 2:03:08 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56701,0,53476,54846,17,53557,'EmployeeStatus',TO_TIMESTAMP('2014-06-21 14:03:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',2,'Y','Y','N','N','Employee Status',200,TO_TIMESTAMP('2014-06-21 14:03:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 21, 2014 2:03:08 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54846 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 21, 2014 2:03:18 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=210,Updated=TO_TIMESTAMP('2014-06-21 14:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54103
;

-- Jun 21, 2014 2:04:57 PM VET
-- LVE HR
UPDATE AD_Process_Para SET IsMandatory='Y', IsRange='N',Updated=TO_TIMESTAMP('2014-06-21 14:04:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54751
;

