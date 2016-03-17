--DROP VIEW LVE_RV_HR_EmployeeLoadingFamily
CREATE OR REPLACE VIEW LVE_RV_HR_EmployeeLoadingFamily AS
SELECT 
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
	
	-- Usuario
	u.NationalCode,
	u.Name,
	u.Birthday,
	u.Phone,
	u.Phone2,
	u.Fax,
	u.Relationship, 
	u.Gender,
	u.IsDepending,
	u.Degree,
	u.IsScholarship,
	u.Turn
	
FROM C_BPartner bp
LEFT JOIN (
		SELECT
			hre.SSCode, --Código Seguro Social
			MAX(hre.StartDate)StartDate, -- Fecha de Inicio
			MAX(hre.EndDate)EndDate, -- Fecha de Culminación
			hre.HR_Department_ID, -- Departamento
			MAX(hre.HR_Job_ID)HR_Job_ID, -- Puesto de Trabajo
			hre.HR_Payroll_ID, -- Nómina
			hre.Code, --Código
			hre.C_BPartner_ID,
			MAX(hre.HR_Employee_ID)HR_Employee_ID
		FROM HR_Employee hre
		GROUP BY
			hre.SSCode, --Código Seguro Social
			hre.HR_Department_ID, -- Departamento
			hre.HR_Payroll_ID, -- Nómina
			hre.Code, --Código
			hre.C_BPartner_ID
		
	)hre ON (bp.C_BPartner_ID = hre.C_BPartner_ID)
LEFT JOIN AD_User u ON (u.C_BPartner_ID = bp.C_BPartner_ID)

WHERE 
	u.Relationship IS NOT NULL
	--AND bp.C_BPartner_ID = 1007330
;