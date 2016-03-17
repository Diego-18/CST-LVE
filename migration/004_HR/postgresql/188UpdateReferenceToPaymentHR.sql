-- Aug 29, 2014 3:42:17 PM VET
-- LVE HR
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53725,TO_TIMESTAMP('2014-08-29 15:42:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','C_Payment Payroll Payment Generated ',TO_TIMESTAMP('2014-08-29 15:42:03','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Aug 29, 2014 3:42:17 PM VET
-- LVE HR
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53725 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Aug 29, 2014 3:42:53 PM VET
-- LVE HR
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,5401,5043,0,53725,335,53383,TO_TIMESTAMP('2014-08-29 15:42:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_TIMESTAMP('2014-08-29 15:42:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 29, 2014 3:43:15 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_Value_ID=53725,Updated=TO_TIMESTAMP('2014-08-29 15:43:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=58742
;

