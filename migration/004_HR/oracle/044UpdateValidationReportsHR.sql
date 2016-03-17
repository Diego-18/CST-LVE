-- 28/09/2013 11:05:36 AM VET
-- LVE HR
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,WhereClause) VALUES (0,0,53068,53596,TO_DATE('2013-09-28 11:05:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_RV_HR_Employee (Con Salario)',TO_DATE('2013-09-28 11:05:32','YYYY-MM-DD HH24:MI:SS'),100,'LVE_RV_HR_Employee.Amount IS NOT NULL AND LVE_RV_HR_Employee.IsEmployee = ''Y''')
;

-- 28/09/2013 11:06:13 AM VET
-- LVE HR
UPDATE AD_ReportView SET Name='LVE_RV_HR_Employee Not Salary', WhereClause='LVE_RV_HR_Employee.Amount IS NULL AND LVE_RV_HR_Employee.IsEmployee= ''Y''',Updated=TO_DATE('2013-09-28 11:06:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=1500012
;

-- 28/09/2013 11:06:49 AM VET
-- LVE HR
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,WhereClause) VALUES (0,0,53069,53596,TO_DATE('2013-09-28 11:06:45','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_RV_HR_Employee Not Salary',TO_DATE('2013-09-28 11:06:45','YYYY-MM-DD HH24:MI:SS'),100,'LVE_RV_HR_Employee.Amount IS NULL AND LVE_RV_HR_Employee.IsEmployee= ''Y''')
;

-- 28/09/2013 11:07:21 AM VET
-- LVE HR
UPDATE AD_ReportView SET WhereClause='LVE_RV_HR_Employee.Amount IS NULL AND LVE_RV_HR_Employee.IsEmployee = ''Y''',Updated=TO_DATE('2013-09-28 11:07:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53065
;

