--DROP VIEW LVE_RV_OrderOpen;
CREATE OR REPLACE VIEW LVE_RV_OrderOpen AS 
SELECT
	o.AD_Org_ID,
	o.AD_client_ID,
	o.DocumentNo,
	o.C_Order_ID,
	o.C_BPartner_ID,
	o.IsSotrx,
	o.DateOrdered,
	o.DateAcct,
	p.NetDays,
	PaymentTermDueDate(o.C_PaymentTerm_ID, o.DateOrdered) AS DueDate,
	PaymentTermDueDays(o.C_PaymentTerm_ID, o.DateOrdered, getDate() ) AS DaysDue,
	AddDays(o.DateOrdered, p.DiscountDays) As DiscountDate,
	ROUND(o.GrandTotal * p.Discount / 100, 2) AS DiscountAmt,
	o.GrandTotal,
	o.GrandTotal - Orderopen(o.C_Order_ID, CAST(0 AS NUMERIC)) AS paidamt,
	OrderOpen(o.C_Order_ID, CAST(0 AS NUMERIC)) AS OpenAmt,
	o.C_Currency_ID,
	o.C_ConversionType_ID,
	o.C_PaymentTerm_ID,
	o.IsPayScheduleValid,
	CAST(NULL AS NUMERIC) AS LVE_OrderPrepayschedule_ID,
	o.C_Campaign_ID,
	o.C_Project_ID,
	o.C_Activity_ID
FROM LVE_RV_C_Order o
INNER JOIN C_PaymentTerm p ON (o.C_PaymentTerm_ID = p.C_PaymentTerm_ID )
WHERE
	o.IsPayScheduleValid <> 'Y'
	AND (o.DocStatus IN ('CO','CL','WP'))
	
UNION
SELECT o.AD_Org_ID,
	o.AD_client_ID,
	o.DocumentNo,
	o.C_Order_ID,
	o.C_BPartner_ID,
	o.IsSotrx,
	o.DateOrdered,
	o.DateAcct,
	DaysBetween(ops.DueDate, o.DateOrdered) AS NetDays,
	ops.DueDate,
	DaysBetween(getDate(), ops.DueDate) AS DaysDue,
	ops.DiscountDate,
	ops.DiscountAmt,
	ops.DueAmt AS GrandTotal,
	ops.DueAmt - Orderopen(o.C_Order_ID, ops.LVE_OrderPrepaySchedule_ID) AS PaidAmt,
	OrderOpen(o.C_Order_ID, ops.LVE_OrderPrepayschedule_ID) AS OpenAmt,
	o.C_Currency_ID,
	o.C_ConversionType_ID,
	o.C_PaymentTerm_ID,
	o.IsPayScheduleValid,
	ops.LVE_OrderPrepayschedule_ID,
	o.C_Campaign_ID,
	o.C_Project_ID,
	o.C_Activity_ID
FROM LVE_RV_C_Order o
INNER JOIN LVE_OrderPrepayschedule ops ON (o.C_Order_id= ops.C_Order_ID)
WHERE 
	o.Ispayschedulevalid = 'Y' 
	AND (o.DocStatus IN ('CO','CL','WP'))
	AND ops.IsValid = 'Y';
	