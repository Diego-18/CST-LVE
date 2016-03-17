-- 27/09/2013 04:36:48 PM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Empleados',Updated=TO_DATE('2013-09-27 16:36:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53634 AND AD_Language='es_MX'
;

-- 27/09/2013 04:37:19 PM VET
-- LVE HR
UPDATE AD_Process SET Value='LVE_RV_HR_EmployeeLoadingFamily LoadFam',Updated=TO_DATE('2013-09-27 16:37:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53472
;

-- 27/09/2013 04:37:35 PM VET
-- LVE HR
UPDATE AD_Process_Para SET AD_Reference_ID=17, AD_Reference_Value_ID=319,Updated=TO_DATE('2013-09-27 16:37:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54045
;

-- 27/09/2013 04:37:45 PM VET
-- LVE HR
UPDATE AD_Process_Para SET AD_Reference_ID=17, AD_Reference_Value_ID=319,Updated=TO_DATE('2013-09-27 16:37:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54046
;

-- 27/09/2013 04:37:53 PM VET
-- LVE HR
UPDATE AD_Process_Para SET AD_Reference_ID=17, AD_Reference_Value_ID=319,Updated=TO_DATE('2013-09-27 16:37:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54047
;

-- 27/09/2013 04:38:00 PM VET
-- LVE HR
UPDATE AD_Process_Para SET AD_Reference_ID=17, AD_Reference_Value_ID=319,Updated=TO_DATE('2013-09-27 16:38:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54048
;

-- 27/09/2013 04:38:20 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54021
;

-- 27/09/2013 04:38:20 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54021
;

-- 27/09/2013 04:38:23 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54022
;

-- 27/09/2013 04:38:23 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54022
;

-- 27/09/2013 04:38:25 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54023
;

-- 27/09/2013 04:38:25 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54023
;

-- 27/09/2013 04:38:51 PM VET
-- LVE HR
UPDATE AD_Process_Para SET AD_Reference_ID=17, AD_Reference_Value_ID=319,Updated=TO_DATE('2013-09-27 16:38:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54033
;

-- 27/09/2013 04:38:57 PM VET
-- LVE HR
UPDATE AD_Process_Para SET AD_Reference_ID=17, AD_Reference_Value_ID=319,Updated=TO_DATE('2013-09-27 16:38:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54034
;

-- 27/09/2013 04:39:05 PM VET
-- LVE HR
UPDATE AD_Process_Para SET AD_Reference_ID=17, AD_Reference_Value_ID=319,Updated=TO_DATE('2013-09-27 16:39:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54035
;

-- 27/09/2013 04:39:12 PM VET
-- LVE HR
UPDATE AD_Process_Para SET AD_Reference_ID=17, AD_Reference_Value_ID=319,Updated=TO_DATE('2013-09-27 16:39:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54036
;

-- 27/09/2013 04:39:33 PM VET
-- LVE HR
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=NULL, AD_ReportView_ID=53066, AD_Workflow_ID=NULL, Classname=NULL, Description=NULL, Help=NULL, IsBetaFunctionality='N', IsDirectPrint='N', IsReport='Y', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_DATE('2013-09-27 16:39:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53469
;

-- 27/09/2013 04:39:33 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53469
;

-- 27/09/2013 04:39:33 PM VET
-- LVE HR
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='Employee Detail',Updated=TO_DATE('2013-09-27 16:39:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53632
;

-- 27/09/2013 04:39:33 PM VET
-- LVE HR
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53632
;

-- 27/09/2013 04:39:36 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53469,54050,30,252,'C_BPartner_ID',TO_DATE('2013-09-27 16:39:33','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',10,TO_DATE('2013-09-27 16:39:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:39:36 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54050 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:39:37 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53393,0,53469,54051,19,'HR_Payroll_ID',TO_DATE('2013-09-27 16:39:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll',20,TO_DATE('2013-09-27 16:39:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:39:38 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54051 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:39:39 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53390,0,53469,54052,19,'HR_Department_ID',TO_DATE('2013-09-27 16:39:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll Department',30,TO_DATE('2013-09-27 16:39:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:39:39 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54052 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:39:40 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56356,0,53469,54053,17,319,'IsCAPTA',TO_DATE('2013-09-27 16:39:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Contribute C.A.P.T.A.',40,TO_DATE('2013-09-27 16:39:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:39:40 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54053 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:39:41 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56357,0,53469,54054,17,319,'IsGrowthPlan',TO_DATE('2013-09-27 16:39:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Has Growth Plan',50,TO_DATE('2013-09-27 16:39:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:39:41 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54054 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:39:42 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56355,0,53469,54055,17,319,'IsJubilate',TO_DATE('2013-09-27 16:39:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Is Jubilate',60,TO_DATE('2013-09-27 16:39:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:39:42 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54055 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:39:44 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56358,0,53469,54056,17,319,'IsUnionized',TO_DATE('2013-09-27 16:39:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Is Unionized',70,TO_DATE('2013-09-27 16:39:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:39:44 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54056 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:39:45 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,574,0,53469,54057,15,'StartDate',TO_DATE('2013-09-27 16:39:44','YYYY-MM-DD HH24:MI:SS'),100,'First effective day (inclusive)','ECA02',7,'The Start Date indicates the first or starting date','Y','Y','N','Y','Start Date',80,TO_DATE('2013-09-27 16:39:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:39:45 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54057 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:42:01 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=90,Updated=TO_DATE('2013-09-27 16:42:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54057
;

-- 27/09/2013 04:42:08 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=80,Updated=TO_DATE('2013-09-27 16:42:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54056
;

-- 27/09/2013 04:42:19 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=70,Updated=TO_DATE('2013-09-27 16:42:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54055
;

-- 27/09/2013 04:42:24 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=60,Updated=TO_DATE('2013-09-27 16:42:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54054
;

-- 27/09/2013 04:42:31 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=50,Updated=TO_DATE('2013-09-27 16:42:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54053
;

-- 27/09/2013 04:42:36 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=40,Updated=TO_DATE('2013-09-27 16:42:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54052
;

-- 27/09/2013 04:42:42 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=30,Updated=TO_DATE('2013-09-27 16:42:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54051
;

-- 27/09/2013 04:42:47 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=20,Updated=TO_DATE('2013-09-27 16:42:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54050
;

-- 27/09/2013 04:43:06 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53469,54058,19,'AD_Org_ID',TO_DATE('2013-09-27 16:43:03','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',10,TO_DATE('2013-09-27 16:43:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:43:06 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54058 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:43:25 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54030
;

-- 27/09/2013 04:43:25 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54030
;

-- 27/09/2013 04:43:26 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54031
;

-- 27/09/2013 04:43:26 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54031
;

-- 27/09/2013 04:43:27 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54032
;

-- 27/09/2013 04:43:27 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54032
;

-- 27/09/2013 04:43:28 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54033
;

-- 27/09/2013 04:43:28 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54033
;

-- 27/09/2013 04:43:29 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54034
;

-- 27/09/2013 04:43:29 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54034
;

-- 27/09/2013 04:43:29 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54035
;

-- 27/09/2013 04:43:29 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54035
;

-- 27/09/2013 04:43:30 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54036
;

-- 27/09/2013 04:43:30 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54036
;

-- 27/09/2013 04:43:30 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54037
;

-- 27/09/2013 04:43:30 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54037
;

-- 27/09/2013 04:43:47 PM VET
-- LVE HR
UPDATE AD_Process SET AD_ReportView_ID=NULL,Updated=TO_DATE('2013-09-27 16:43:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53469
;

-- 27/09/2013 04:43:55 PM VET
-- LVE HR
UPDATE AD_Process SET AD_PrintFormat_ID=50134,Updated=TO_DATE('2013-09-27 16:43:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53469
;

-- 27/09/2013 04:44:13 PM VET
-- LVE HR
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=50134, AD_ReportView_ID=NULL, AD_Workflow_ID=NULL, Classname=NULL, Description=NULL, Help=NULL, IsBetaFunctionality='N', IsDirectPrint='N', IsReport='Y', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_DATE('2013-09-27 16:44:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53471
;

-- 27/09/2013 04:44:13 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53471
;

-- 27/09/2013 04:44:13 PM VET
-- LVE HR
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='Employee',Updated=TO_DATE('2013-09-27 16:44:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53634
;

-- 27/09/2013 04:44:13 PM VET
-- LVE HR
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53634
;

-- 27/09/2013 04:44:16 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53471,54059,19,'AD_Org_ID',TO_DATE('2013-09-27 16:44:13','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',10,TO_DATE('2013-09-27 16:44:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:44:16 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54059 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:44:18 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53471,54060,30,252,'C_BPartner_ID',TO_DATE('2013-09-27 16:44:16','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',20,TO_DATE('2013-09-27 16:44:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:44:18 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54060 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:44:19 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53393,0,53471,54061,19,'HR_Payroll_ID',TO_DATE('2013-09-27 16:44:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll',30,TO_DATE('2013-09-27 16:44:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:44:19 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54061 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:44:20 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53390,0,53471,54062,19,'HR_Department_ID',TO_DATE('2013-09-27 16:44:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll Department',40,TO_DATE('2013-09-27 16:44:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:44:20 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54062 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:44:22 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56356,0,53471,54063,17,319,'IsCAPTA',TO_DATE('2013-09-27 16:44:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Contribute C.A.P.T.A.',50,TO_DATE('2013-09-27 16:44:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:44:22 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54063 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:44:23 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56357,0,53471,54064,17,319,'IsGrowthPlan',TO_DATE('2013-09-27 16:44:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Has Growth Plan',60,TO_DATE('2013-09-27 16:44:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:44:23 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54064 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:44:24 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56355,0,53471,54065,17,319,'IsJubilate',TO_DATE('2013-09-27 16:44:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Is Jubilate',70,TO_DATE('2013-09-27 16:44:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:44:24 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54065 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:44:25 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56358,0,53471,54066,17,319,'IsUnionized',TO_DATE('2013-09-27 16:44:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Is Unionized',80,TO_DATE('2013-09-27 16:44:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:44:25 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54066 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:44:26 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,574,0,53471,54067,15,'StartDate',TO_DATE('2013-09-27 16:44:25','YYYY-MM-DD HH24:MI:SS'),100,'First effective day (inclusive)','ECA02',7,'The Start Date indicates the first or starting date','Y','Y','N','Y','Start Date',90,TO_DATE('2013-09-27 16:44:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:44:26 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54067 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:44:41 PM VET
-- LVE HR
UPDATE AD_Process SET AD_PrintFormat_ID=NULL, AD_ReportView_ID=53065,Updated=TO_DATE('2013-09-27 16:44:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53471
;

-- 27/09/2013 04:44:50 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54042
;

-- 27/09/2013 04:44:50 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54042
;

-- 27/09/2013 04:44:50 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54043
;

-- 27/09/2013 04:44:50 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54043
;

-- 27/09/2013 04:44:51 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54044
;

-- 27/09/2013 04:44:51 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54044
;

-- 27/09/2013 04:44:52 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54045
;

-- 27/09/2013 04:44:52 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54045
;

-- 27/09/2013 04:44:53 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54046
;

-- 27/09/2013 04:44:53 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54046
;

-- 27/09/2013 04:44:53 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54047
;

-- 27/09/2013 04:44:53 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54047
;

-- 27/09/2013 04:44:54 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54048
;

-- 27/09/2013 04:44:54 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54048
;

-- 27/09/2013 04:44:55 PM VET
-- LVE HR
DELETE  FROM  AD_Process_Para_Trl WHERE AD_Process_Para_ID=54049
;

-- 27/09/2013 04:44:55 PM VET
-- LVE HR
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54049
;

-- 27/09/2013 04:45:12 PM VET
-- LVE HR
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=50134, AD_ReportView_ID=NULL, AD_Workflow_ID=NULL, Classname=NULL, Description=NULL, Help=NULL, IsBetaFunctionality='N', IsDirectPrint='N', IsReport='Y', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_DATE('2013-09-27 16:45:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53472
;

-- 27/09/2013 04:45:12 PM VET
-- LVE HR
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53472
;

-- 27/09/2013 04:45:12 PM VET
-- LVE HR
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='Employee Loading Family',Updated=TO_DATE('2013-09-27 16:45:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53635
;

-- 27/09/2013 04:45:12 PM VET
-- LVE HR
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53635
;

-- 27/09/2013 04:45:19 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53472,54068,19,'AD_Org_ID',TO_DATE('2013-09-27 16:45:12','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',10,TO_DATE('2013-09-27 16:45:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:45:19 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54068 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:45:20 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53472,54069,30,252,'C_BPartner_ID',TO_DATE('2013-09-27 16:45:19','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',20,TO_DATE('2013-09-27 16:45:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:45:20 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54069 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:45:21 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53393,0,53472,54070,19,'HR_Payroll_ID',TO_DATE('2013-09-27 16:45:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll',30,TO_DATE('2013-09-27 16:45:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:45:21 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54070 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:45:23 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53390,0,53472,54071,19,'HR_Department_ID',TO_DATE('2013-09-27 16:45:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','Payroll Department',40,TO_DATE('2013-09-27 16:45:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:45:23 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54071 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:45:24 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56356,0,53472,54072,17,319,'IsCAPTA',TO_DATE('2013-09-27 16:45:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Contribute C.A.P.T.A.',50,TO_DATE('2013-09-27 16:45:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:45:24 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54072 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:45:25 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56357,0,53472,54073,17,319,'IsGrowthPlan',TO_DATE('2013-09-27 16:45:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Has Growth Plan',60,TO_DATE('2013-09-27 16:45:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:45:25 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54073 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:45:27 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56355,0,53472,54074,17,319,'IsJubilate',TO_DATE('2013-09-27 16:45:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Is Jubilate',70,TO_DATE('2013-09-27 16:45:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:45:27 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54074 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:45:28 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56358,0,53472,54075,17,319,'IsUnionized',TO_DATE('2013-09-27 16:45:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Is Unionized',80,TO_DATE('2013-09-27 16:45:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:45:28 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54075 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:45:29 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,574,0,53472,54076,15,'StartDate',TO_DATE('2013-09-27 16:45:28','YYYY-MM-DD HH24:MI:SS'),100,'First effective day (inclusive)','ECA02',7,'The Start Date indicates the first or starting date','Y','Y','N','Y','Start Date',90,TO_DATE('2013-09-27 16:45:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/09/2013 04:45:29 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54076 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/09/2013 04:46:12 PM VET
-- LVE HR
UPDATE AD_ReportView SET Name='LVE_RV_HR_EmployeeLoadingFamily',Updated=TO_DATE('2013-09-27 16:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53066
;

-- 27/09/2013 04:46:18 PM VET
-- LVE HR
UPDATE AD_Process SET AD_PrintFormat_ID=NULL, AD_ReportView_ID=53066,Updated=TO_DATE('2013-09-27 16:46:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53472
;

