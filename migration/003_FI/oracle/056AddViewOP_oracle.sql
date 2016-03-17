-- 16/07/2014 12:38:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View (AD_Client_ID,AD_Org_ID,AD_View_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50032,TO_DATE('2014-07-16 12:38:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Open Paymen Request',TO_DATE('2014-07-16 12:38:51','YYYY-MM-DD HH24:MI:SS'),100,'VW_LVE_RV_OPR')
;

-- 16/07/2014 12:38:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Trl (AD_Language,AD_View_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_View_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_View t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_View_ID=50032 AND NOT EXISTS (SELECT * FROM AD_View_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_View_ID=t.AD_View_ID)
;

-- 16/07/2014 12:39:12 PM VET
-- Farming Technical Assistance
UPDATE AD_View_Trl SET Name='Pagos Abiertos',Updated=TO_DATE('2014-07-16 12:39:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_ID=50032
;

-- 16/07/2014 12:39:44 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Definition (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_View_Definition_ID,AD_View_ID,Created,CreatedBy,IsActive,Processing,SeqNo,TableAlias,Updated,UpdatedBy) VALUES (0,0,53843,50068,50032,TO_DATE('2014-07-16 12:39:36','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',10,'OP',TO_DATE('2014-07-16 12:39:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 12:39:52 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73672,0,52508,50068,50032,'OP_AD_Client_ID','OP.AD_Client_ID',TO_DATE('2014-07-16 12:39:50','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Client',TO_DATE('2014-07-16 12:39:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 12:39:54 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73673,0,52509,50068,50032,'OP_AD_Org_ID','OP.AD_Org_ID',TO_DATE('2014-07-16 12:39:52','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Organization',TO_DATE('2014-07-16 12:39:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 12:39:57 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73681,0,52510,50068,50032,'OP_C_BPartner_ID','OP.C_BPartner_ID',TO_DATE('2014-07-16 12:39:54','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Business Partner ',TO_DATE('2014-07-16 12:39:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 12:39:59 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73685,0,52511,50068,50032,'OP_C_DocType_ID','OP.C_DocType_ID',TO_DATE('2014-07-16 12:39:57','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','Document Type',TO_DATE('2014-07-16 12:39:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 12:40:00 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73675,0,52512,50068,50032,'OP_Created','OP.Created',TO_DATE('2014-07-16 12:39:59','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','ECA02','The Created field indicates the date that this record was created.','Y','Created',TO_DATE('2014-07-16 12:39:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 12:40:01 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73677,0,52513,50068,50032,'OP_CreatedBy','OP.CreatedBy',TO_DATE('2014-07-16 12:40:00','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','ECA02','The Created By field indicates the user who created this record.','Y','Created By',TO_DATE('2014-07-16 12:40:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 12:40:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73683,0,52514,50068,50032,'OP_DateAcct','OP.DateAcct',TO_DATE('2014-07-16 12:40:01','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','Account Date',TO_DATE('2014-07-16 12:40:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 12:40:02 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73682,0,52515,50068,50032,'OP_DateDoc','OP.DateDoc',TO_DATE('2014-07-16 12:40:02','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Document Date',TO_DATE('2014-07-16 12:40:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 12:40:03 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73679,0,52516,50068,50032,'OP_DocumentNo','OP.DocumentNo',TO_DATE('2014-07-16 12:40:02','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Document No',TO_DATE('2014-07-16 12:40:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 12:40:04 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73674,0,52517,50068,50032,'OP_IsActive','OP.IsActive',TO_DATE('2014-07-16 12:40:03','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Active',TO_DATE('2014-07-16 12:40:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 12:40:05 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73686,0,52518,50068,50032,'OP_IsSOTrx','OP.IsSOTrx',TO_DATE('2014-07-16 12:40:04','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction','ECA02','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','Sales Transaction',TO_DATE('2014-07-16 12:40:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 12:40:07 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,73684,0,52519,50068,50032,'OP_OpenAmt','OP.OpenAmt',TO_DATE('2014-07-16 12:40:05','YYYY-MM-DD HH24:MI:SS'),100,'Open item amount','ECA02','Y','Open Amount',TO_DATE('2014-07-16 12:40:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 12:40:09 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73680,0,52520,50068,50032,'OP_Record_ID','OP.Record_ID',TO_DATE('2014-07-16 12:40:07','YYYY-MM-DD HH24:MI:SS'),100,'Direct internal record ID','ECA02','The Record ID is the internal unique identifier of a record. Please note that zooming to the record may not be successful for Orders, Invoices and Shipment/Receipts as sometimes the Sales Order type is not known.','Y','Record ID',TO_DATE('2014-07-16 12:40:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 12:40:14 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,73687,0,52521,50068,50032,'OP_RequestType','OP.RequestType',TO_DATE('2014-07-16 12:40:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Request Type',TO_DATE('2014-07-16 12:40:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 12:40:15 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73676,0,52522,50068,50032,'OP_Updated','OP.Updated',TO_DATE('2014-07-16 12:40:14','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','ECA02','The Updated field indicates the date that this record was updated.','Y','Updated',TO_DATE('2014-07-16 12:40:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/07/2014 12:40:16 PM VET
-- Farming Technical Assistance
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,73678,0,52523,50068,50032,'OP_UpdatedBy','OP.UpdatedBy',TO_DATE('2014-07-16 12:40:15','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','ECA02','The Updated By field indicates the user who updated this record.','Y','Updated By',TO_DATE('2014-07-16 12:40:15','YYYY-MM-DD HH24:MI:SS'),100)
;

