-- Aug 7, 2014 11:02:04 AM UTC
-- LVE HR
UPDATE AD_Column SET DefaultValue='Y',Updated=TO_DATE('2014-08-07 11:02:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73692
;

-- Aug 7, 2014 11:02:29 AM UTC
-- LVE HR
UPDATE AD_Tab SET WhereClause='IsPayrollAccount=''Y''',Updated=TO_DATE('2014-08-07 11:02:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53106
;

-- Aug 7, 2014 11:02:50 AM UTC
-- LVE HR
UPDATE AD_Tab SET WhereClause='IsPayrollAccount=''N''',Updated=TO_DATE('2014-08-07 11:02:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=226
;

-- Aug 7, 2014 11:03:00 AM UTC
-- LVE HR
UPDATE AD_Column SET DefaultValue='N',Updated=TO_DATE('2014-08-07 11:03:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73692
;

-- Aug 7, 2014 11:03:17 AM UTC
-- LVE HR
UPDATE AD_Field SET DefaultValue='Y',Updated=TO_DATE('2014-08-07 11:03:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74089
;

-- Aug 7, 2014 11:03:48 AM UTC
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,73692,74288,0,226,TO_DATE('2014-08-07 11:03:44','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','Y','Y','N','N','N','N','N','Is Payroll Account',0,280,0,TO_DATE('2014-08-07 11:03:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 7, 2014 11:03:48 AM UTC
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74288 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

