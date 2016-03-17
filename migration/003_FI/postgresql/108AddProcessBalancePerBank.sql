-- Nov 10, 2014 5:39:13 PM VET
-- LVE EFT
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53891,'N',TO_TIMESTAMP('2014-11-10 17:39:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','Y','N','N','N',0,'Balance Per Bank','L','T_BalancePerBank',TO_TIMESTAMP('2014-11-10 17:39:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 10, 2014 5:39:13 PM VET
-- LVE EFT
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53891 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Nov 10, 2014 5:39:16 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74732,102,0,19,53891,129,'AD_Client_ID',TO_TIMESTAMP('2014-11-10 17:39:13','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','ECA02',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','Y','N','N','N','Y','Client',TO_TIMESTAMP('2014-11-10 17:39:13','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Nov 10, 2014 5:39:16 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74732 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:39:18 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74733,113,0,19,53891,104,'AD_Org_ID',TO_TIMESTAMP('2014-11-10 17:39:16','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','Y','N','N','N','Y','Organization',TO_TIMESTAMP('2014-11-10 17:39:16','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Nov 10, 2014 5:39:18 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74733 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:39:20 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74734,348,0,20,53891,'IsActive',TO_TIMESTAMP('2014-11-10 17:39:18','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_TIMESTAMP('2014-11-10 17:39:18','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Nov 10, 2014 5:39:20 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74734 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:39:22 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74735,245,0,16,53891,'Created',TO_TIMESTAMP('2014-11-10 17:39:20','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created',TO_TIMESTAMP('2014-11-10 17:39:20','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Nov 10, 2014 5:39:22 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74735 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:39:24 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74736,607,0,16,53891,'Updated',TO_TIMESTAMP('2014-11-10 17:39:22','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated',TO_TIMESTAMP('2014-11-10 17:39:22','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Nov 10, 2014 5:39:24 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74736 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:39:26 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74737,246,0,19,110,53891,'CreatedBy',TO_TIMESTAMP('2014-11-10 17:39:24','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who created this records','ECA02',22,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created By',TO_TIMESTAMP('2014-11-10 17:39:24','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Nov 10, 2014 5:39:26 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74737 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:39:28 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74738,608,0,19,110,53891,'UpdatedBy',TO_TIMESTAMP('2014-11-10 17:39:26','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who updated this records','ECA02',22,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated By',TO_TIMESTAMP('2014-11-10 17:39:26','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Nov 10, 2014 5:39:28 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74738 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:39:30 PM VET
-- LVE EFT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57543,0,'T_BalancePerBank_ID',TO_TIMESTAMP('2014-11-10 17:39:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Balance Per Bank ID','Balance Per Bank ID',TO_TIMESTAMP('2014-11-10 17:39:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 10, 2014 5:39:30 PM VET
-- LVE EFT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57543 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Nov 10, 2014 5:39:32 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,74739,57543,0,13,53891,'T_BalancePerBank_ID',TO_TIMESTAMP('2014-11-10 17:39:30','YYYY-MM-DD HH24:MI:SS'),100,NULL,'ECA02',22,'Y','Y','N','N','N','Y','Y','N','N','N','N','Balance Per Bank ID',TO_TIMESTAMP('2014-11-10 17:39:30','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Nov 10, 2014 5:39:32 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74739 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:39:33 PM VET
-- LVE EFT
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,54051,TO_TIMESTAMP('2014-11-10 17:39:32','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table T_BalancePerBank',1,'Y','N','Y','Y','T_BalancePerBank','N',1000000,TO_TIMESTAMP('2014-11-10 17:39:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 10, 2014 5:39:55 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74740,835,0,19,53891,'C_Bank_ID',TO_TIMESTAMP('2014-11-10 17:39:52','YYYY-MM-DD HH24:MI:SS'),100,'Bank','ECA02',22,'The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Bank',0,TO_TIMESTAMP('2014-11-10 17:39:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 10, 2014 5:39:55 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74740 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:40:04 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74741,836,0,19,53891,'C_BankAccount_ID',TO_TIMESTAMP('2014-11-10 17:40:02','YYYY-MM-DD HH24:MI:SS'),100,'Account at the Bank','ECA02',22,'The Bank Account identifies an account at this Bank.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Bank Account',0,TO_TIMESTAMP('2014-11-10 17:40:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 10, 2014 5:40:04 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74741 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:40:16 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74742,1381,0,19,53891,'C_BankStatement_ID',TO_TIMESTAMP('2014-11-10 17:40:13','YYYY-MM-DD HH24:MI:SS'),100,'Bank Statement of account','ECA02',22,'The Bank Statement identifies a unique Bank Statement for a defined time period.  The statement defines all transactions that occurred','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Bank Statement',0,TO_TIMESTAMP('2014-11-10 17:40:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 10, 2014 5:40:16 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74742 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:40:25 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74743,1434,0,15,53891,'StatementDate',TO_TIMESTAMP('2014-11-10 17:40:22','YYYY-MM-DD HH24:MI:SS'),100,'Date of the statement','ECA02',7,'The Statement Date field defines the date of the statement.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Statement date',0,TO_TIMESTAMP('2014-11-10 17:40:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 10, 2014 5:40:25 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74743 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:40:35 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74744,1382,0,19,53891,'C_BankStatementLine_ID',TO_TIMESTAMP('2014-11-10 17:40:33','YYYY-MM-DD HH24:MI:SS'),100,'Line on a statement from this Bank','ECA02',22,'The Bank Statement Line identifies a unique transaction (Payment, Withdrawal, Charge) for the defined time period at this Bank.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Bank statement line',0,TO_TIMESTAMP('2014-11-10 17:40:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 10, 2014 5:40:35 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74744 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:40:44 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74745,1384,0,30,53891,'C_Payment_ID',TO_TIMESTAMP('2014-11-10 17:40:41','YYYY-MM-DD HH24:MI:SS'),100,'Payment identifier','ECA02',22,'The Payment is a unique identifier of this payment.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Payment',0,TO_TIMESTAMP('2014-11-10 17:40:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 10, 2014 5:40:44 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74745 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:40:50 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74746,263,0,15,53891,'DateAcct',TO_TIMESTAMP('2014-11-10 17:40:48','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02',7,'The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Account Date',0,TO_TIMESTAMP('2014-11-10 17:40:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 10, 2014 5:40:50 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74746 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:40:57 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74747,1477,0,12,53891,'PayAmt',TO_TIMESTAMP('2014-11-10 17:40:54','YYYY-MM-DD HH24:MI:SS'),100,'Amount being paid','ECA02',22,'Indicates the amount this payment is for.  The payment amount can be for single or multiple invoices or a partial payment for an invoice.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Payment amount',0,TO_TIMESTAMP('2014-11-10 17:40:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 10, 2014 5:40:57 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74747 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:41:14 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74748,1105,0,17,319,53891,'IsReconciled',TO_TIMESTAMP('2014-11-10 17:41:11','YYYY-MM-DD HH24:MI:SS'),100,'Payment is reconciled with bank statement','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Reconciled',0,TO_TIMESTAMP('2014-11-10 17:41:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 10, 2014 5:41:14 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74748 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:41:45 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74750,56113,0,12,53891,'AmountNotReconciled',TO_TIMESTAMP('2014-11-10 17:41:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Amount Not Reconciled',0,TO_TIMESTAMP('2014-11-10 17:41:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 10, 2014 5:41:45 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74750 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:43:18 PM VET
-- LVE EFT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57544,0,12,'ReconciledAmount',TO_TIMESTAMP('2014-11-10 17:43:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Reconciled Amount','Reconciled Amount',TO_TIMESTAMP('2014-11-10 17:43:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 10, 2014 5:43:18 PM VET
-- LVE EFT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57544 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Nov 10, 2014 5:43:28 PM VET
-- LVE EFT
UPDATE AD_Element_Trl SET Name='Monto Conciliado',PrintName='Monto Conciliado',Updated=TO_TIMESTAMP('2014-11-10 17:43:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57544 AND AD_Language='es_MX'
;

-- Nov 10, 2014 5:43:49 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74751,57544,0,12,53891,'ReconciledAmount',TO_TIMESTAMP('2014-11-10 17:43:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Reconciled Amount',0,TO_TIMESTAMP('2014-11-10 17:43:46','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 10, 2014 5:43:49 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74751 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:44:30 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74752,56117,0,12,53891,'AmountAvailable','(ReconciledAmount + AmountNotReconciled)',TO_TIMESTAMP('2014-11-10 17:44:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Amount Available',0,TO_TIMESTAMP('2014-11-10 17:44:27','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 10, 2014 5:44:30 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74752 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 5:47:23 PM VET
-- LVE EFT
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53143,53891,TO_TIMESTAMP('2014-11-10 17:47:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','T_BalancePerBank',TO_TIMESTAMP('2014-11-10 17:47:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 10, 2014 5:47:29 PM VET
-- LVE EFT
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53715,53143,'N',TO_TIMESTAMP('2014-11-10 17:47:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Balance Per Bank','Y',0,0,TO_TIMESTAMP('2014-11-10 17:47:28','YYYY-MM-DD HH24:MI:SS'),100,'inf_T_BalancePerBank BalancePerBank')
;

-- Nov 10, 2014 5:47:29 PM VET
-- LVE EFT
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53715 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Nov 10, 2014 5:47:30 PM VET
-- LVE EFT
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53715,0,TO_TIMESTAMP('2014-11-10 17:47:29','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-11-10 17:47:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 10, 2014 5:47:30 PM VET
-- LVE EFT
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53715,102,TO_TIMESTAMP('2014-11-10 17:47:30','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-11-10 17:47:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 10, 2014 5:47:30 PM VET
-- LVE EFT
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (11,0,53715,103,TO_TIMESTAMP('2014-11-10 17:47:30','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-11-10 17:47:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 10, 2014 5:47:30 PM VET
-- LVE EFT
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53715,50001,TO_TIMESTAMP('2014-11-10 17:47:30','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-11-10 17:47:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 10, 2014 5:47:30 PM VET
-- LVE EFT
INSERT INTO AD_Process_Access (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Role_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy) VALUES (0,0,53715,50002,TO_TIMESTAMP('2014-11-10 17:47:30','YYYY-MM-DD HH24:MI:SS'),100,'Y',TO_TIMESTAMP('2014-11-10 17:47:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 10, 2014 5:47:54 PM VET
-- LVE EFT
UPDATE AD_Process_Trl SET Name='Saldo Por Banco',Description='Saldo Por Banco a determinada fecha',Updated=TO_TIMESTAMP('2014-11-10 17:47:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53715 AND AD_Language='es_MX'
;

-- Nov 10, 2014 5:48:11 PM VET
-- LVE EFT
UPDATE AD_Process SET Description='Bank Balance Of particular date',Updated=TO_TIMESTAMP('2014-11-10 17:48:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53715
;

-- Nov 10, 2014 5:48:11 PM VET
-- LVE EFT
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53715
;

-- Nov 10, 2014 5:48:27 PM VET
-- LVE EFT
UPDATE AD_Process SET Classname='org.spin.report.BalancePerBank',Updated=TO_TIMESTAMP('2014-11-10 17:48:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53715
;

-- Nov 10, 2014 5:49:03 PM VET
-- LVE EFT
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53891,0,53715,TO_TIMESTAMP('2014-11-10 17:49:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Balance Per Bank',TO_TIMESTAMP('2014-11-10 17:49:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 10, 2014 5:49:03 PM VET
-- LVE EFT
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53891 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Nov 10, 2014 5:49:03 PM VET
-- LVE EFT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-11-10 17:49:03','YYYY-MM-DD HH24:MI:SS'),100,'Y',53891,0,999,TO_TIMESTAMP('2014-11-10 17:49:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 10, 2014 5:49:23 PM VET
-- LVE EFT
UPDATE AD_Menu_Trl SET Name='Saldo Por Banco',Updated=TO_TIMESTAMP('2014-11-10 17:49:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53891 AND AD_Language='es_MX'
;

-- Nov 10, 2014 5:49:27 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=0,Updated=TO_TIMESTAMP('2014-11-10 17:49:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53891
;

-- Nov 10, 2014 5:49:27 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=1,Updated=TO_TIMESTAMP('2014-11-10 17:49:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53863
;

-- Nov 10, 2014 5:49:27 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2,Updated=TO_TIMESTAMP('2014-11-10 17:49:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53647
;

-- Nov 10, 2014 5:49:27 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3,Updated=TO_TIMESTAMP('2014-11-10 17:49:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53627
;

-- Nov 10, 2014 5:49:27 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4,Updated=TO_TIMESTAMP('2014-11-10 17:49:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Nov 10, 2014 5:49:27 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5,Updated=TO_TIMESTAMP('2014-11-10 17:49:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Nov 10, 2014 5:49:27 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6,Updated=TO_TIMESTAMP('2014-11-10 17:49:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Nov 10, 2014 5:49:27 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7,Updated=TO_TIMESTAMP('2014-11-10 17:49:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Nov 10, 2014 5:49:32 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=2,Updated=TO_TIMESTAMP('2014-11-10 17:49:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53891
;

-- Nov 10, 2014 5:49:32 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=3,Updated=TO_TIMESTAMP('2014-11-10 17:49:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53647
;

-- Nov 10, 2014 5:49:32 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=4,Updated=TO_TIMESTAMP('2014-11-10 17:49:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53627
;

-- Nov 10, 2014 5:49:32 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=5,Updated=TO_TIMESTAMP('2014-11-10 17:49:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=241
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=6,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=288
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=7,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=432
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=8,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=243
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=9,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=413
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=10,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=538
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=11,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=462
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=12,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=505
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=13,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=235
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=14,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000207
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=15,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=511
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=16,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000209
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=17,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=245
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=18,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=251
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=19,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=246
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=20,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=509
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=21,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=510
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=22,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=496
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=23,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=497
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=24,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=304
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=25,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=255
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=26,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=286
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=27,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=287
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=28,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=438
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=29,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=234
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=30,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=244
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=31,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53190
;

-- Nov 10, 2014 5:49:33 PM VET
-- LVE EFT
UPDATE AD_TreeNodeMM SET Parent_ID=236, SeqNo=32,Updated=TO_TIMESTAMP('2014-11-10 17:49:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53187
;

-- Nov 10, 2014 5:52:02 PM VET
-- LVE EFT
UPDATE AD_Element SET ColumnName='ReconciledAmt',Updated=TO_TIMESTAMP('2014-11-10 17:52:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57544
;

-- Nov 10, 2014 5:52:02 PM VET
-- LVE EFT
UPDATE AD_Column SET ColumnName='ReconciledAmt', Name='Reconciled Amount', Description=NULL, Help=NULL WHERE AD_Element_ID=57544
;

-- Nov 10, 2014 5:52:02 PM VET
-- LVE EFT
UPDATE AD_Process_Para SET ColumnName='ReconciledAmt', Name='Reconciled Amount', Description=NULL, Help=NULL, AD_Element_ID=57544 WHERE UPPER(ColumnName)='RECONCILEDAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Nov 10, 2014 5:52:02 PM VET
-- LVE EFT
UPDATE AD_Process_Para SET ColumnName='ReconciledAmt', Name='Reconciled Amount', Description=NULL, Help=NULL WHERE AD_Element_ID=57544 AND IsCentrallyMaintained='Y'
;

-- Nov 10, 2014 5:56:24 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,835,0,53715,55028,19,'C_Bank_ID',TO_TIMESTAMP('2014-11-10 17:56:22','YYYY-MM-DD HH24:MI:SS'),100,'Bank','ECA02',22,'The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Y','Y','Y','N','Bank',10,TO_TIMESTAMP('2014-11-10 17:56:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 10, 2014 5:56:24 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55028 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 10, 2014 5:57:09 PM VET
-- LVE EFT
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52406,'C_BankAccount.C_Bank_ID = @C_Bank_ID@',TO_TIMESTAMP('2014-11-10 17:57:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_BankAccount of Bank','S',TO_TIMESTAMP('2014-11-10 17:57:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 10, 2014 5:57:18 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,836,0,53715,55029,19,52406,'C_BankAccount_ID',TO_TIMESTAMP('2014-11-10 17:57:16','YYYY-MM-DD HH24:MI:SS'),100,'Account at the Bank','ECA02',22,'The Bank Account identifies an account at this Bank.','Y','Y','Y','N','Bank Account',20,TO_TIMESTAMP('2014-11-10 17:57:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 10, 2014 5:57:18 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55029 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 10, 2014 5:57:31 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1434,0,53715,55030,15,'StatementDate',TO_TIMESTAMP('2014-11-10 17:57:29','YYYY-MM-DD HH24:MI:SS'),100,'Date of the statement','ECA02',7,'The Statement Date field defines the date of the statement.','Y','Y','Y','N','Statement date',30,TO_TIMESTAMP('2014-11-10 17:57:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 10, 2014 5:57:31 PM VET
-- LVE EFT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=55030 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Nov 10, 2014 5:57:59 PM VET
-- LVE EFT
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-11-10 17:57:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=55029
;

-- Nov 10, 2014 5:59:22 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74753,114,0,19,53891,'AD_PInstance_ID',TO_TIMESTAMP('2014-11-10 17:59:19','YYYY-MM-DD HH24:MI:SS'),100,'Instance of the process','ECA02',22,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Process Instance',0,TO_TIMESTAMP('2014-11-10 17:59:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 10, 2014 5:59:22 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74753 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 10, 2014 6:00:59 PM VET
-- LVE EFT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=74739
;

-- Nov 10, 2014 6:00:59 PM VET
-- LVE EFT
DELETE FROM AD_Column WHERE AD_Column_ID=74739
;

-- Nov 10, 2014 6:01:01 PM VET
-- LVE EFT
DELETE FROM AD_Element_Trl WHERE AD_Element_ID=57543
;

-- Nov 10, 2014 6:01:01 PM VET
-- LVE EFT
DELETE FROM AD_Element WHERE AD_Element_ID=57543
;

-- Nov 10, 2014 6:02:31 PM VET
-- LVE EFT
UPDATE AD_Column SET ColumnSQL='(ReconciledAmt + AmountNotReconciled)',Updated=TO_TIMESTAMP('2014-11-10 18:02:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74752
;

-- Nov 10, 2014 6:07:06 PM VET
-- LVE EFT
UPDATE AD_Column SET AD_Reference_Value_ID=343,Updated=TO_TIMESTAMP('2014-11-10 18:07:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74745
;

-- Nov 10, 2014 6:10:14 PM VET
-- LVE EFT
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53283,Updated=TO_TIMESTAMP('2014-11-10 18:10:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74741
;

-- Nov 10, 2014 6:10:22 PM VET
-- LVE EFT
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=52001,Updated=TO_TIMESTAMP('2014-11-10 18:10:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74740
;

-- Nov 10, 2014 6:10:55 PM VET
-- LVE EFT
UPDATE AD_Column SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2014-11-10 18:10:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74737
;

-- Nov 10, 2014 6:11:07 PM VET
-- LVE EFT
UPDATE AD_Column SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2014-11-10 18:11:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74738
;

-- Nov 10, 2014 6:18:49 PM VET
-- LVE EFT
UPDATE AD_Column SET AD_Element_ID=1297, ColumnName='DateTrx', Description='Transaction Date', Help='The Transaction Date indicates the date of the transaction.', Name='Transaction Date',Updated=TO_TIMESTAMP('2014-11-10 18:18:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74746
;

-- Nov 10, 2014 6:18:49 PM VET
-- LVE EFT
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=74746
;

-- Nov 10, 2014 6:18:49 PM VET
-- LVE EFT
UPDATE AD_Field SET Name='Transaction Date', Description='Transaction Date', Help='The Transaction Date indicates the date of the transaction.' WHERE AD_Column_ID=74746 AND IsCentrallyMaintained='Y'
;

