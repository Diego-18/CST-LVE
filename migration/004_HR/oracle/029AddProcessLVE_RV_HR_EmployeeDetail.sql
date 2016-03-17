-- 26/09/2013 09:06:02 PM VET
-- LVE HR
UPDATE AD_Table SET Name='Employee Detail', TableName='LVR_RV_HR_EmployeeDetail',Updated=TO_DATE('2013-09-26 21:06:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53595
;

-- 26/09/2013 09:06:02 PM VET
-- LVE HR
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53595
;

-- 26/09/2013 09:06:05 PM VET
-- LVE HR
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53740,TO_DATE('2013-09-26 21:06:02','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LVR_RV_HR_EmployeeDetail',1,'Y','N','Y','Y','LVR_RV_HR_EmployeeDetail','N',1000000,TO_DATE('2013-09-26 21:06:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2013 09:06:18 PM VET
-- LVE HR
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53064,53595,TO_DATE('2013-09-26 21:06:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVR_RV_HR_EmployeeDetai',TO_DATE('2013-09-26 21:06:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2013 09:06:48 PM VET
-- LVE HR
UPDATE AD_ReportView SET Name='LVR_RV_HR_EmployeeDetail',Updated=TO_DATE('2013-09-26 21:06:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53064
;

-- 26/09/2013 09:07:07 PM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53469,53064,'N',TO_DATE('2013-09-26 21:07:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Employee Detail','Y',0,0,TO_DATE('2013-09-26 21:07:04','YYYY-MM-DD HH24:MI:SS'),100,'LVR_RV_HR_EmployeeDetail EmployeeDetail')
;

-- 26/09/2013 09:07:07 PM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53469 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 26/09/2013 09:07:08 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53469,0,TO_DATE('2013-09-26 21:07:07','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2013-09-26 21:07:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2013 09:07:08 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53469,102,TO_DATE('2013-09-26 21:07:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2013-09-26 21:07:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2013 09:07:08 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53469,103,TO_DATE('2013-09-26 21:07:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2013-09-26 21:07:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2013 09:07:08 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53469,50001,TO_DATE('2013-09-26 21:07:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2013-09-26 21:07:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2013 09:07:09 PM VET
-- LVE HR
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53469,50002,TO_DATE('2013-09-26 21:07:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_DATE('2013-09-26 21:07:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2013 09:07:20 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Detalle de Empleados',Updated=TO_DATE('2013-09-26 21:07:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53469 AND AD_Language='es_MX'
;

-- 26/09/2013 09:08:07 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53469,54021,30,252,'C_BPartner_ID',TO_DATE('2013-09-26 21:08:04','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',10,TO_DATE('2013-09-26 21:08:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2013 09:08:07 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54021 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 26/09/2013 09:09:39 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53393,0,53469,54022,19,'HR_Payroll_ID',TO_DATE('2013-09-26 21:09:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll',20,TO_DATE('2013-09-26 21:09:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2013 09:09:39 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54022 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 26/09/2013 09:10:38 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53390,0,53469,54023,19,'HR_Department_ID',TO_DATE('2013-09-26 21:10:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll Department',30,TO_DATE('2013-09-26 21:10:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2013 09:10:38 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54023 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 26/09/2013 09:11:17 PM VET
-- LVE HR
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53632,0,53469,TO_DATE('2013-09-26 21:11:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Employee Detail',TO_DATE('2013-09-26 21:11:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2013 09:11:17 PM VET
-- LVE HR
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53632 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 26/09/2013 09:11:17 PM VET
-- LVE HR
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2013-09-26 21:11:17','YYYY-MM-DD HH24:MI:SS'),100,'Y',53632,0,999,TO_DATE('2013-09-26 21:11:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/09/2013 09:11:31 PM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Detalle de Empleados',Description='Detalle de Empleados',Updated=TO_DATE('2013-09-26 21:11:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53632 AND AD_Language='es_MX'
;

-- 26/09/2013 09:11:52 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53108, SeqNo=1,Updated=TO_DATE('2013-09-26 21:11:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=531
;

-- 26/09/2013 09:11:52 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53108, SeqNo=2,Updated=TO_DATE('2013-09-26 21:11:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=530
;

-- 26/09/2013 09:11:52 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53108, SeqNo=3,Updated=TO_DATE('2013-09-26 21:11:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53632
;

-- 26/09/2013 09:11:52 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53108, SeqNo=4,Updated=TO_DATE('2013-09-26 21:11:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53109
;

-- 26/09/2013 09:11:52 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53108, SeqNo=5,Updated=TO_DATE('2013-09-26 21:11:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53114
;

-- 26/09/2013 09:12:01 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=0,Updated=TO_DATE('2013-09-26 21:12:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53632
;

-- 26/09/2013 09:12:01 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=1,Updated=TO_DATE('2013-09-26 21:12:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53608
;

-- 26/09/2013 09:20:09 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=15,Updated=TO_DATE('2013-09-26 21:20:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68094
;

-- 26/09/2013 09:20:20 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=15,Updated=TO_DATE('2013-09-26 21:20:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68051
;

-- 26/09/2013 09:20:38 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=53559,Updated=TO_DATE('2013-09-26 21:20:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68045
;

-- 26/09/2013 09:20:55 PM VET
-- LVE HR
UPDATE AD_Element SET ColumnName='BPL_Fax', Name='BPL_Fax', PrintName='BPL_Fax',Updated=TO_DATE('2013-09-26 21:20:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56394
;

-- 26/09/2013 09:20:55 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56394
;

-- 26/09/2013 09:20:55 PM VET
-- LVE HR
UPDATE AD_Column SET ColumnName='BPL_Fax', Name='BPL_Fax', Description=NULL, Help=NULL WHERE AD_Element_ID=56394
;

-- 26/09/2013 09:20:55 PM VET
-- LVE HR
UPDATE AD_Process_Para SET ColumnName='BPL_Fax', Name='BPL_Fax', Description=NULL, Help=NULL, AD_Element_ID=56394 WHERE UPPER(ColumnName)='BPL_FAX' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 26/09/2013 09:20:55 PM VET
-- LVE HR
UPDATE AD_Process_Para SET ColumnName='BPL_Fax', Name='BPL_Fax', Description=NULL, Help=NULL WHERE AD_Element_ID=56394 AND IsCentrallyMaintained='Y'
;

-- 26/09/2013 09:20:55 PM VET
-- LVE HR
UPDATE AD_Field SET Name='BPL_Fax', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56394) AND IsCentrallyMaintained='Y'
;

-- 26/09/2013 09:20:55 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem pi SET PrintName='BPL_Fax', Name='BPL_Fax' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56394)
;

-- 26/09/2013 09:21:01 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='BPL_Fax',PrintName='BPL_Fax',Updated=TO_DATE('2013-09-26 21:21:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56394 AND AD_Language='es_MX'
;

-- 26/09/2013 09:21:16 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Fax',PrintName='Fax',Updated=TO_DATE('2013-09-26 21:21:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56394 AND AD_Language='es_MX'
;

-- 26/09/2013 09:21:45 PM VET
-- LVE HR
UPDATE AD_Element SET ColumnName='BPL_Phone', Name='BPL_Phone', PrintName='BPL_Phone',Updated=TO_DATE('2013-09-26 21:21:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56392
;

-- 26/09/2013 09:21:45 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56392
;

-- 26/09/2013 09:21:45 PM VET
-- LVE HR
UPDATE AD_Column SET ColumnName='BPL_Phone', Name='BPL_Phone', Description=NULL, Help=NULL WHERE AD_Element_ID=56392
;

-- 26/09/2013 09:21:45 PM VET
-- LVE HR
UPDATE AD_Process_Para SET ColumnName='BPL_Phone', Name='BPL_Phone', Description=NULL, Help=NULL, AD_Element_ID=56392 WHERE UPPER(ColumnName)='BPL_PHONE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 26/09/2013 09:21:45 PM VET
-- LVE HR
UPDATE AD_Process_Para SET ColumnName='BPL_Phone', Name='BPL_Phone', Description=NULL, Help=NULL WHERE AD_Element_ID=56392 AND IsCentrallyMaintained='Y'
;

-- 26/09/2013 09:21:45 PM VET
-- LVE HR
UPDATE AD_Field SET Name='BPL_Phone', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56392) AND IsCentrallyMaintained='Y'
;

-- 26/09/2013 09:21:45 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem pi SET PrintName='BPL_Phone', Name='BPL_Phone' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56392)
;

-- 26/09/2013 09:21:53 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Phone',PrintName='Phone',Updated=TO_DATE('2013-09-26 21:21:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56392 AND AD_Language='es_MX'
;

-- 26/09/2013 09:22:16 PM VET
-- LVE HR
UPDATE AD_Element SET ColumnName='BPL_Phone2', Name='BPL_Phone2', PrintName='BPL_Phone2',Updated=TO_DATE('2013-09-26 21:22:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56393
;

-- 26/09/2013 09:22:16 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56393
;

-- 26/09/2013 09:22:16 PM VET
-- LVE HR
UPDATE AD_Column SET ColumnName='BPL_Phone2', Name='BPL_Phone2', Description=NULL, Help=NULL WHERE AD_Element_ID=56393
;

-- 26/09/2013 09:22:16 PM VET
-- LVE HR
UPDATE AD_Process_Para SET ColumnName='BPL_Phone2', Name='BPL_Phone2', Description=NULL, Help=NULL, AD_Element_ID=56393 WHERE UPPER(ColumnName)='BPL_PHONE2' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 26/09/2013 09:22:16 PM VET
-- LVE HR
UPDATE AD_Process_Para SET ColumnName='BPL_Phone2', Name='BPL_Phone2', Description=NULL, Help=NULL WHERE AD_Element_ID=56393 AND IsCentrallyMaintained='Y'
;

-- 26/09/2013 09:22:16 PM VET
-- LVE HR
UPDATE AD_Field SET Name='BPL_Phone2', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56393) AND IsCentrallyMaintained='Y'
;

-- 26/09/2013 09:22:16 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem pi SET PrintName='BPL_Phone2', Name='BPL_Phone2' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56393)
;

-- 26/09/2013 09:22:24 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Phone2',PrintName='Phone2',Updated=TO_DATE('2013-09-26 21:22:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56393 AND AD_Language='es_MX'
;

-- 26/09/2013 09:22:51 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=21,Updated=TO_DATE('2013-09-26 21:22:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68088
;

-- 26/09/2013 09:24:57 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=53243,Updated=TO_DATE('2013-09-26 21:24:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68061
;

-- 26/09/2013 09:33:16 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=15,Updated=TO_DATE('2013-09-26 21:33:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68054
;

-- 26/09/2013 09:33:31 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=53559,Updated=TO_DATE('2013-09-26 21:33:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68099
;

-- 26/09/2013 09:34:14 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=319,Updated=TO_DATE('2013-09-26 21:34:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68046
;

-- 26/09/2013 09:34:25 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=319,Updated=TO_DATE('2013-09-26 21:34:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68100
;

-- 26/09/2013 09:35:49 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=319,Updated=TO_DATE('2013-09-26 21:35:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68049
;

-- 26/09/2013 09:36:09 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=319,Updated=TO_DATE('2013-09-26 21:36:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68047
;

-- 26/09/2013 09:36:20 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=319,Updated=TO_DATE('2013-09-26 21:36:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68048
;

-- 26/09/2013 09:36:29 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=319,Updated=TO_DATE('2013-09-26 21:36:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68063
;

-- 26/09/2013 09:36:45 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=319,Updated=TO_DATE('2013-09-26 21:36:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68102
;

-- 26/09/2013 09:37:04 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=319,Updated=TO_DATE('2013-09-26 21:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68050
;

-- 26/09/2013 09:37:19 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=15,Updated=TO_DATE('2013-09-26 21:37:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68106
;

-- 26/09/2013 09:37:35 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=15,Updated=TO_DATE('2013-09-26 21:37:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68053
;

-- 26/09/2013 09:37:53 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=15,Updated=TO_DATE('2013-09-26 21:37:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68105
;

-- 26/09/2013 09:38:27 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=53558,Updated=TO_DATE('2013-09-26 21:38:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68103
;

-- 26/09/2013 09:38:53 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=15,Updated=TO_DATE('2013-09-26 21:38:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68066
;

-- 26/09/2013 09:38:59 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=15,Updated=TO_DATE('2013-09-26 21:38:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68067
;

-- 26/09/2013 09:41:08 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Val_Rule_ID=NULL,Updated=TO_DATE('2013-09-26 21:41:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68023
;

-- 26/09/2013 09:41:12 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=19,Updated=TO_DATE('2013-09-26 21:41:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68023
;

-- 26/09/2013 10:16:15 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=17,Updated=TO_DATE('2013-09-26 22:16:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68071
;

-- 26/09/2013 10:18:36 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=17,Updated=TO_DATE('2013-09-26 22:18:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68070
;

