-- Jul 28, 2014 8:24:26 PM UTC
-- LVE EFT
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53854,'N',TO_TIMESTAMP('2014-07-28 20:24:19','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','N','N','N','Y',0,'View Payment Request Line','L','LVE_RV_PaymentRequestLine',TO_TIMESTAMP('2014-07-28 20:24:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 28, 2014 8:24:26 PM UTC
-- LVE EFT
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53854 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Jul 28, 2014 8:24:28 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73867,102,0,19,53854,129,'AD_Client_ID',TO_TIMESTAMP('2014-07-28 20:24:26','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','ECA02',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','Y','N','N','N','Y','Client',TO_TIMESTAMP('2014-07-28 20:24:26','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jul 28, 2014 8:24:28 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73867 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:24:30 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73868,113,0,19,53854,104,'AD_Org_ID',TO_TIMESTAMP('2014-07-28 20:24:28','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','Y','N','N','N','Y','Organization',TO_TIMESTAMP('2014-07-28 20:24:28','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jul 28, 2014 8:24:30 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73868 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:24:32 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73869,348,0,20,53854,'IsActive',TO_TIMESTAMP('2014-07-28 20:24:30','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_TIMESTAMP('2014-07-28 20:24:30','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jul 28, 2014 8:24:32 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73869 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:24:33 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73870,245,0,16,53854,'Created',TO_TIMESTAMP('2014-07-28 20:24:32','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created',TO_TIMESTAMP('2014-07-28 20:24:32','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jul 28, 2014 8:24:33 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73870 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:24:34 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73871,607,0,16,53854,'Updated',TO_TIMESTAMP('2014-07-28 20:24:33','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated',TO_TIMESTAMP('2014-07-28 20:24:33','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jul 28, 2014 8:24:34 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73871 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:24:35 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73872,246,0,19,110,53854,'CreatedBy',TO_TIMESTAMP('2014-07-28 20:24:34','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who created this records','ECA02',22,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created By',TO_TIMESTAMP('2014-07-28 20:24:34','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jul 28, 2014 8:24:35 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73872 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:24:36 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73873,608,0,19,110,53854,'UpdatedBy',TO_TIMESTAMP('2014-07-28 20:24:35','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who updated this records','ECA02',22,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated By',TO_TIMESTAMP('2014-07-28 20:24:35','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jul 28, 2014 8:24:36 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73873 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:24:38 PM UTC
-- LVE EFT
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,54008,TO_TIMESTAMP('2014-07-28 20:24:36','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LVE_RV_PaymentRequestLine',1,'Y','N','Y','Y','LVE_RV_PaymentRequestLine','N',1000000,TO_TIMESTAMP('2014-07-28 20:24:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 28, 2014 8:25:11 PM UTC
-- LVE EFT
UPDATE AD_Table_Trl SET Name='Linea de Orden de Pago',Updated=TO_TIMESTAMP('2014-07-28 20:25:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53854 AND AD_Language='es_MX'
;

-- Jul 28, 2014 8:25:14 PM UTC
-- LVE EFT
UPDATE AD_Table_Trl SET Name='Linea de Orden de Pago',Updated=TO_TIMESTAMP('2014-07-28 20:25:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53854 AND AD_Language='es_VE'
;

-- Jul 28, 2014 8:25:30 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73874,1008,0,19,53854,'C_Invoice_ID',TO_TIMESTAMP('2014-07-28 20:25:23','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02',10,'The Invoice Document.','Y','N','N','N','N','N','N','N','N','N','Invoice',TO_TIMESTAMP('2014-07-28 20:25:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 28, 2014 8:25:30 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73874 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:25:31 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73875,558,0,19,53854,'C_Order_ID',TO_TIMESTAMP('2014-07-28 20:25:30','YYYY-MM-DD HH24:MI:SS'),100,'Order','ECA02',10,'The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','N','N','N','N','N','N','N','N','N','Order',TO_TIMESTAMP('2014-07-28 20:25:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 28, 2014 8:25:31 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73875 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:25:32 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73876,1533,0,19,53854,'C_PaySelectionLine_ID',TO_TIMESTAMP('2014-07-28 20:25:31','YYYY-MM-DD HH24:MI:SS'),100,'Payment Selection Line','ECA02',10,'The Payment Selection Line identifies a unique line in a payment','Y','N','N','N','N','N','N','N','N','N','Payment Selection Line',TO_TIMESTAMP('2014-07-28 20:25:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 28, 2014 8:25:32 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73876 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:25:33 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73877,314,0,19,53854,'GL_JournalLine_ID',TO_TIMESTAMP('2014-07-28 20:25:32','YYYY-MM-DD HH24:MI:SS'),100,'General Ledger Journal Line','ECA02',10,'The General Ledger Journal Line identifies a single transaction in a journal.','Y','N','N','N','N','N','N','N','N','N','Journal Line',TO_TIMESTAMP('2014-07-28 20:25:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 28, 2014 8:25:33 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73877 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:25:34 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73878,57327,0,20,53854,'IsPrepared',TO_TIMESTAMP('2014-07-28 20:25:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','N','N','N','N','N','N','N','N','N','Prepared',TO_TIMESTAMP('2014-07-28 20:25:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 28, 2014 8:25:34 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73878 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:25:35 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73879,439,0,11,53854,'Line',TO_TIMESTAMP('2014-07-28 20:25:34','YYYY-MM-DD HH24:MI:SS'),100,'Unique line for this document','ECA02',10,'Indicates the unique line for a document.  It will also control the display order of the lines within a document.','Y','N','N','N','N','N','N','N','N','N','Line No',TO_TIMESTAMP('2014-07-28 20:25:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 28, 2014 8:25:35 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73879 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:25:36 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73880,57250,0,19,53854,'LVE_PaymentRequest_ID',TO_TIMESTAMP('2014-07-28 20:25:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Payment Request',TO_TIMESTAMP('2014-07-28 20:25:35','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 28, 2014 8:25:36 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73880 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:25:37 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73881,57265,0,19,53854,'LVE_PaymentRequestLine_ID',TO_TIMESTAMP('2014-07-28 20:25:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Payment Request Line',TO_TIMESTAMP('2014-07-28 20:25:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 28, 2014 8:25:37 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73881 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:25:39 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73882,1477,0,12,53854,'PayAmt',TO_TIMESTAMP('2014-07-28 20:25:37','YYYY-MM-DD HH24:MI:SS'),100,'Amount being paid','ECA02',131089,'Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.','Y','N','N','N','N','N','N','N','N','N','Payment amount',TO_TIMESTAMP('2014-07-28 20:25:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 28, 2014 8:25:39 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73882 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:25:40 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73883,1047,0,20,53854,'Processed',TO_TIMESTAMP('2014-07-28 20:25:39','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','ECA02',1,'The Processed checkbox indicates that a document has been processed.','Y','N','N','N','N','N','N','N','N','N','Processed',TO_TIMESTAMP('2014-07-28 20:25:39','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 28, 2014 8:25:40 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73883 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:25:53 PM UTC
-- LVE EFT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73871
;

-- Jul 28, 2014 8:25:53 PM UTC
-- LVE EFT
DELETE FROM AD_Column WHERE AD_Column_ID=73871
;

-- Jul 28, 2014 8:25:55 PM UTC
-- LVE EFT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73873
;

-- Jul 28, 2014 8:25:55 PM UTC
-- LVE EFT
DELETE FROM AD_Column WHERE AD_Column_ID=73873
;

-- Jul 28, 2014 8:26:06 PM UTC
-- LVE EFT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73870
;

-- Jul 28, 2014 8:26:06 PM UTC
-- LVE EFT
DELETE FROM AD_Column WHERE AD_Column_ID=73870
;

-- Jul 28, 2014 8:26:20 PM UTC
-- LVE EFT
UPDATE AD_Column SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2014-07-28 20:26:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73872
;

-- Jul 28, 2014 8:27:02 PM UTC
-- LVE EFT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73872
;

-- Jul 28, 2014 8:27:02 PM UTC
-- LVE EFT
DELETE FROM AD_Column WHERE AD_Column_ID=73872
;

-- Jul 28, 2014 8:27:21 PM UTC
-- LVE EFT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73869
;

-- Jul 28, 2014 8:27:21 PM UTC
-- LVE EFT
DELETE FROM AD_Column WHERE AD_Column_ID=73869
;

-- Jul 28, 2014 8:27:56 PM UTC
-- LVE EFT
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53134,53854,TO_TIMESTAMP('2014-07-28 20:27:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_RV_PaymentRequestLine',TO_TIMESTAMP('2014-07-28 20:27:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 28, 2014 8:28:49 PM UTC
-- LVE EFT
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53679,53134,'N',TO_TIMESTAMP('2014-07-28 20:28:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Payment Request Detail','Y',0,0,TO_TIMESTAMP('2014-07-28 20:28:48','YYYY-MM-DD HH24:MI:SS'),100,'LVE_RV_PaymentRequestLine Report')
;

-- Jul 28, 2014 8:28:49 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53679 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jul 28, 2014 8:28:49 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53679,0,TO_TIMESTAMP('2014-07-28 20:28:49','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-28 20:28:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 28, 2014 8:28:50 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53679,102,TO_TIMESTAMP('2014-07-28 20:28:49','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-28 20:28:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 28, 2014 8:28:50 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53679,103,TO_TIMESTAMP('2014-07-28 20:28:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-28 20:28:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 28, 2014 8:28:50 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53679,50001,TO_TIMESTAMP('2014-07-28 20:28:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-28 20:28:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 28, 2014 8:28:50 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53679,50002,TO_TIMESTAMP('2014-07-28 20:28:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-07-28 20:28:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 28, 2014 8:29:04 PM UTC
-- LVE EFT
UPDATE AD_Process_Trl SET Name='Detalle Orden de Pago',Updated=TO_TIMESTAMP('2014-07-28 20:29:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53679 AND AD_Language='es_MX'
;

-- Jul 28, 2014 8:29:07 PM UTC
-- LVE EFT
UPDATE AD_Process_Trl SET Name='Detalle Orden de Pago',Updated=TO_TIMESTAMP('2014-07-28 20:29:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53679 AND AD_Language='es_VE'
;

-- Jul 28, 2014 8:30:11 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57250,0,53679,54896,19,'LVE_PaymentRequest_ID',TO_TIMESTAMP('2014-07-28 20:30:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Payment Request',10,TO_TIMESTAMP('2014-07-28 20:30:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 28, 2014 8:30:11 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54896 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jul 28, 2014 8:32:28 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73884,289,0,10,131,53854,'DocStatus',TO_TIMESTAMP('2014-07-28 20:32:20','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','N','N','N','Document Status',TO_TIMESTAMP('2014-07-28 20:32:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 28, 2014 8:32:28 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73884 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:32:30 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73885,265,0,16,53854,'DateDoc',TO_TIMESTAMP('2014-07-28 20:32:28','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',29,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','N','N','N','N','N','N','N','N','N','Document Date',TO_TIMESTAMP('2014-07-28 20:32:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 28, 2014 8:32:30 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73885 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:32:33 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73886,3063,0,10,53854,'RequestType',TO_TIMESTAMP('2014-07-28 20:32:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',3,'Y','N','N','N','N','N','N','N','N','N','Request Type',TO_TIMESTAMP('2014-07-28 20:32:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 28, 2014 8:32:33 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73886 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:32:35 PM UTC
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73887,196,0,19,53854,'C_DocType_ID',TO_TIMESTAMP('2014-07-28 20:32:33','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02',10,'The Document Type determines document sequence and processing rules','Y','N','N','N','N','N','N','N','N','N','Document Type',TO_TIMESTAMP('2014-07-28 20:32:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 28, 2014 8:32:35 PM UTC
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73887 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 28, 2014 8:33:07 PM UTC
-- LVE EFT
UPDATE AD_Column SET AD_Reference_ID=17,Updated=TO_TIMESTAMP('2014-07-28 20:33:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73884
;

-- Jul 28, 2014 8:33:23 PM UTC
-- LVE EFT
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=53707,Updated=TO_TIMESTAMP('2014-07-28 20:33:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73886
;

-- Jul 28, 2014 8:34:42 PM UTC
-- LVE EFT
UPDATE AD_Val_Rule SET Name='C_DocType Payment Request',Updated=TO_TIMESTAMP('2014-07-28 20:34:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52376
;

-- Jul 28, 2014 8:34:59 PM UTC
-- LVE EFT
UPDATE AD_Column SET AD_Val_Rule_ID=52376,Updated=TO_TIMESTAMP('2014-07-28 20:34:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73887
;

-- Jul 28, 2014 8:35:34 PM UTC
-- LVE EFT
DELETE FROM AD_Process_Para_Trl WHERE AD_Process_Para_ID=54896
;

-- Jul 28, 2014 8:35:34 PM UTC
-- LVE EFT
DELETE FROM AD_Process_Para WHERE AD_Process_Para_ID=54896
;

-- Jul 28, 2014 8:35:50 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,196,0,53679,54897,19,'C_DocType_ID',TO_TIMESTAMP('2014-07-28 20:35:48','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02',22,'The Document Type determines document sequence and processing rules','Y','Y','N','N','Document Type',10,TO_TIMESTAMP('2014-07-28 20:35:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 28, 2014 8:35:50 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54897 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jul 28, 2014 8:35:58 PM UTC
-- LVE EFT
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52376,Updated=TO_TIMESTAMP('2014-07-28 20:35:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54897
;

-- Jul 28, 2014 8:36:10 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57250,0,53679,54898,19,'LVE_PaymentRequest_ID',TO_TIMESTAMP('2014-07-28 20:36:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Payment Request',20,TO_TIMESTAMP('2014-07-28 20:36:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 28, 2014 8:36:10 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54898 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jul 28, 2014 8:36:19 PM UTC
-- LVE EFT
UPDATE AD_Process_Para SET SeqNo=30,Updated=TO_TIMESTAMP('2014-07-28 20:36:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54898
;

-- Jul 28, 2014 8:36:47 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,3063,0,53679,54899,17,53707,'RequestType',TO_TIMESTAMP('2014-07-28 20:36:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',4,'Y','Y','N','N','Request Type',40,TO_TIMESTAMP('2014-07-28 20:36:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 28, 2014 8:36:47 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54899 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jul 28, 2014 8:36:56 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,289,0,53679,54900,17,131,'DocStatus',TO_TIMESTAMP('2014-07-28 20:36:54','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','N','N','Document Status',50,TO_TIMESTAMP('2014-07-28 20:36:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 28, 2014 8:36:56 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54900 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jul 28, 2014 8:37:06 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53679,54901,15,'DateDoc',TO_TIMESTAMP('2014-07-28 20:37:04','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','Y','Document Date',60,TO_TIMESTAMP('2014-07-28 20:37:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 28, 2014 8:37:06 PM UTC
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54901 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jul 28, 2014 8:37:41 PM UTC
-- LVE EFT
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53865,0,53679,TO_TIMESTAMP('2014-07-28 20:37:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','LVE_RV_PaymentRequestLine Report',TO_TIMESTAMP('2014-07-28 20:37:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 28, 2014 8:37:41 PM UTC
-- LVE EFT
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53865 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jul 28, 2014 8:37:41 PM UTC
-- LVE EFT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-07-28 20:37:41','YYYY-MM-DD HH24:MI:SS'),100,'Y',53865,0,999,TO_TIMESTAMP('2014-07-28 20:37:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 28, 2014 8:37:55 PM UTC
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=53864, SeqNo=0,Updated=TO_TIMESTAMP('2014-07-28 20:37:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53865
;

-- Jul 28, 2014 8:38:15 PM UTC
-- LVE EFT
UPDATE AD_Menu SET AD_Process_ID=NULL,Updated=TO_TIMESTAMP('2014-07-28 20:38:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53865
;

-- Jul 28, 2014 8:38:30 PM UTC
-- LVE EFT
UPDATE AD_Menu SET AD_Process_ID=53679,Updated=TO_TIMESTAMP('2014-07-28 20:38:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53865
;

-- Jul 28, 2014 8:38:40 PM UTC
-- LVE EFT
UPDATE AD_Menu SET Name='Payment Request Detail',Updated=TO_TIMESTAMP('2014-07-28 20:38:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53865
;

-- Jul 28, 2014 8:38:40 PM UTC
-- LVE EFT
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53865
;

