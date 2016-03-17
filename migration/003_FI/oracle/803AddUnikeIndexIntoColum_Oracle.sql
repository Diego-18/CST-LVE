--	Add Unique Index of Payment Request Line
--DROP INDEX UK_LVE_PaymentRequestLine_Invoice;
CREATE UNIQUE INDEX UK_LVE_PaymentRequestLine_Invoice ON LVE_PaymentRequestLine (AD_Client_ID, AD_Org_ID, C_Invoice_ID);
--DROP INDEX UK_LVE_PaymentRequestLine_JournalLine;
CREATE UNIQUE INDEX UK_LVE_PaymentRequestLine_JournalLine ON LVE_PaymentRequestLine (AD_Client_ID, AD_Org_ID, GL_JournalLine_ID);
--DROP INDEX UK_LVE_PaymentRequestLine_Order;
CREATE UNIQUE INDEX UK_LVE_PaymentRequestLine_Order ON LVE_PaymentRequestLine (AD_Client_ID, AD_Org_ID, C_Order_ID);