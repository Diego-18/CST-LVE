-- Apr 30, 2014 11:16:57 AM VET
-- LVE-HR
UPDATE AD_Process_Para SET IsActive='Y',Updated=TO_DATE('2014-04-30 11:16:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54725
;

-- Apr 30, 2014 2:12:24 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57142,0,53622,54738,19,'LVE_HR_ProcessReport_ID',TO_DATE('2014-04-30 14:12:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','HR Process Report',30,TO_DATE('2014-04-30 14:12:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2014 2:12:24 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54738 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Apr 30, 2014 3:43:08 PM VET
-- LVE-HR
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2014-04-30 15:43:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72734
;

-- Apr 30, 2014 4:54:20 PM VET
-- LVE-HR
UPDATE AD_Tab SET OrderByClause='SeqNo',Updated=TO_DATE('2014-04-30 16:54:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53950
;

