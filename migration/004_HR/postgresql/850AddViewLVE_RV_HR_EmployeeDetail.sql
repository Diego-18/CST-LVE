--DROP VIEW LVE_RV_HR_EmployeeDetail;
CREATE OR REPLACE VIEW LVE_RV_HR_EmployeeDetail AS
SELECT 
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
	ba.IsACH, 
	
	-- Localización
	l.C_Location_ID,
	bpl.Phone AS BPL_Phone,
	bpl.Phone2 AS BPL_Phone2,
	bpl.Fax BPL_Fax,

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
	u.Turn,

	-- Área de Interes
	rci.R_InterestArea_ID,
	rci.SubsCribeDate,
	rci.OptOutDate,
	bp.LVE_HR_SchoolInstitution_ID,
	COALESCE(CASE WHEN Amount IS NULL THEN 0 ELSE Amount END,0) * 30 MonthlySalary
	
	
FROM C_BPartner bp
INNER JOIN HR_Employee hre ON (bp.C_BPartner_ID = hre.C_BPartner_ID)
LEFT JOIN HR_Attribute hra ON (bp.C_BPartner_ID = hra.C_BPartner_ID)
LEFT JOIN C_BP_BankAccount ba ON (bp.C_BPartner_ID = ba.C_BPartner_ID)
LEFT JOIN C_BPartner_Location bpl ON (bpl.C_BPartner_ID = bp.C_BPartner_ID)
LEFT JOIN C_Location l ON (l.C_Location_ID = bpl.C_Location_ID)
LEFT JOIN AD_User u ON (u.C_BPartner_ID = bp.C_BPartner_ID)
LEFT JOIN R_ContactInterest rci ON (rci.AD_User_ID = u.AD_User_ID );