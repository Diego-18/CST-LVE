--DROP VIEW LVE_RV_PaymentRequestLine ;
CREATE OR REPLACE VIEW LVE_RV_PaymentRequestLine AS
SELECT
	prl.AD_Client_ID, 
	prl.AD_Org_ID, 
	prl.C_Invoice_ID, 
	prl.C_Order_ID, 
	prl.GL_JournalLine_ID, 
	prl.IsPrepared, 
	prl.Line, 
	prl.LVE_PaymentRequest_ID, 
	prl.LVE_PaymentRequestLine_ID, 
	prl.PayAmt, 
	prl.Processed,
	pr.DocStatus,
	pr.DateDoc,
	pr.RequestType,
	pr.C_DocType_ID

FROM LVE_PaymentRequest pr 
INNER JOIN LVE_PaymentRequestLine prl ON (pr.LVE_PaymentRequest_ID = prl.LVE_PaymentRequest_ID )
