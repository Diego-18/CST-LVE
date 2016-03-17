--DROP VIEW LVE_RV_HR_EmployeeAccount
CREATE VIEW LVE_RV_HR_EmployeeAccount AS
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
	
	-- Cuenta Bancaria
	ba.C_Bank_ID, 
	ba.AccountNo,
	ba.BPBankAcctUse, 
	ba.BankAccountType,
	ba.A_Name,
	ba.A_Street,
	ba.A_City,
	ba.A_Zip,
	ba.A_State,
	ba.A_Country,
	ba.A_Ident_DL,
	ba.A_Ident_SSN,
	ba.A_Email,
	ba.R_AvsAddr, 
	ba.CreditCardExpMM, 
	ba.CreditCardExpYY, 
	ba.CreditCardNumber, 
	ba.CreditCardType, 
	ba.CreditCardVV,
	ba.IsACH
	
FROM C_BPartner bp
LEFT JOIN HR_Employee hre ON (bp.C_BPartner_ID = hre.C_BPartner_ID)
LEFT JOIN C_BP_BankAccount ba ON (bp.C_BPartner_ID = ba.C_BPartner_ID)
WHERE 
	bp.IsEmployee = 'Y'
;