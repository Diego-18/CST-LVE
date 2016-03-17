--DROP VIEW LVE_RV_HR_EmployeeLocalizations
CREATE VIEW LVE_RV_HR_EmployeeLocalizations AS
SELECT --DISTINCT
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
	-- Localización
	l.C_Location_ID,
	bpl.Phone AS BPL_Phone,
	bpl.Phone2 AS BPL_Phone2,
	bpl.Fax BPL_Fax
FROM C_BPartner bp
INNER JOIN HR_Employee hre ON (bp.C_BPartner_ID = hre.C_BPartner_ID)
LEFT JOIN C_BPartner_Location bpl ON (bpl.C_BPartner_ID = bp.C_BPartner_ID)
LEFT JOIN C_Location l ON (l.C_Location_ID = bpl.C_Location_ID)
--WHERE  bp.C_BPartner_ID=1001980
;
