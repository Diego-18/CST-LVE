-- Sep 20, 2013 3:13:12 PM VET
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53460,'org.spin.process.ImportPayrollDepartment','N',TO_DATE('2013-09-20 15:13:07','YYYY-MM-DD HH24:MI:SS'),100,'Import Payroll Department from a file into the application','ECA02','Import Payroll Department will bring a file of payroll department, in a predefined format into the application.<p>
they are directly created/updated.','Y','N','N','N','N','Import Payroll Department','Y',1,1,TO_DATE('2013-09-20 15:13:07','YYYY-MM-DD HH24:MI:SS'),100,'Import_Payroll_Department')
;

-- Sep 20, 2013 3:13:12 PM VET
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53460 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Sep 20, 2013 3:14:45 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,102,0,53460,54000,19,'AD_Client_ID',TO_DATE('2013-09-20 15:14:42','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02',0,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','Client',10,TO_DATE('2013-09-20 15:14:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 20, 2013 3:14:45 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54000 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 20, 2013 3:16:10 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1922,0,53460,54001,20,'DeleteOldImported',TO_DATE('2013-09-20 15:16:06','YYYY-MM-DD HH24:MI:SS'),100,'Before processing delete old imported records in the import table','ECA02',0,'Y','Y','N','N','Delete old imported',20,TO_DATE('2013-09-20 15:16:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 20, 2013 3:16:10 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54001 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 20, 2013 3:16:58 PM VET
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53461,'org.spin.process.ImportPayrollJob','N',TO_DATE('2013-09-20 15:16:55','YYYY-MM-DD HH24:MI:SS'),100,'Import Payroll Job from a file into the application','ECA02','Import Payroll Job will bring a file of payroll job, in a predefined format into the application.<p>
they are directly created/updated.','Y','N','N','N','N','Import Payroll Job','Y',1,1,TO_DATE('2013-09-20 15:16:55','YYYY-MM-DD HH24:MI:SS'),100,'Import_Payroll_Job')
;

-- Sep 20, 2013 3:16:58 PM VET
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53461 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Sep 20, 2013 3:17:17 PM VET
-- LVE-HR
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=NULL, AD_ReportView_ID=NULL, AD_Workflow_ID=NULL, Classname='org.spin.process.ImportPayrollDepartment', Description='Import Payroll Department from a file into the application', Help='Import Payroll Department will bring a file of payroll department, in a predefined format into the application.<p>
they are directly created/updated.', IsBetaFunctionality='N', IsDirectPrint='N', IsReport='N', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_DATE('2013-09-20 15:17:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53461
;

-- Sep 20, 2013 3:17:17 PM VET
-- LVE-HR
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53461
;

-- Sep 20, 2013 3:17:19 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,102,0,53461,54002,19,'AD_Client_ID',TO_DATE('2013-09-20 15:17:17','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02',0,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','Client',10,TO_DATE('2013-09-20 15:17:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 20, 2013 3:17:19 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54002 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 20, 2013 3:17:21 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1922,0,53461,54003,20,'DeleteOldImported',TO_DATE('2013-09-20 15:17:19','YYYY-MM-DD HH24:MI:SS'),100,'Before processing delete old imported records in the import table','ECA02',0,'Y','Y','N','N','Delete old imported',20,TO_DATE('2013-09-20 15:17:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 20, 2013 3:17:21 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54003 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 20, 2013 3:18:12 PM VET
-- LVE-HR
UPDATE AD_Process SET Classname='org.spin.process.ImportPayrollJob', Description='Import Payroll Job from a file into the application', Help='Import Payroll Job will bring a file of payroll job, in a predefined format into the application.<p>
they are directly created/updated.',Updated=TO_DATE('2013-09-20 15:18:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53461
;

-- Sep 20, 2013 3:18:12 PM VET
-- LVE-HR
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53461
;

-- Sep 20, 2013 3:19:04 PM VET
-- LVE-HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53462,'org.spin.process.ImportPayrollEmployee','N',TO_DATE('2013-09-20 15:19:01','YYYY-MM-DD HH24:MI:SS'),100,'Import Payroll Employee from a file into the application','ECA02','Import Payroll Employee will bring a file of payroll employee, in a predefined format into the application.<p>
they are directly created/updated.','Y','N','N','N','N','Import Payroll Employee','Y',1,1,TO_DATE('2013-09-20 15:19:01','YYYY-MM-DD HH24:MI:SS'),100,'Import_Payroll_Employee')
;

-- Sep 20, 2013 3:19:04 PM VET
-- LVE-HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53462 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Sep 20, 2013 3:19:37 PM VET
-- LVE-HR
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=NULL, AD_ReportView_ID=NULL, AD_Workflow_ID=NULL, Classname='org.spin.process.ImportPayrollDepartment', Description='Import Payroll Department from a file into the application', Help='Import Payroll Department will bring a file of payroll department, in a predefined format into the application.<p>
they are directly created/updated.', IsBetaFunctionality='N', IsDirectPrint='N', IsReport='N', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_DATE('2013-09-20 15:19:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53462
;

-- Sep 20, 2013 3:19:37 PM VET
-- LVE-HR
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53462
;

-- Sep 20, 2013 3:19:40 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,102,0,53462,54004,19,'AD_Client_ID',TO_DATE('2013-09-20 15:19:37','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02',0,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','Client',10,TO_DATE('2013-09-20 15:19:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 20, 2013 3:19:40 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54004 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 20, 2013 3:19:43 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1922,0,53462,54005,20,'DeleteOldImported',TO_DATE('2013-09-20 15:19:40','YYYY-MM-DD HH24:MI:SS'),100,'Before processing delete old imported records in the import table','ECA02',0,'Y','Y','N','N','Delete old imported',20,TO_DATE('2013-09-20 15:19:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 20, 2013 3:19:43 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54005 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Sep 20, 2013 3:20:07 PM VET
-- LVE-HR
UPDATE AD_Process SET Classname='org.spin.process.ImportPayrollEmployee',Updated=TO_DATE('2013-09-20 15:20:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53462
;

-- Sep 20, 2013 3:20:18 PM VET
-- LVE-HR
UPDATE AD_Process SET Description='Import Payroll Employee from a file into the application', Help='Import Payroll Employee will bring a file of payroll employee, in a predefined format into the application.<p>
they are directly created/updated.',Updated=TO_DATE('2013-09-20 15:20:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53462
;

-- Sep 20, 2013 3:20:18 PM VET
-- LVE-HR
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53462
;

-- Oct 3, 2013 10:29:00 AM VET
-- LVE-Import
UPDATE AD_Process_Para SET SeqNo=30,Updated=TO_DATE('2013-10-03 10:29:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54005
;

-- Oct 3, 2013 10:30:10 AM VET
-- LVE-Import
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53462,54120,19,'AD_Org_ID',TO_DATE('2013-10-03 10:30:08','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',0,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','Organization',20,TO_DATE('2013-10-03 10:30:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 3, 2013 10:30:10 AM VET
-- LVE-Import
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54120 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

