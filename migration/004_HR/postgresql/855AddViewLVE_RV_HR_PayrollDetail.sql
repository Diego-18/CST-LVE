--DROP VIEW LVE_RV_HR_PayrollDetail 
CREATE VIEW LVE_RV_HR_PayrollDetail AS
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
	bp.IsEmployee, -- Es Empleado
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

	-- Atributo
	hra.HR_Attribute_ID,
	hra.HR_Concept_ID,
	hra.Amount,
	hra.MaxValue,
	hra.MinValue,
	hra.ValidFrom,
	hra.ValidTo,

	-- Concepto de Nómina
	hrc.HR_Concept_Category_ID,
	hrc.SeqNo,
	hrc.Type,
	hrc.AccountSign,
	hrc.ColumnType,
	hrc.IsPaid,
	hrc.IsManual,
	hrc.IsInvoiced,
	hrc.IsPrinted,
	hrc.IsSaveInHistoric,

	-- Concept Category
	hrcc.IsDefault,
	
	-- Aporte
	CASE WHEN hrcc.Value IN ('AS','DE') THEN 
		hra.Amount
	ELSE NULL 
	END AS AmountPayroll,	
	CASE WHEN hrcc.Value IN ('RE') THEN 
		hra.Amount
	ELSE NULL 
	END AS Aporte

FROM C_BPartner bp
INNER JOIN HR_Employee hre ON (bp.C_BPartner_ID = hre.C_BPartner_ID)
LEFT JOIN HR_Attribute hra ON (bp.C_BPartner_ID = hra.C_BPartner_ID)
LEFT JOIN HR_Concept hrc ON (hrc.HR_Concept_ID = hra.HR_Concept_ID)
LEFT JOIN HR_Concept_Category hrcc ON (hrcc.HR_Concept_Category_ID = hrc.HR_Concept_Category_ID)
WHERE 
	hra.IsActive = 'Y'
	AND hrcc.Value IN ('AS','DE','RE')
;