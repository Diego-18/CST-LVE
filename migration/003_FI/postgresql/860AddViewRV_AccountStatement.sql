CREATE OR REPLACE VIEW RV_AccountStatement AS 
SELECT 
AD_Client_ID,
AD_Org_ID,
C_BPartner_ID,
C_BPartner_Location_ID,
Record_ID,
DateDoc,
DateAcct,
ParentDocumentNo,
DocumentNo,
DocBaseType,
Debit,
Credit,
Debit-Credit Balance,
DocStatus,
DocAffected_ID,
AffectedDocumentNo,
DateDocAffected,
DateAcctAffected,
C_AllocationHdr_ID,
AllocatedDate,
C_Invoice_ID,
C_Payment_ID,
C_Cash_ID,
C_CashLine_ID,
IsSOTrx
FROM
(
--ALL INVOICES
SELECT 
	i.AD_Client_ID,
	i.AD_Org_ID,
	i.C_BPartner_ID,
	i.C_BPartner_Location_ID,
	i.C_Invoice_ID AS Record_ID,
	i.DateInvoiced AS DateDoc,
	i.DateAcct,
	i.DocumentNo ParentDocumentNo,
	NULL DocumentNo,
	dt.DocBaseType,
	CASE WHEN dt.DocBaseType IN ('ARI','APC') AND i.GrandTotal > 0 THEN --Sales Invoices And Vendor Credit Note Positives
			i.GrandTotal
	     WHEN dt.DocBaseType IN ('ARC','API') AND i.GrandTotal < 0 THEN --Sales Credit Note AND Vendor Invoices Negatives
		ABS(i.GrandTotal)
	     ELSE 0 END AS Debit,
	CASE WHEN dt.DocBaseType IN ('ARC','API') AND i.GrandTotal > 0 THEN --Sales Credit Note AND Vendor Invoices Positives
			i.GrandTotal
	     WHEN dt.DocBaseType IN ('ARI','APC') AND i.GrandTotal < 0 THEN --Vendor Credit Note AND Sales Invoices Positives
		ABS(i.GrandTotal)
	     ELSE 0 END AS Credit,
	i.DocStatus,
	NULL::NUMERIC DocAffected_ID,
	NULL::VARCHAR AffectedDocumentNo,
	NULL::TIMESTAMP DateDocAffected,
	NULL::TIMESTAMP DateAcctAffected,
	NULL::NUMERIC C_AllocationHdr_ID,
	NULL::TIMESTAMP AllocatedDate,
	i.C_Invoice_ID,
	NULL::NUMERIC C_Payment_ID,
	NULL::NUMERIC C_Cash_ID,
	NULL::NUMERIC C_CashLine_ID,
	i.IsSOTrx,
	10 SeqNo
FROM 
C_Invoice i 
INNER JOIN C_DocType dt ON (i.C_DoctypeTarget_ID = dt.C_DocType_ID)
WHERE 
i.DocStatus NOT IN ('DR','IN','IP')
--INVOICES ALLOCATED
UNION ALL 
SELECT 
	alloc.AD_Client_ID,
	alloc.AD_Org_ID,
	i.C_BPartner_ID,
	i.C_BPartner_Location_ID,
	i.C_Invoice_ID AS Record_ID,
	alloc.DateTrx As DateDoc,
	alloc.DateAcct,
	i.DocumentNo AS ParentDocumentNo,
	alloc.DocumentNo,
	dt.DocBaseType,
	CASE WHEN dt.DocBaseType IN ('ARC','API') AND alloc.Amount > 0 AND alloc.IsParent = 'Y' THEN --Sales Credit Note AND Vendor Invoices Positives
			alloc.Amount
	     WHEN dt.DocBaseType IN ('ARC','API') AND alloc.Amount < 0 AND alloc.IsParent = 'N' THEN --Sales Credit Note AND Vendor Invoices Negatives
			ABS(alloc.Amount)
	     WHEN dt.DocBaseType IN ('ARI','APC') AND alloc.Amount > 0 AND alloc.IsParent = 'Y' THEN --Vendor Credit Note AND Sales Invoices Positives
			alloc.Amount
	     WHEN dt.DocBaseType IN ('ARI','APC') AND alloc.Amount < 0 AND alloc.IsParent = 'N' THEN --Vendor Credit Note AND Sales Invoices Positives
			ABS(alloc.Amount)
	ELSE 0 END AS Debit,
	CASE WHEN dt.DocBaseType IN ('ARC','API') AND alloc.Amount < 0 AND alloc.IsParent = 'Y' THEN --Sales Credit Note AND Vendor Invoices Positives
			ABS(alloc.Amount)
	     WHEN dt.DocBaseType IN ('ARC','API') AND alloc.Amount > 0 AND alloc.IsParent = 'N' THEN --Sales Credit Note AND Vendor Invoices Negatives
			alloc.Amount
	     WHEN dt.DocBaseType IN ('ARI','APC') AND alloc.Amount < 0 AND alloc.IsParent = 'Y' THEN --Vendor Credit Note AND Sales Invoices Positives
			ABS(alloc.Amount)
	     WHEN dt.DocBaseType IN ('ARI','APC') AND alloc.Amount > 0 AND alloc.IsParent = 'N' THEN --Vendor Credit Note AND Sales Invoices Positives
			alloc.Amount
	ELSE 0 END AS Credit,
	i.DocStatus,
	ia.C_Invoice_ID DocAffected_ID,
	ia.DocumentNO AffectedDocumentNo,
	ia.DateInvoiced DateDocAffected,
	ia.DateAcct DateAcctAffected,
	alloc.C_AllocationHdr_ID,
	alloc.DateTrx AllocatedDate,
	i.C_Invoice_ID,
	NULL::NUMERIC C_Payment_ID,
	NULL::NUMERIC C_Cash_ID,
	NULL::NUMERIC C_CashLine_ID,
	i.IsSOTrx,
	20 SeqNo
FROM 
C_Invoice i 
INNER JOIN C_DocType dt ON (i.C_DoctypeTarget_ID = dt.C_DocType_ID)
INNER JOIN (
SELECT 
	hdr.AD_Client_ID,
	hdr.AD_Org_ID,
	hdr.C_AllocationHdr_ID,
	hdr.DocumentNo,
	hdr.DateTrx,
	hdr.DateAcct,
	alli.C_Invoice_ID,
	allni.C_Invoice_ID AS DocAffected_ID,
	CASE WHEN alli.C_AllocationLine_ID > allni.C_AllocationLine_ID THEN 
			allni.Amount--Documento is Parent
		ELSE	--Document Is Not Parent
			alli.Amount
		END AS Amount,
	CASE WHEN alli.C_AllocationLine_ID > allni.C_AllocationLine_ID THEN 
		'Y'
	ELSE
		'N'
	END
	IsParent
	FROM C_AllocationHdr hdr
	INNER JOIN C_AllocationLine alli ON (hdr.C_AllocationHdr_ID = alli.C_AllocationHdr_ID)
	INNER JOIN C_AllocationLine allni ON (allni.C_AllocationHdr_ID = hdr.C_AllocationHdr_ID AND allni.C_Invoice_ID<>alli.C_Invoice_ID AND allni.C_Invoice_ID IS NOT NULL AND SIGN(alli.Amount)<>SIGN(allni.Amount))
	WHERE hdr.DocStatus IN ('CO','CL')
) alloc  ON (alloc.C_Invoice_ID = i.C_Invoice_ID)
INNER JOIN C_Invoice ia ON (ia.C_Invoice_ID = alloc.DocAffected_ID)
INNER JOIN C_DocType dta ON (ia.C_DoctypeTarget_ID = dta.C_DocType_ID)
WHERE
--NOT INVALID DOCUMENTS
i.DocStatus NOT IN ('DR','IN','IP')
UNION ALL 
--INVOICES ALLOCATED WHIT PAYMENT OR CASH
SELECT 
	COALESCE(c.AD_Client_ID,p.AD_Client_ID) AS AD_Client_ID,
	COALESCE(c.AD_Org_ID,p.AD_Org_ID) AS AD_Org_ID,
	i.C_BPartner_ID,
	i.C_Invoice_ID AS Record_ID,
	i.C_BPartner_Location_ID,
	COALESCE(c.StatementDate,p.DateTrx) DateDoc,
	COALESCE(c.DateAcct,p.DateAcct) DateAcct,
	i.DocumentNo ParentDocumentNo,
	ah.DocumentNo,
	dta.DocBaseType,
	CASE WHEN 
	--dt.DocBaseType IN ('ARC','API') AND 
	alli.Amount < 0 THEN --Sales Credit Note AND Vendor Invoices Positives
			ABS(alli.Amount)
	     WHEN 
	     --dt.DocBaseType IN ('ARI','APC') AND 
	     alli.Amount < 0 THEN --Vendor Credit Note AND Sales Invoices Positives
			ABS(alli.Amount)
	ELSE 0 END AS Debit,
	CASE WHEN 
	--dt.DocBaseType IN ('ARC','API') AND 
	alli.Amount > 0 THEN --Sales Credit Note AND Vendor Invoices Positives
			alli.Amount
	     WHEN 
	     --dt.DocBaseType IN ('ARI','APC') AND 
	     alli.Amount > 0 THEN --Vendor Credit Note AND Sales Invoices Positives
			alli.Amount
	ELSE 0 END AS Credit,
	i.DocStatus,
	COALESCE(c.C_Cash_ID,p.C_Payment_ID) DocAffected_ID,
	COALESCE(c.DocumentNo,p.DocumentNo) AffectedDocumentNo,
	COALESCE(c.StatementDate,p.DateTrx) DateDocAffected,
	COALESCE(c.DateAcct,p.DateAcct) DateAcctAffected,
	ah.C_AllocationHdr_ID,
	ah.DateTrx AllocatedDate,
	i.C_Invoice_ID,
	p.C_Payment_ID,
	c.C_Cash_ID,
	cl.C_CashLine_ID,
	i.IsSOTrx,
	30 SeqNo
FROM 
C_Invoice i 
INNER JOIN C_DocType dt ON (i.C_DoctypeTarget_ID = dt.C_DocType_ID)
INNER JOIN C_AllocationLine alli ON (i.C_Invoice_ID = alli.C_Invoice_ID)
INNER JOIN C_AllocationHdr ah ON (ah.C_AllocationHdr_ID = alli.C_AllocationHdr_ID)
LEFT JOIN C_CashLine cl ON (alli.C_CashLine_ID = cl.C_CashLine_ID) 
LEFT JOIN C_Cash c ON (c.C_Cash_ID = cl.C_Cash_ID) 
LEFT JOIN C_Payment p ON (p.C_Payment_ID=alli.C_Payment_ID)
LEFT JOIN C_DocType dta ON (p.C_Doctype_ID = dta.C_DocType_ID OR c.C_DoctypeTarget_ID = dta.C_DocType_ID)
WHERE
--NOT INVALID DOCUMENTS
i.DocStatus NOT IN ('DR','IN','IP')
AND 
ah.DocStatus IN ('CO','CL')
AND 
(alli.C_Payment_ID IS NOT NULL OR alli.C_CashLine_ID IS NOT NULL)

UNION ALL
--ALL Valid Payments
SELECT 
	p.AD_Client_ID,
	p.AD_Org_ID,
	p.C_BPartner_ID,
	NULL::NUMERIC C_BPartner_Location_ID,
	p.C_Payment_ID Record_ID,
	p.DateTrx DateDoc,
	p.DateAcct,
	p.DocumentNo ParentDocumentNo,
	NULL::VARCHAR DocumentNo,
	dt.DocBaseType,
	CASE WHEN p.IsReceipt ='Y' AND p.PayAmt > 0 THEN  
		p.PayAmt 
	     WHEN p.IsReceipt ='N' AND p.PayAmt < 0 THEN  
		ABS(p.PayAmt) 
	     ELSE
	     0
	END Debit,
	CASE WHEN p.IsReceipt ='N' AND p.PayAmt > 0 THEN  
		p.PayAmt 
	     WHEN p.IsReceipt ='Y' AND p.PayAmt < 0 THEN  
		ABS(p.PayAmt) 
	     ELSE 
	     0
	END Credit,
	p.DocStatus,
	NULL::NUMERIC DocAffected_ID,
	NULL::VARCHAR AffectedDocumentNo,
	NULL::TIMESTAMP DateDocAffected,
	NULL::TIMESTAMP DateAcctAffected,
	NULL::NUMERIC C_AllocationHdr_ID,
	NULL::TIMESTAMP AllocatedDate,
	NULL::NUMERIC C_Invoice_ID,
	p.C_Payment_ID,
	NULL::NUMERIC C_Cash_ID,
	NULL::NUMERIC C_CashLine_ID,
	NULL::CHAR IsSOTrx,
	40 SeqNo
	
	FROM C_Payment p
	INNER JOIN C_DocType dt ON (p.C_DocType_ID = dt.C_DocType_ID)
	WHERE 
	p.DocStatus NOT IN ('DR','IN','IP')
	AND p.C_Charge_ID IS NULL 
	
--PAYMENT ALLOCATED
UNION ALL 
SELECT 
	alloc.AD_Client_ID,
	alloc.AD_Org_ID,
	p.C_BPartner_ID,
	NULL::NUMERIC C_BPartner_Location_ID,
	p.C_Payment_ID AS Record_ID,
	alloc.DateTrx As DateDoc,
	alloc.DateAcct,
	p.DocumentNo AS ParentDocumentNo,
	alloc.DocumentNo,
	dt.DocBaseType,
	CASE WHEN p.IsReceipt ='Y' AND p.PayAmt < 0 THEN  
		ABS(p.PayAmt)
	     WHEN p.IsReceipt ='N' AND p.PayAmt > 0 THEN  
		p.PayAmt 
	     ELSE
	     0
	END Debit,
	CASE WHEN p.IsReceipt ='N' AND p.PayAmt < 0 THEN  
		ABS(p.PayAmt) 
	     WHEN p.IsReceipt ='Y' AND p.PayAmt > 0 THEN  
		p.PayAmt 
	     ELSE 
	     0
	END Credit,
	p.DocStatus,
	pa.C_Payment_ID DocAffected_ID,
	pa.DocumentNO AffectedDocumentNo,
	pa.DateTrx DateDocAffected,
	pa.DateAcct DateAcctAffected,
	alloc.C_AllocationHdr_ID,
	alloc.DateTrx AllocatedDate,
	NULL::NUMERIC C_Invoice_ID,
	p.C_Payment_ID,
	NULL::NUMERIC C_Cash_ID,
	NULL::NUMERIC C_CashLine_ID,
	NULL::CHAR IsSOTrx,
	50 SeqNo
FROM 
C_Payment p 
INNER JOIN C_DocType dt ON (p.C_Doctype_ID = dt.C_DocType_ID)
INNER JOIN (
SELECT 
	hdr.AD_Client_ID,
	hdr.AD_Org_ID,
	hdr.C_AllocationHdr_ID,
	hdr.DocumentNo,
	hdr.DateTrx,
	hdr.DateAcct,
	alli.C_Payment_ID,
	allni.C_Payment_ID AS DocAffected_ID,
	CASE WHEN alli.C_AllocationLine_ID > allni.C_AllocationLine_ID THEN 
			allni.Amount--Documento is Parent
		ELSE	--Document Is Not Parent
			alli.Amount
		END AS Amount,
	CASE WHEN alli.C_AllocationLine_ID > allni.C_AllocationLine_ID THEN 
		'Y'
	ELSE
		'N'
	END
	IsParent
	FROM C_AllocationHdr hdr
	INNER JOIN C_AllocationLine alli ON (hdr.C_AllocationHdr_ID = alli.C_AllocationHdr_ID)
	INNER JOIN C_AllocationLine allni ON (allni.C_AllocationHdr_ID = hdr.C_AllocationHdr_ID AND allni.C_Payment_ID<>alli.C_Payment_ID AND allni.C_Payment_ID IS NOT NULL AND SIGN(alli.Amount)<>SIGN(allni.Amount))
	WHERE hdr.DocStatus IN ('CO','CL')
) alloc  ON (alloc.C_Payment_ID = p.C_Payment_ID)
INNER JOIN C_Payment pa ON (pa.C_Payment_ID = alloc.DocAffected_ID)
INNER JOIN C_DocType dta ON (pa.C_Doctype_ID = dta.C_DocType_ID)
WHERE
--NOT INVALID DOCUMENTS
p.DocStatus NOT IN ('DR','IN','IP')
AND p.C_Charge_ID IS NULL 
) as AccountStatement