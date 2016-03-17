--DROP VIEW LVE_HR_PaySelectionLine 
CREATE OR REPLACE VIEW LVE_RV_HR_PaySelectionLine AS 
SELECT 
	hrpsl.AD_Client_ID, 
	hrpsl.AD_Org_ID, 
	hrpsl.Created, 
	hrpsl.CreatedBy, 
	hrpsl.Description, 
	hrpsl.DifferenceAmt, 
	hrpsl.DiscountAmt, 
	hrpsl.HR_Movement_ID, 
	hrpsl.HR_PaySelectionCheck_ID, 
	hrpsl.HR_PaySelection_ID, 
	hrpsl.HR_PaySelectionLine_ID, 
	hrpsl.IsManual, 
	hrpsl.IsSOTrx, 
	hrpsl.Line, 
	hrpsl.OpenAmt, 
	hrpsl.PayAmt, 
	hrpsl.PaymentRule, 
	hrpsl.Processed,
	bp.Name ||' '|| COALESCE(bp.Name2, '') BPName,
	bp.Value BPValue,
	bp.C_BPartner_ID,
	ba.AccountNo,
	p.HR_Process_ID,
	prd.HR_Period_ID,
	prd.PeriodNo,
	p.Name
FROM HR_PayselectionLine hrpsl
LEFT JOIN HR_Movement m ON (hrpsl.HR_Movement_ID = m.HR_Movement_ID)
LEFT JOIN HR_Process p ON (p.HR_Process_ID = m.HR_Process_ID)
LEFT JOIN HR_Period prd ON (prd.HR_Period_ID = p.HR_Period_ID )
LEFT JOIN C_BPartner bp ON (bp.C_BPartner_ID = m.C_BPartner_ID)
LEFT JOIN 
	(
		SELECT 
			MAX(ba.AccountNo) AccountNo,
			C_BPartner_ID
		FROM C_BP_BankAccount ba
		WHERE 
			ba.IsAch = 'Y'
			AND IsPayrollAccount = 'Y'
		GROUP BY 	
			C_BPartner_ID
			
	) ba ON (ba.C_BPartner_ID = bp.C_BPartner_ID)

--WHERE p.HR_Process_ID=1000090
