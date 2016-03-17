--SELECT * FROM T_SalaryChange
--DROP VIEW LVE_RV_T_SalaryChange;
CREATE OR REPLACE VIEW LVE_RV_T_SalaryChange AS 
SELECT 
	sc.AD_Client_ID,
	sc.AD_Org_ID,
	sc.AD_PInstance_ID,
	sc.Amount,
	sc.DateTrx,
	sc.HR_Employee_ID,
	sc.IsSimulation,
	sc.NewSalary,
	sc.Percentage,
	sc.PreviousSalary,
	sc.Qty,
	sc.ServiceDate,
	sc.TextMsg,
	bp.C_BPartner_ID,
	d.HR_Department_ID,
	j.HR_Job_ID,
	p.HR_Payroll_ID,
	sc.HR_Concept_ID,
	sc.ValidConcept_ID,
	sc.DateTrx ValidFrom,
	sc.Description
FROM T_SalaryChange sc
INNER JOIN HR_Employee e ON (sc.HR_Employee_ID = e.HR_Employee_ID)
INNER JOIN C_BPartner bp ON (bp.C_BPartner_ID = e.C_BPartner_ID)
INNER JOIN HR_Department d ON (d.HR_Department_ID = e.HR_Department_ID)
INNER JOIN HR_Job j ON (e.HR_Job_ID = j.HR_Job_ID)
LEFT JOIN HR_Payroll p ON (e.HR_Payroll_ID = p.HR_Payroll_ID)

--SELECT * FROM HR_Employee

--SELECT * FROM HR_Payroll