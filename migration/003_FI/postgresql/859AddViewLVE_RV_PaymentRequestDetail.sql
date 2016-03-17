

CREATE OR REPLACE VIEW lve_rv_paymentrequestdetail AS 
 SELECT prl.ad_client_id, prl.ad_org_id, prl.c_invoice_id, prl.c_order_id, 
    0 AS c_payselectionline_id, prl.gl_journalline_id, prl.isprepared, prl.line, 
    prl.lve_paymentrequest_id, prl.lve_paymentrequestline_id, prl.payamt, 
    prl.processed, pr.docstatus, pr.datedoc, pr.requesttype, pr.c_doctype_id, 
    pay.payamt AS prepaymentunallocation, invwh.withholdingamt, 
        CASE
            WHEN i.c_bpartner_id IS NOT NULL THEN i.c_bpartner_id
            WHEN o.c_bpartner_id IS NOT NULL THEN o.c_bpartner_id
            WHEN prl.c_bpartner_id IS NOT NULL THEN prl.c_bpartner_id
            ELSE gljl.c_bpartner_id
        END AS c_bpartner_id, 
        CASE
            WHEN i.grandtotal IS NOT NULL THEN i.grandtotal
            WHEN o.grandtotal IS NOT NULL THEN o.grandtotal
            ELSE gljl.amtsourcedr - gljl.amtsourcecr
        END AS grandtotal, 
    to_char(
        CASE
            WHEN i.dateinvoiced IS NOT NULL THEN paymenttermduedate(i.c_paymentterm_id, i.dateinvoiced::timestamp with time zone)
            WHEN o.dateordered IS NOT NULL THEN paymenttermduedate(o.c_paymentterm_id, o.dateordered::timestamp with time zone)
            ELSE NULL::timestamp with time zone
        END, 'DD/MM/YYYY'::text) AS v_date, 
        CASE
            WHEN prl.c_invoice_id IS NOT NULL THEN invoiceopen(prl.c_invoice_id, 0::numeric)
            WHEN prl.c_order_id IS NOT NULL THEN orderopen(prl.c_order_id, 0::numeric)
            ELSE 0::numeric
        END AS openamt, 
    i.c_doctype_id AS c_doctypetarget_id, 
        CASE
            WHEN prl.c_invoice_id IS NOT NULL THEN paymentrequestopen(pr.requesttype, prl.c_invoice_id, 0::numeric)
            WHEN prl.c_order_id IS NOT NULL THEN paymentrequestopen(pr.requesttype, prl.c_order_id, 0::numeric)
            ELSE 0::numeric
        END AS prepaidamt, 
    prl.duedate, o.dateordered,
    prl.C_BP_BankAccount_ID
   FROM lve_paymentrequest pr
   JOIN lve_paymentrequestline prl ON pr.lve_paymentrequest_id = prl.lve_paymentrequest_id
   LEFT JOIN c_invoice i ON prl.c_invoice_id = i.c_invoice_id
   LEFT JOIN c_order o ON prl.c_order_id = o.c_order_id
   LEFT JOIN gl_journalline gljl ON prl.gl_journalline_id = gljl.gl_journalline_id
   LEFT JOIN ( SELECT p.c_bpartner_id, p.payamt
   FROM c_payment p
  WHERE p.c_order_id IS NOT NULL AND p.isprepayment = 'Y'::bpchar AND (p.docstatus = ANY (ARRAY['CO'::bpchar, 'CL'::bpchar])) AND NOT (EXISTS ( SELECT 1
           FROM c_allocationline al
          WHERE p.c_payment_id = al.c_payment_id))) pay ON i.c_bpartner_id = pay.c_bpartner_id
   LEFT JOIN ( SELECT invline.docaffected_id, 
    sum(invline.linenetamt) AS withholdingamt
   FROM c_invoice inv
   JOIN c_invoiceline invline ON inv.c_invoice_id = invline.c_invoice_id
  WHERE (inv.docstatus = ANY (ARRAY['CO'::bpchar, 'CL'::bpchar])) AND invline.docaffected_id IS NOT NULL
  GROUP BY invline.docaffected_id) invwh ON i.c_invoice_id = invwh.docaffected_id;
