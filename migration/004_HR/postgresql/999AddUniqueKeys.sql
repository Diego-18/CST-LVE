--DROP INDEX UK_LVE_HR_ProcessReportLine;

CREATE UNIQUE INDEX UK_LVE_HR_ProcessReportLine  
ON LVE_HR_ProcessReportLine (AD_Client_ID, LVE_HR_ProcessReport_ID, HR_Concept_ID);

CREATE UNIQUE INDEX UK_LVE_HR_LoanDefinition
ON LVE_HR_LoanDefinition (AD_Client_ID, Value);

DROP INDEX IF EXISTS UK_LVE_HR_P_Combination_HR_Department_PP;
DROP INDEX IF EXISTS UK_LVE_HR_P_Combination_HR_Job_PP;
DROP INDEX IF EXISTS UK_LVE_HR_P_Combination_C_BPartner_PP;

-- Combination Department Provision Index
CREATE UNIQUE INDEX UK_LVE_HR_P_Combination_HR_Department_PP
ON LVE_HR_P_Combination USING BTREE (AD_Client_ID, HR_Department_ID, HR_Payroll_ID, LVE_HR_ProvisionType_ID, LVE_HR_Provision_ID);

-- Combination Job Provision Index
CREATE UNIQUE INDEX UK_LVE_HR_P_Combination_HR_Job_PP
ON LVE_HR_P_Combination USING BTREE (AD_Client_ID, HR_Job_ID, HR_Payroll_ID, LVE_HR_ProvisionType_ID, LVE_HR_Provision_ID);

-- Combination Business Partner Provision Index
CREATE UNIQUE INDEX UK_LVE_HR_P_Combination_C_BPartner_PP
ON LVE_HR_P_Combination USING BTREE (AD_Client_ID, C_BPartner_ID, HR_Payroll_ID, LVE_HR_ProvisionType_ID, LVE_HR_Provision_ID);

-- Add Changes in Tables 2014-07-14

-- Index on School Institution
CREATE UNIQUE INDEX UK_LVE_HR_SchoolInstitution
ON LVE_HR_SchoolInstitution (AD_Client_ID, Value);

-- Index on Pathology Type
CREATE UNIQUE INDEX UK_LVE_HR_PathologyType
ON LVE_HR_PathologyType (AD_Client_ID, Value);

-- Index on Pathology
CREATE UNIQUE INDEX UK_LVE_HR_Pathology
ON LVE_HR_Pathology (AD_Client_ID, Value);

-- Index on Provision Type
CREATE UNIQUE INDEX UK_LVE_HR_ProvisionType
ON LVE_HR_ProvisionType (AD_Client_ID, Value);

-- Index on Provision
CREATE UNIQUE INDEX UK_LVE_HR_Provision
ON LVE_HR_Provision (AD_Client_ID, Value);
