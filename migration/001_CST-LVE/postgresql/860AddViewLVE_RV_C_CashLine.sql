-- View: LVE_RV_C_CashLine

-- DROP VIEW LVE_RV_C_CashLine;

CREATE OR REPLACE VIEW LVE_RV_C_CashLine AS 
SELECT
	cl.AD_client_ID,
	cl.AD_org_ID,
	cl.IsActive,
	cl.C_CashLine_ID,
	cl.C_Cash_ID,
	cl.Line,
	COALESCE(cl.Description, i.Description) AS description,
	cl.CashType,
	cl.C_BankAccount_ID,
	cl.C_Charge_ID,
	cl.C_Currency_ID,
	cl.Amount,
	cl.DiscountAmt,
	cl.WriteoffAmt,
	cl.Isgenerated,
	cl.Processed,
	cl.C_Payment_ID,
	cl.C_Bank_ID,
	cl.C_Invoice_ID,
	COALESCE(cl.C_BPartner_ID, i.C_BPartner_ID) AS C_BPartner_ID,
	cl.ReferenceNo,
	cl.AffectsBook,
	cl.DateDoc,
	cl.A_Base_Amount,
	COALESCE(cl.ControlNo, i.ControlNo) AS ControlNo,
	COALESCE(cl.ReferenceNo, i.DocumentNo) AS DocumentMix,
	COALESCE(cl.DateDoc, i.DateInvoiced) AS DateMix,
	cl.C_Activity_ID,
	cl.Amount - (cl.A_Base_Amount + CASE WHEN cl.C_Tax_ID IS NULL THEN 0::numeric ELSE cl.A_Base_Amount * tax.rate END) AS Exempt,
	CASE WHEN cl.C_Tax_ID IS NULL THEN 0::numeric ELSE cl.A_Base_Amount * tax.Rate END AS TaxAmt 

FROM C_Cashline cl 
INNER JOIN C_Cash c ON c.C_Cash_ID = cl.C_Cash_ID
LEFT JOIN ( 
	SELECT 
		t.C_Tax_ID, 
		t.Rate / 100 AS Rate 
	FROM C_Tax t
) tax ON tax.C_Tax_ID = cl.C_Tax_ID
LEFT JOIN C_Invoice i ON cl.C_Invoice_ID = i.C_Invoice_ID;

ALTER TABLE lve_rv_c_cashline
  OWNER TO adempiere;
