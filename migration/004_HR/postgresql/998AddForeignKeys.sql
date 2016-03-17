ALTER TABLE LVE_HR_ProcessReportLine ADD CONSTRAINT FK_LVE_HR_ProcessReportLine_HR_Concept FOREIGN KEY (HR_Concept_ID)
	REFERENCES HR_Concept(HR_Concept_ID) 
	ON UPDATE CASCADE 
	ON DELETE RESTRICT ;
	
ALTER TABLE LVE_HR_ProcessReportLine ADD CONSTRAINT FK_LVE_HR_ProcessReportLine_LVE_HR_ProcessReport FOREIGN KEY (LVE_HR_ProcessReport_ID)
	REFERENCES LVE_HR_ProcessReport(LVE_HR_ProcessReport_ID) 
	ON UPDATE CASCADE 
	ON DELETE CASCADE;

-- Provision Reference
ALTER TABLE LVE_HR_Provision ADD CONSTRAINT FK_LVE_HR_Provision_LVE_HR_ProvisionType FOREIGN KEY (LVE_HR_ProvisionType_ID)
	REFERENCES LVE_HR_ProvisionType(LVE_HR_ProvisionType_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;

-- Provision Combination Provision Reference
ALTER TABLE LVE_HR_P_Combination ADD CONSTRAINT FK_LVE_HR_P_Combination_LVE_HR_Provision FOREIGN KEY (LVE_HR_Provision_ID)
	REFERENCES LVE_HR_Provision(LVE_HR_Provision_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;
	
-- Provision Combination Department Reference
ALTER TABLE LVE_HR_P_Combination ADD CONSTRAINT FK_LVE_HR_P_Combination_HR_Department FOREIGN KEY (HR_Department_ID)
	REFERENCES HR_Department(HR_Department_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;
	
-- Provision Combination Job Reference
ALTER TABLE LVE_HR_P_Combination ADD CONSTRAINT FK_LVE_HR_P_Combination_HR_Job FOREIGN KEY (HR_Job_ID)
	REFERENCES HR_Job(HR_Job_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;
	
-- Provision Combination Business Partner Reference
ALTER TABLE LVE_HR_P_Combination ADD CONSTRAINT FK_LVE_HR_P_Combination_C_BPartner FOREIGN KEY (C_BPartner_ID)
	REFERENCES C_BPartner(C_BPartner_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;
	
-- Provision Combination Provision Type Reference
ALTER TABLE LVE_HR_P_Combination ADD CONSTRAINT FK_LVE_HR_P_Combination_LVE_HR_ProvisionType FOREIGN KEY (LVE_HR_ProvisionType_ID)
	REFERENCES LVE_HR_ProvisionType(LVE_HR_ProvisionType_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;
	
-- Product Reference
ALTER TABLE LVE_HR_Provision ADD CONSTRAINT FK_LVE_HR_Provision_M_Product FOREIGN KEY (M_Product_ID)
	REFERENCES M_Product(M_Product_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;
	
-- Add Print Format to HR Process Report
ALTER TABLE LVE_HR_ProcessReport ADD CONSTRAINT FK_LVE_HR_ProcessReport_AD_PrintFormat FOREIGN KEY (AD_PrintFormat_ID)
	REFERENCES AD_PrintFormat(AD_PrintFormat_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;

-- Add Changes in Tables 2014-07-14

-- Add Pathology Type to Pathology 
ALTER TABLE LVE_HR_Pathology ADD CONSTRAINT FK_LVE_HR_Pathology_LVE_HR_PathologyType FOREIGN KEY (LVE_HR_PathologyType_ID)
	REFERENCES LVE_HR_PathologyType(LVE_HR_PathologyType_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;

-- Add Pathology to Business Partner Pathology
ALTER TABLE LVE_HR_BPPathology ADD CONSTRAINT FK_LVE_HR_BPPathology_LVE_HR_Pathology FOREIGN KEY (LVE_HR_Pathology_ID)
	REFERENCES LVE_HR_Pathology(LVE_HR_Pathology_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;

-- Add Business Partner to BP Pathology
ALTER TABLE LVE_HR_BPPathology ADD CONSTRAINT FK_LVE_HR_BPPathology_C_BPartner FOREIGN KEY (C_BPartner_ID)
	REFERENCES C_BPartner(C_BPartner_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;
	
-- Add Business Partner to BP Measures
ALTER TABLE LVE_HR_BPMeasures ADD CONSTRAINT FK_LVE_HR_BPMeasures_C_BPartner FOREIGN KEY (C_BPartner_ID)
	REFERENCES C_BPartner(C_BPartner_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;

-- Add UOM to BP Measures
ALTER TABLE LVE_HR_BPMeasures ADD CONSTRAINT FK_LVE_HR_BPMeasures_C_UOM FOREIGN KEY (C_UOM_ID)
	REFERENCES C_UOM(C_UOM_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;
	
-- Add School Institution to Business Partner
ALTER TABLE C_BPartner ADD CONSTRAINT FK_C_BPartner_LVE_HR_SchoolInstitution FOREIGN KEY (LVE_HR_SchoolInstitution_ID)
	REFERENCES LVE_HR_SchoolInstitution(LVE_HR_SchoolInstitution_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;

-- Add Business Partner to Loan
ALTER TABLE LVE_HR_Loan ADD CONSTRAINT FK_LVE_HR_Loan_C_BPartner FOREIGN KEY (C_BPartner_ID)
	REFERENCES C_BPartner(C_BPartner_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;
	
-- Add Document Type to Loan
ALTER TABLE LVE_HR_Loan ADD CONSTRAINT FK_LVE_HR_Loan_C_DocType FOREIGN KEY (C_DocType_ID)
	REFERENCES C_DocType(C_DocType_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;
	
-- Add HR Process to Loan
ALTER TABLE LVE_HR_Loan ADD CONSTRAINT FK_LVE_HR_Loan_HR_Process FOREIGN KEY (HR_Process_ID)
	REFERENCES HR_Process(HR_Process_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;
	
-- Add Loan Definition to Loan
ALTER TABLE LVE_HR_Loan ADD CONSTRAINT FK_LVE_HR_Loan_LVE_HR_LoanDefinition FOREIGN KEY (LVE_HR_LoanDefinition_ID)
	REFERENCES LVE_HR_LoanDefinition(LVE_HR_LoanDefinition_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;
	
-- Add Payroll to Loan Payment Term
ALTER TABLE LVE_HR_LoanPaymentTerm ADD CONSTRAINT FK_LVE_HR_LoanPaymentTerm_HR_Payroll FOREIGN KEY (HR_Payroll_ID)
	REFERENCES HR_Payroll(HR_Payroll_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;
	
-- Add Loan to Loan Payment Term
ALTER TABLE LVE_HR_LoanPaymentTerm ADD CONSTRAINT FK_LVE_HR_LoanPaymentTerm_LVE_HR_Loan FOREIGN KEY (LVE_HR_Loan_ID)
	REFERENCES LVE_HR_Loan(LVE_HR_Loan_ID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;
	
-- Add Loan to Loan Amortization
ALTER TABLE LVE_HR_LoanAmortization ADD CONSTRAINT FK_LVE_HR_LoanAmortization_LVE_HR_Loan FOREIGN KEY (LVE_HR_Loan_ID)
	REFERENCES LVE_HR_Loan(LVE_HR_Loan_ID)
	ON UPDATE CASCADE
	ON DELETE CASCADE;
