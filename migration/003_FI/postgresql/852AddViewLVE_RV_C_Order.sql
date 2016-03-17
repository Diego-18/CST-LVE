--DROP VIEW IF EXISTS LVE_RV_C_Order ;
CREATE OR REPLACE VIEW LVE_RV_C_Order AS 
SELECT 
	o.C_Order_ID,
	o.AD_Client_ID,
	o.AD_Org_ID,
	o.IsSotrx,
	o.DocumentNo,
	o.DocStatus,
	o.IsPrinted,
	o.IsDiscountPrinted,
	o.Processing,
	o.IsTransferred,
	o.C_DocType_ID,
	o.C_DocTypeTarget_ID,
	o.Description,
	o.IsApproved,
	o.DateAcct,
	o.C_BPartner_ID,
	o.C_BPartner_Location_ID,
	o.AD_User_ID,
	b.C_BP_Group_ID,
	o.Poreference,
	o.DateOrdered,
	o.C_Currency_ID,
	o.C_ConversionType_ID,
	o.PaymentRule,
	o.C_PaymentTerm_ID,
	o.M_PriceList_ID,
	o.C_Campaign_ID,
	o.C_Project_ID,
	o.C_Activity_ID,
	o.IsPayScheduleValid,
	o.C_Charge_ID,
	
CASE
WHEN charat(d.docbasetype::character varying, 3)::text = 'C'::text THEN o.chargeamt * (-1)::numeric
ELSE o.chargeamt
END AS chargeamt,
CASE
WHEN charat(d.docbasetype::character varying, 3)::text = 'C'::text THEN o.totallines * (-1)::numeric
ELSE o.totallines
END AS totallines,
CASE
WHEN charat(d.docbasetype::character varying, 3)::text = 'C'::text THEN o.grandtotal * (-1)::numeric
ELSE o.grandtotal
END AS grandtotal,
CASE
WHEN charat(d.docbasetype::character varying, 3)::text = 'C'::text THEN (-1)
ELSE 1
END AS multiplier
FROM C_Order o
INNER JOIN C_DocType d ON (o.C_DocType_ID = d.C_DocType_ID )
INNER JOIN C_BPartner b ON (o.C_BPartner_ID = b.C_BPartner_ID )
