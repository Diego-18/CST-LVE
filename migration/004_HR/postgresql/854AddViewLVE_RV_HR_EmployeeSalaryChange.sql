--DROP VIEW LVE_RV_HR_EmployeeSalaryChange 
CREATE OR REPLACE VIEW LVE_RV_HR_EmployeeSalaryChange AS
SELECT DISTINCT
	bp.AD_Client_ID,
	bp.AD_Org_ID,	
	bp.Created, 
	bp.CreatedBy,
	bp.Updated, 
	bp.UpdatedBy,

	--Socio del Negocio
	bp.C_BPartner_ID, 
	bp.Name ||' '||bp.Name2 AS BPName,
	bp.C_BP_Group_ID,
	COALESCE(bp.TaxID, bp.Value) AS BPTaxID,
	bp.EmployeeStatus, 
	bp.Gender AS BP_Gender,
	
	bp.IsCAPTA, --Aporta a C.A.P.T.A.
	
	bp.IsGrowthPlan, -- Plan Crecer
	
	bp.IsJubilate,  -- Jubilado
	bp.IsEmployee, -- Es Empleado
	bp.IsUnionized, -- Sindicalizado
	bp.Birthday AS BP_Birthday,

	-- Empleado
--	hre.SSCode, --Código Seguro Social
--	hre.StartDate, -- Fecha de Inicio
--	hre.EndDate, -- Fecha de Culminación
	hre.HR_Department_ID, -- Departamento
--	hre.HR_Job_ID, -- Puesto de Trabajo
--	hre.HR_Payroll_ID, -- Nómina
--	hre.Code, --Código

	-- Atributo
	hra.HR_Attribute_ID,
	hra.HR_Concept_ID,
	hra.ColumnType, 
	hra.Amount,
	hra.IsPrinted, 
	hra.MaxValue,
	hra.MinValue,
	hra.ValidFrom,
	hra.ValidTo,

	hrc.Value,
	(CASE WHEN Amount IS NULL THEN 0 ELSE Amount END * 30) MonthlySalary
		
FROM C_BPartner bp
LEFT JOIN HR_Employee hre ON (bp.C_BPartner_ID = hre.C_BPartner_ID)
LEFT JOIN HR_Attribute hra ON (bp.C_BPartner_ID = hra.C_BPartner_ID)
LEFT JOIN HR_Concept hrc ON (hrc.HR_Concept_ID = hra.HR_Concept_ID)
WHERE 
	bp.IsEmployee = 'Y' 
--	AND hre.HR_Employee_ID=1000391
	--AND hrc.HR_Concept_ID=1000008
;
