--DROP VIEW LVE_RV_HR_BatchProcess 
CREATE OR REPLACE VIEW LVE_RV_HR_BatchProcess AS 
SELECT 
	ps.HR_PaySelection_ID, 
	ps.AD_Client_ID, 
	ps.AD_Org_ID, 
	pb.Created, 
	pb.CreatedBy,
	pb.Updated,
	pb.UpdatedBy,
	ps.Name,
	ps.Description,
	ps.PayDate, 
	ba.C_Bank_ID, 
	ba.AccountNo,
	pb.DocumentNo,
	COUNT(p.C_Payment_ID) Qty,
	SUM(p.PayAmt) PayAmt
FROM HR_Payselection ps
INNER JOIN C_BankAccount ba ON(ba.C_BankAccount_ID = ps.C_BankAccount_ID)
INNER JOIN HR_PaySelectionCheck psc ON(psc.HR_PaySelection_ID = ps.HR_PaySelection_ID)
INNER JOIN C_Payment p ON(p.C_Payment_ID = psc.C_Payment_ID)
INNER JOIN C_PaymentBatch pb ON(pb.C_PaymentBatch_ID = p.C_PaymentBatch_ID)
WHERE p.DocStatus IN('CO', 'CL')
GROUP BY ps.HR_PaySelection_ID, ps.AD_Client_ID, ps.AD_Org_ID, pb.Created, pb.CreatedBy,
	pb.Updated, pb.UpdatedBy, ps.Name, ps.Description,
	ps.PayDate, ba.C_Bank_ID, ba.AccountNo, pb.DocumentNo