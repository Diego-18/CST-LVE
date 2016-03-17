--﻿DROP VIEW LVE_RV_OpenItem;
CREATE OR REPLACE VIEW LVE_RV_OpenItem AS 
SELECT 
	i.AD_Org_ID, 
	i.AD_Client_ID, 
	i.DocumentNo, 
	i.C_Invoice_ID, 
	i.C_Order_ID, 
	i.C_BPartner_ID, 
	i.IsSOTrx, 
	i.DateInvoiced, 
	i.DateAcct, 
	p.NetDays, 
	PaymentTermDueDate(i.C_PaymentTerm_ID, i.DateInvoiced) AS DueDate, 
	PaymentTermDueDays(i.C_PaymentTerm_ID, i.DateInvoiced, GetDate()) AS DaysDue, 
	adddays(i.DateInvoiced, p.DiscountDays) AS DiscountDate, 
	Round(i.GrandTotal * p.Discount / 100, 2) AS DiscountAmt, 
	i.GrandTotal, 
	InvoicePaid(i.C_Invoice_ID, i.C_Currency_ID, 1) AS paidamt, 
	InvoiceOpen(i.C_Invoice_ID, 0) AS OpenAmt, i.C_Currency_ID, 
	i.C_ConversionType_ID, 
	i.C_PaymentTerm_ID, 
	i.IsPayScheduleValid, 
	NULL AS C_InvoicePaySchedule_ID, 
	i.InvoiceCollectionType, 
	i.C_Campaign_ID, 
	i.C_Project_ID, 
	i.C_Activity_ID, 
	i.C_DocType_ID,
	--2015-05-30 Carlos Parada Add Sales Representative And Document Status 
	i.SalesRep_ID,
	i.DocStatus
	--End Carlos Parada 
FROM rv_C_Invoice i
JOIN C_PaymentTerm p ON (i.C_PaymentTerm_id = p.C_PaymentTerm_id)
WHERE 
	InvoiceOpen(i.C_Invoice_ID, 0) <> 0 
	AND i.IsPayScheduleValid <> 'Y' 
	AND (i.DocStatus = ANY (ARRAY['CO'::bpchar, 'CL'::bpchar]))

UNION 
SELECT 
	i.AD_Org_ID, 
	i.AD_Client_ID, 
	i.DocumentNo, 
	i.C_Invoice_ID, 
	i.C_Order_ID, 
	i.C_BPartner_ID, 
	i.IsSOTrx, 
	i.DateInvoiced, 
	i.DateAcct, 
	DaysBetween(ips.DueDate, i.DateInvoiced) AS NetDays, 
	ips.DueDate, 
	DaysBetween(getdate(), ips.DueDate) AS DaysDue, 
	ips.DiscountDate, 
	ips.DiscountAmt, 
	ips.DueAmt GrandTotal, 
	InvoicePaid(i.C_Invoice_ID, i.C_Currency_ID, 1) AS PaidAmt, 
	InvoiceOpen(i.C_Invoice_ID, ips.C_InvoicePaySchedule_ID) AS OpenAmt, 
	i.C_Currency_ID, 
	i.C_ConversionType_ID, 
	i.C_PaymentTerm_ID, 
	i.IsPayScheduleValid, 
	ips.C_InvoicePaySchedule_ID, 
	i.InvoiceCollectionType, 
	i.C_Campaign_ID, 
	i.C_Project_ID, 
	i.C_Activity_ID, 
	i.C_DocType_ID,
	--2015-05-30 Carlos Parada Add Sales Representative And Document Status 
	i.SalesRep_ID,
	i.DocStatus
	--End Carlos Parada 
FROM rv_C_Invoice i
INNER JOIN C_InvoicePaySchedule ips ON (i.C_Invoice_id = ips.C_Invoice_id)
WHERE
	InvoiceOpen(i.C_Invoice_ID, ips.C_InvoicePaySchedule_ID) <> 0 
	AND i.IsPayScheduleValid = 'Y' 
	AND (i.DocStatus = ANY (ARRAY['CO', 'CL'])) 
	AND ips.IsValid = 'Y';