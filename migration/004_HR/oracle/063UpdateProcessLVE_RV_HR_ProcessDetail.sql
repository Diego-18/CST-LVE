-- 2/10/2013 10:54:53 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 10:54:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55176
;

-- 2/10/2013 10:54:53 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 10:54:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55172
;

-- 2/10/2013 10:56:12 AM VET
-- LVE HR
UPDATE AD_Column SET ColumnSQL='CASE WHEN CategoryValue IN (''AS'',''DE'') THEN (Amt * -1) ELSE NULL END',Updated=TO_DATE('2013-10-02 10:56:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68423
;

-- 2/10/2013 10:58:09 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53393,0,53478,1500053,19,'HR_Payroll_ID',TO_DATE('2013-10-02 10:58:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll',40,TO_DATE('2013-10-02 10:58:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2/10/2013 10:58:09 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1500053 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 2/10/2013 10:58:25 AM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=50,Updated=TO_DATE('2013-10-02 10:58:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54109
;

-- 2/10/2013 10:58:31 AM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=60,Updated=TO_DATE('2013-10-02 10:58:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54110
;

-- 2/10/2013 10:58:56 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Detalle de Nómina',Updated=TO_DATE('2013-10-02 10:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53478 AND AD_Language='es_MX'
;

-- 2/10/2013 11:13:14 AM VET
-- LVE HR
UPDATE AD_Column SET ColumnSQL='CASE WHEN CategoryValue IN (''AS'',''DE'') THEN CASE WHEN CategoryValue = ''DE'' THEN (Amt * -1) ELSE Amt END END',Updated=TO_DATE('2013-10-02 11:13:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68423
;

-- 2/10/2013 11:13:37 AM VET
-- LVE HR
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2013-10-02 11:13:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1500053
;

-- 2/10/2013 11:16:26 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSummarized='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 11:16:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55172
;

-- 2/10/2013 11:16:29 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSummarized='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 11:16:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55173
;

-- 2/10/2013 11:17:13 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsPrinted='Y', SeqNo=10, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 11:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55189
;

-- 2/10/2013 11:17:13 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=20, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 11:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55188
;

-- 2/10/2013 11:17:13 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=30, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 11:17:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55177
;

-- 2/10/2013 11:17:59 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=10, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 11:17:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55177
;

-- 2/10/2013 11:17:59 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsPrinted='Y', SeqNo=20, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 11:17:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55189
;

-- 2/10/2013 11:17:59 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=30, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 11:17:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55188
;

-- 2/10/2013 11:18:10 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='Y', IsOrderBy='Y', SortNo=1, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 11:18:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55177
;

-- 2/10/2013 11:22:03 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='Y', IsOrderBy='Y', SortNo=3, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 11:22:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55188
;

-- 2/10/2013 11:23:13 AM VET
-- LVE HR
UPDATE AD_PrintFormat SET Name='Detalle de Nomina',Updated=TO_DATE('2013-10-02 11:23:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50147
;

-- 2/10/2013 11:25:38 AM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=20,Updated=TO_DATE('2013-10-02 11:25:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1500053
;

-- 2/10/2013 11:28:30 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,263,0,53478,1500054,15,'dateacct',TO_DATE('2013-10-02 11:28:29','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02',7,'The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','Y','Y','Y','Account Date',70,TO_DATE('2013-10-02 11:28:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2/10/2013 11:28:30 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1500054 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 2/10/2013 11:28:58 AM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=30,Updated=TO_DATE('2013-10-02 11:28:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1500054
;

-- 2/10/2013 11:31:24 AM VET
-- LVE HR
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_DATE('2013-10-02 11:31:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1500054
;

-- 2/10/2013 11:33:07 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53408,0,53478,1500055,19,'HR_Period_ID',TO_DATE('2013-10-02 11:33:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','Y','N','Payroll Period',70,TO_DATE('2013-10-02 11:33:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2/10/2013 11:33:07 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1500055 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

