--DROP VIEW LVE_RV_HR_Employee
CREATE OR REPLACE VIEW LVE_RV_HR_Employee AS
SELECT DISTINCT
	bp.AD_Client_ID,
	hre.AD_Org_ID,	
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
	IsEmployee, -- Es Empleado
	bp.IsUnionized, -- Sindicalizado
	bp.Birthday AS BP_Birthday,

	-- Empleado
	hre.SSCode, --Código Seguro Social
	hre.StartDate, -- Fecha de Inicio
	hre.EndDate, -- Fecha de Culminación
	hre.HR_Department_ID, -- Departamento
	hre.HR_Job_ID, -- Puesto de Trabajo
	hre.HR_Payroll_ID, -- Nómina
	hre.Code, --Código
	hre.SSDiscountRate, --Descuento SSO

	-- Atributo
	--hra.HR_Attribute_ID
	hra.HR_Concept_ID,
	--hra.ColumnType,
	COALESCE(hra.Amount,0) Amount,
	--hra.IsPrinted, 
	--hra.MaxValue,
	--hra.MinValue,
	--hra.ValidFrom,
	--hra.ValidTo
	/*
	-- Localización
	l.C_Location_ID,
	bpl.Phone AS BPL_Phone,
	bpl.Phone2 AS BPL_Phone2,
	bpl.Fax BPL_Fax*/
	COALESCE(CASE WHEN Amount IS NULL THEN 0 ELSE Amount END,0) * 30 MonthlySalary,
	bp.LVE_HR_SchoolInstitution_ID,
	hra.Value
	
FROM C_BPartner bp
INNER JOIN HR_Employee hre ON (bp.C_BPartner_ID = hre.C_BPartner_ID)
LEFT JOIN  
	(
		SELECT 
			--hra.HR_Attribute_ID,
			MAX(hra.HR_Concept_ID)HR_Concept_ID,
			--MAX(hra.ColumnType)ColumnType, 
			MAX(hra.Amount)Amount,
			--hra.IsPrinted, 
			--hra.MaxValue,
			--hra.MinValue,
			MAX(hra.ValidFrom) ValidFrom,
			--hra.ValidTo,
			hra.C_BPartner_ID,
			hra.IsActive,
			c.Value
		FROM HR_Attribute hra
		INNER JOIN HR_Concept c ON (c.HR_Concept_ID = hra.HR_Concept_ID)
		WHERE
			hra.IsActive = 'Y'
		GROUP BY
			hra.C_BPartner_ID,
			hra.IsActive,
			c.Value
	)hra ON (bp.C_BPartner_ID = hra.C_BPartner_ID)
/*WHERE --bp.C_BPartner_ID=1001633
	HR_Job_ID = 1000019
	AND EmployeeStatus = 'AC'
*/
;
