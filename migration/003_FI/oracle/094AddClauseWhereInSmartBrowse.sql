-- Sep 22, 2014 10:58:05 AM VET
-- LVE EFT
UPDATE AD_Browse SET WhereClause='OpenAmt > 0 AND RequestType = ''@RequestType@'' AND IsSOTrx = ''N'' 
AND NOT EXISTS (
		SELECT 1 
		FROM LVE_PaymentRequest pr
		INNER JOIN LVE_PaymentRequestLine prl ON (prl.LVE_PaymentRequest_ID = pr.LVE_PaymentRequest_ID)
		WHERE
			prl.C_Order_ID = Record_ID
			AND pr.RequestType = op.RequestType
	)
AND NOT EXISTS (
		SELECT 1 
		FROM LVE_PaymentRequest pr
		INNER JOIN LVE_PaymentRequestLine prl ON (prl.LVE_PaymentRequest_ID = pr.LVE_PaymentRequest_ID)
		WHERE
			prl.C_Invoice_ID = Record_ID
			AND pr.RequestType = op.RequestType
	)
AND NOT EXISTS (
		SELECT 1 
		FROM LVE_PaymentRequest pr
		INNER JOIN LVE_PaymentRequestLine prl ON (prl.LVE_PaymentRequest_ID = pr.LVE_PaymentRequest_ID)
		WHERE
			prl.GL_JournalLine_ID = Record_ID
			AND pr.RequestType = op.RequestType
	)',Updated=TO_DATE('2014-09-22 10:58:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50039
;

-- Sep 22, 2014 11:00:30 AM VET
-- LVE EFT
UPDATE AD_Browse SET WhereClause='OpenAmt > 0 AND RequestType = ''@RequestType@'' AND IsSOTrx = ''N'' 
AND NOT EXISTS (
		SELECT 1 
		FROM LVE_PaymentRequest pr
		INNER JOIN LVE_PaymentRequestLine prl ON (prl.LVE_PaymentRequest_ID = pr.LVE_PaymentRequest_ID)
		WHERE
			prl.C_Order_ID = Record_ID
			AND pr.RequestType = op.RequestType
			AND pr.LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@
	)
AND NOT EXISTS (
		SELECT 1 
		FROM LVE_PaymentRequest pr
		INNER JOIN LVE_PaymentRequestLine prl ON (prl.LVE_PaymentRequest_ID = pr.LVE_PaymentRequest_ID)
		WHERE
			prl.C_Invoice_ID = Record_ID
			AND pr.RequestType = op.RequestType
			AND pr.LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@
	)
AND NOT EXISTS (
		SELECT 1 
		FROM LVE_PaymentRequest pr
		INNER JOIN LVE_PaymentRequestLine prl ON (prl.LVE_PaymentRequest_ID = pr.LVE_PaymentRequest_ID)
		WHERE
			prl.GL_JournalLine_ID = Record_ID
			AND pr.RequestType = op.RequestType
			AND pr.LVE_PaymentRequest_ID = @LVE_PaymentRequest_ID@
	)',Updated=TO_DATE('2014-09-22 11:00:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50039
;

