-- Jun 25, 2014 2:36:12 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73227,57027,0,22,53596,'SSDiscountRate',TO_DATE('2014-06-25 14:36:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Social Security Discount',TO_DATE('2014-06-25 14:36:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 25, 2014 2:36:12 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73227 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 25, 2014 2:37:11 PM VET
-- LVE HR
UPDATE AD_Element SET AD_Reference_ID=15, FieldLength=7,Updated=TO_DATE('2014-06-25 14:37:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56369
;

-- Jun 25, 2014 2:37:27 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56369,0,53471,54848,15,'BP_Birthday',TO_DATE('2014-06-25 14:37:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',7,'Y','Y','N','N','Business Partner Birthday',150,TO_DATE('2014-06-25 14:37:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 25, 2014 2:37:27 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54848 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 25, 2014 2:37:29 PM VET
-- LVE HR
UPDATE AD_Process_Para SET IsRange='Y',Updated=TO_DATE('2014-06-25 14:37:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54848
;

-- Jun 25, 2014 2:40:16 PM VET
-- LVE HR
UPDATE AD_Element SET AD_Reference_ID=17, AD_Reference_Value_ID=53559,Updated=TO_DATE('2014-06-25 14:40:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56372
;

-- Jun 25, 2014 2:40:30 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56372,0,53471,54849,17,53559,'BP_Gender',TO_DATE('2014-06-25 14:40:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Business Partner Gender',163,TO_DATE('2014-06-25 14:40:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 25, 2014 2:40:30 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54849 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 25, 2014 2:40:56 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57027,0,53471,54850,12,'SSDiscountRate',TO_DATE('2014-06-25 14:40:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','Y','Social Security Discount',170,TO_DATE('2014-06-25 14:40:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 25, 2014 2:40:56 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54850 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 25, 2014 2:41:16 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=180,Updated=TO_DATE('2014-06-25 14:41:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54067
;

-- Jun 25, 2014 2:41:31 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=140,Updated=TO_DATE('2014-06-25 14:41:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54849
;

-- Jun 25, 2014 2:41:53 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=160,Updated=TO_DATE('2014-06-25 14:41:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54848
;

-- Jun 25, 2014 2:41:57 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=150,Updated=TO_DATE('2014-06-25 14:41:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54850
;

