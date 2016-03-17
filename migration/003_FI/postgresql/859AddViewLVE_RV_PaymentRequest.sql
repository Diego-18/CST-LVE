--DROP VIEW LVE_RV_PaymentRequest;
CREATE OR REPLACE VIEW LVE_RV_PaymentRequest AS
SELECT 
	pr.AD_Client_ID, 
	pr.AD_Org_ID, 
	pr.C_Charge_ID, 
	pr.C_Currency_ID, 
	pr.C_DocType_ID, 
	pr.CreatedBy, 
	pr.Created, 
	pr.DateDoc, 
	pr.Description, 
	pr.DocAction, 
	pr.DocStatus, 
	pr.DocumentNo, 
	pr.IsApproved, 
	pr.LVE_PaymentRequest_ID, 
	pr.PayAmt, 
	pr.Processed, 
	pr.Processing, 
	pr.RequestType,
	pr.LVE_PaymentRequest_ID AS LVE_RV_PaymentRequest_ID 		
FROM LVE_PaymentRequest pr;