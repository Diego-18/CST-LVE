-- Sep 17, 2013 9:20:23 AM VET
-- LVE HR
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53556,TO_TIMESTAMP('2013-09-17 09:20:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','HR_Concept Table',TO_TIMESTAMP('2013-09-17 09:20:20','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Jun 11, 2014 2:51:01 PM VET
-- LVE HR
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53813,'N',TO_TIMESTAMP('2014-06-11 14:50:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','Y','N','N','N',0,'Loan Definition','L','LVE_HR_LoanDefinition',TO_TIMESTAMP('2014-06-11 14:50:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 2:51:01 PM VET
-- LVE HR
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53813 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Jun 11, 2014 2:51:02 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73058,102,0,19,53813,129,'AD_Client_ID',TO_TIMESTAMP('2014-06-11 14:51:01','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','ECA02',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','Y','N','N','N','Y','Client',TO_TIMESTAMP('2014-06-11 14:51:01','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jun 11, 2014 2:51:02 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73058 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 2:51:03 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73059,113,0,19,53813,104,'AD_Org_ID',TO_TIMESTAMP('2014-06-11 14:51:02','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','Y','N','N','N','Y','Organization',TO_TIMESTAMP('2014-06-11 14:51:02','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jun 11, 2014 2:51:03 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73059 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 2:51:05 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73060,348,0,20,53813,'IsActive',TO_TIMESTAMP('2014-06-11 14:51:03','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','ECA02',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_TIMESTAMP('2014-06-11 14:51:03','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jun 11, 2014 2:51:05 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73060 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 2:51:06 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73061,245,0,16,53813,'Created',TO_TIMESTAMP('2014-06-11 14:51:05','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was created','ECA02',7,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created',TO_TIMESTAMP('2014-06-11 14:51:05','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jun 11, 2014 2:51:06 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73061 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 2:51:08 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73062,607,0,16,53813,'Updated',TO_TIMESTAMP('2014-06-11 14:51:06','YYYY-MM-DD HH24:MI:SS'),100,NULL,'Date this record was updated','ECA02',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated',TO_TIMESTAMP('2014-06-11 14:51:06','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jun 11, 2014 2:51:08 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73062 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 2:51:10 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73063,246,0,19,110,53813,'CreatedBy',TO_TIMESTAMP('2014-06-11 14:51:08','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who created this records','ECA02',22,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Created By',TO_TIMESTAMP('2014-06-11 14:51:08','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jun 11, 2014 2:51:10 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73063 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 2:51:11 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73064,608,0,19,110,53813,'UpdatedBy',TO_TIMESTAMP('2014-06-11 14:51:10','YYYY-MM-DD HH24:MI:SS'),100,NULL,'User who updated this records','ECA02',22,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','Y','N','N','N','Y','Updated By',TO_TIMESTAMP('2014-06-11 14:51:10','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jun 11, 2014 2:51:11 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73064 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 2:51:12 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57208,0,'LVE_HR_LoanDefinition_ID',TO_TIMESTAMP('2014-06-11 14:51:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Loan Definition ID','Loan Definition ID',TO_TIMESTAMP('2014-06-11 14:51:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 2:51:12 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57208 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 11, 2014 2:51:13 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,73065,57208,0,13,53813,'LVE_HR_LoanDefinition_ID',TO_TIMESTAMP('2014-06-11 14:51:12','YYYY-MM-DD HH24:MI:SS'),100,NULL,'ECA02',22,'Y','Y','N','N','N','Y','Y','N','N','N','N','Loan Definition ID',TO_TIMESTAMP('2014-06-11 14:51:12','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- Jun 11, 2014 2:51:13 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73065 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 2:51:14 PM VET
-- LVE HR
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53961,TO_TIMESTAMP('2014-06-11 14:51:13','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LVE_HR_LoanDefinition',1,'Y','N','Y','Y','LVE_HR_LoanDefinition','N',1000000,TO_TIMESTAMP('2014-06-11 14:51:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 2:53:51 PM VET
-- LVE HR
UPDATE AD_Table_Trl SET Name='Definición de Préstamo',Updated=TO_TIMESTAMP('2014-06-11 14:53:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53813 AND AD_Language='es_MX'
;

-- Jun 11, 2014 2:53:53 PM VET
-- LVE HR
UPDATE AD_Table_Trl SET Name='Definición de Préstamo',Updated=TO_TIMESTAMP('2014-06-11 14:53:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53813 AND AD_Language='es_VE'
;

-- Jun 11, 2014 2:54:05 PM VET
-- LVE HR
UPDATE AD_Element SET Name='Loan Definition', PrintName='Loan Definition',Updated=TO_TIMESTAMP('2014-06-11 14:54:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57208
;

-- Jun 11, 2014 2:54:05 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57208
;

-- Jun 11, 2014 2:54:05 PM VET
-- LVE HR
UPDATE AD_Column SET ColumnName='LVE_HR_LoanDefinition_ID', Name='Loan Definition', Description=NULL, Help=NULL WHERE AD_Element_ID=57208
;

-- Jun 11, 2014 2:54:05 PM VET
-- LVE HR
UPDATE AD_Process_Para SET ColumnName='LVE_HR_LoanDefinition_ID', Name='Loan Definition', Description=NULL, Help=NULL, AD_Element_ID=57208 WHERE UPPER(ColumnName)='LVE_HR_LOANDEFINITION_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jun 11, 2014 2:54:05 PM VET
-- LVE HR
UPDATE AD_Process_Para SET ColumnName='LVE_HR_LoanDefinition_ID', Name='Loan Definition', Description=NULL, Help=NULL WHERE AD_Element_ID=57208 AND IsCentrallyMaintained='Y'
;

-- Jun 11, 2014 2:54:05 PM VET
-- LVE HR
UPDATE AD_Field SET Name='Loan Definition', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57208) AND IsCentrallyMaintained='Y'
;

-- Jun 11, 2014 2:54:05 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET PrintName='Loan Definition', Name='Loan Definition' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57208)
;

-- Jun 11, 2014 2:54:09 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Definición de Préstamo',PrintName='Definición de Préstamo',Updated=TO_TIMESTAMP('2014-06-11 14:54:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57208 AND AD_Language='es_MX'
;

-- Jun 11, 2014 2:54:12 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Definición de Préstamo',PrintName='Definición de Préstamo',Updated=TO_TIMESTAMP('2014-06-11 14:54:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57208 AND AD_Language='es_VE'
;

-- Jun 11, 2014 2:54:27 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73066,620,0,10,53813,'Value',TO_TIMESTAMP('2014-06-11 14:54:24','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique','ECA02',60,'A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','N','N','N','Y','N','N','N','Y','N','N','Y','Search Key',1,TO_TIMESTAMP('2014-06-11 14:54:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 2:54:27 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73066 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 2:54:39 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73067,469,0,10,53813,'Name',TO_TIMESTAMP('2014-06-11 14:54:33','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','N','N','N','Y','N','N','N','Y','N','N','Y','Name',2,TO_TIMESTAMP('2014-06-11 14:54:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 2:54:39 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73067 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 2:54:49 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73068,275,0,10,53813,'Description',TO_TIMESTAMP('2014-06-11 14:54:46','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02',255,'A description is limited to 255 characters.','Y','Y','N','N','N','N','N','N','N','Y','N','N','Y','Description',0,TO_TIMESTAMP('2014-06-11 14:54:46','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 2:54:49 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73068 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 2:55:05 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73069,53398,0,19,53813,'HR_Concept_ID',TO_TIMESTAMP('2014-06-11 14:55:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Payroll Concept',0,TO_TIMESTAMP('2014-06-11 14:55:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 2:55:05 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73069 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 2:55:16 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73070,57207,0,20,53813,'ManagesInterest',TO_TIMESTAMP('2014-06-11 14:55:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Manages Interest',0,TO_TIMESTAMP('2014-06-11 14:55:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 2:55:16 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73070 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 2:55:31 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73071,524,0,28,53813,'Processing',TO_TIMESTAMP('2014-06-11 14:55:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Process Now',0,TO_TIMESTAMP('2014-06-11 14:55:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 2:55:31 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73071 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 2:55:41 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73072,213,0,19,53813,'C_Tax_ID',TO_TIMESTAMP('2014-06-11 14:55:38','YYYY-MM-DD HH24:MI:SS'),100,'Tax identifier','ECA02',22,'The Tax indicates the type of tax used in document line.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Tax',0,TO_TIMESTAMP('2014-06-11 14:55:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 2:55:41 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73072 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 2:55:51 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73073,1047,0,20,53813,'Processed',TO_TIMESTAMP('2014-06-11 14:55:49','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','ECA02',1,'The Processed checkbox indicates that a document has been processed.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Processed',0,TO_TIMESTAMP('2014-06-11 14:55:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 2:55:51 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73073 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 3:05:25 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57209,0,18,53556,'Loan_I_Concept_ID',TO_TIMESTAMP('2014-06-11 15:05:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Concept (Incidence of Loan)','Concept (Incidence of Loan)',TO_TIMESTAMP('2014-06-11 15:05:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:05:25 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57209 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 11, 2014 3:05:48 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Incidencia de Préstamo)',PrintName='Concepto (Incidencia de Préstamo)',Updated=TO_TIMESTAMP('2014-06-11 15:05:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57209 AND AD_Language='es_MX'
;

-- Jun 11, 2014 3:05:52 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Incidencia de Préstamo)',PrintName='Concepto (Incidencia de Préstamo)',Updated=TO_TIMESTAMP('2014-06-11 15:05:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57209 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:06:02 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73074,57209,0,18,53556,53813,'Loan_I_Concept_ID',TO_TIMESTAMP('2014-06-11 15:05:59','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Concept (Incidence of Loan)',0,TO_TIMESTAMP('2014-06-11 15:05:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 3:06:02 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73074 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 3:06:42 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57210,0,18,53556,'Loan_D_Concept_ID',TO_TIMESTAMP('2014-06-11 15:06:40','YYYY-MM-DD HH24:MI:SS'),100,'U',0,'Y','Concept (Deduction of Loan)','Concept (Deduction of Loan)',TO_TIMESTAMP('2014-06-11 15:06:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:06:42 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57210 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 11, 2014 3:07:11 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Deducción de préstamo)',PrintName='Concepto (Deducción de préstamo)',Updated=TO_TIMESTAMP('2014-06-11 15:07:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57210 AND AD_Language='es_MX'
;

-- Jun 11, 2014 3:07:14 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Deducción de préstamo)',PrintName='Concepto (Deducción de préstamo)',Updated=TO_TIMESTAMP('2014-06-11 15:07:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57210 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:07:18 PM VET
-- LVE HR
UPDATE AD_Element SET EntityType='ECA02',Updated=TO_TIMESTAMP('2014-06-11 15:07:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57210
;

-- Jun 11, 2014 3:07:38 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73075,57210,0,18,53556,53813,'Loan_D_Concept_ID',TO_TIMESTAMP('2014-06-11 15:07:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Concept (Deduction of Loan)',0,TO_TIMESTAMP('2014-06-11 15:07:35','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 3:07:38 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73075 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 3:08:49 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57211,0,18,53556,'Loan_C_Concept_ID',TO_TIMESTAMP('2014-06-11 15:08:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Concept (Calculation of Loan)','Concept (Calculation of Loan)',TO_TIMESTAMP('2014-06-11 15:08:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:08:49 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57211 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 11, 2014 3:08:59 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Cálculo del préstamo)',PrintName='Concepto (Cálculo del préstamo)',Updated=TO_TIMESTAMP('2014-06-11 15:08:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57211 AND AD_Language='es_MX'
;

-- Jun 11, 2014 3:09:02 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Cálculo del préstamo)',PrintName='Concepto (Cálculo del préstamo)',Updated=TO_TIMESTAMP('2014-06-11 15:09:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57211 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:09:14 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73076,57211,0,18,53556,53813,'Loan_C_Concept_ID',TO_TIMESTAMP('2014-06-11 15:09:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Concept (Calculation of Loan)',0,TO_TIMESTAMP('2014-06-11 15:09:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 3:09:14 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73076 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 3:10:01 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57212,0,18,53556,'Loan_A_Concept_ID',TO_TIMESTAMP('2014-06-11 15:09:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Concept (Accumulated of Loan)','Concept (Accumulated of Loan)',TO_TIMESTAMP('2014-06-11 15:09:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:10:01 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57212 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 11, 2014 3:10:18 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Acumulado de Préstamo)',PrintName='Concepto (Acumulado de Préstamo)',Updated=TO_TIMESTAMP('2014-06-11 15:10:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57212 AND AD_Language='es_MX'
;

-- Jun 11, 2014 3:10:21 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Acumulado de Préstamo)',PrintName='Concepto (Acumulado de Préstamo)',Updated=TO_TIMESTAMP('2014-06-11 15:10:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57212 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:10:37 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73077,57212,0,18,53556,53813,'Loan_A_Concept_ID',TO_TIMESTAMP('2014-06-11 15:10:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Concept (Accumulated of Loan)',0,TO_TIMESTAMP('2014-06-11 15:10:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 3:10:37 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73077 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 3:11:26 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57213,0,18,53556,'Loan_T_Concept_ID',TO_TIMESTAMP('2014-06-11 15:11:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Concept (Top of Loan)','Concept (Top of Loan)',TO_TIMESTAMP('2014-06-11 15:11:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:11:26 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57213 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 11, 2014 3:12:52 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Tope de Préstamo)',PrintName='Concepto (Tope de Préstamo)',Updated=TO_TIMESTAMP('2014-06-11 15:12:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57213 AND AD_Language='es_MX'
;

-- Jun 11, 2014 3:12:54 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Tope de Préstamo)',Updated=TO_TIMESTAMP('2014-06-11 15:12:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57213 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:13:02 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET PrintName='Concepto (Tope de Préstamo)',Updated=TO_TIMESTAMP('2014-06-11 15:13:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57213 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:13:52 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73078,57213,0,18,53556,53813,'Loan_T_Concept_ID',TO_TIMESTAMP('2014-06-11 15:13:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Concept (Top of Loan)',0,TO_TIMESTAMP('2014-06-11 15:13:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 3:13:52 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73078 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 3:14:15 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57214,0,18,53556,'Loan_F_Concept_ID',TO_TIMESTAMP('2014-06-11 15:14:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Concept (Flag of Loan)','Concept (Flag of Loan)',TO_TIMESTAMP('2014-06-11 15:14:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:14:15 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57214 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 11, 2014 3:14:50 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Bandera de Préstamo)',PrintName='Concepto (Bandera de Préstamo)',Updated=TO_TIMESTAMP('2014-06-11 15:14:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57214 AND AD_Language='es_MX'
;

-- Jun 11, 2014 3:14:53 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Bandera de Préstamo)',PrintName='Concepto (Bandera de Préstamo)',Updated=TO_TIMESTAMP('2014-06-11 15:14:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57214 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:15:05 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73079,57214,0,18,53556,53813,'Loan_F_Concept_ID',TO_TIMESTAMP('2014-06-11 15:15:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Concept (Flag of Loan)',0,TO_TIMESTAMP('2014-06-11 15:15:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 3:15:05 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73079 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 3:18:43 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57215,0,18,53556,'Interest_C_Concept_ID',TO_TIMESTAMP('2014-06-11 15:18:39','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Concept (Calculation of Interest)','Concept (Calculation of Interest)',TO_TIMESTAMP('2014-06-11 15:18:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:18:43 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57215 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 11, 2014 3:19:18 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Cálculo de Intereses)',PrintName='Concepto (Cálculo de Intereses)',Updated=TO_TIMESTAMP('2014-06-11 15:19:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57215 AND AD_Language='es_MX'
;

-- Jun 11, 2014 3:19:21 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Cálculo de Intereses)',PrintName='Concepto (Cálculo de Intereses)',Updated=TO_TIMESTAMP('2014-06-11 15:19:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57215 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:19:33 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73080,57215,0,18,53556,53813,'Interest_C_Concept_ID',TO_TIMESTAMP('2014-06-11 15:19:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Concept (Calculation of Interest)',0,TO_TIMESTAMP('2014-06-11 15:19:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 3:19:33 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73080 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 3:20:18 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57216,0,18,53556,'Interest_D_Concept_ID',TO_TIMESTAMP('2014-06-11 15:20:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Concept (Deduction of Interest)','Concept (Deduction of Interest)',TO_TIMESTAMP('2014-06-11 15:20:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:20:18 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57216 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 11, 2014 3:20:34 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Deducción de Intereses)',PrintName='Concepto (Deducción de Intereses)',Updated=TO_TIMESTAMP('2014-06-11 15:20:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57216 AND AD_Language='es_MX'
;

-- Jun 11, 2014 3:20:36 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Deducción de Intereses)',Updated=TO_TIMESTAMP('2014-06-11 15:20:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57216 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:20:38 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET PrintName='Concepto (Deducción de Intereses)',Updated=TO_TIMESTAMP('2014-06-11 15:20:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57216 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:20:51 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73081,57216,0,18,53556,53813,'Interest_D_Concept_ID',TO_TIMESTAMP('2014-06-11 15:20:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Concept (Deduction of Interest)',0,TO_TIMESTAMP('2014-06-11 15:20:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 3:20:51 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73081 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 3:21:35 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57217,0,18,53556,'Interest_A_Concept_ID',TO_TIMESTAMP('2014-06-11 15:21:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Concept (Accumulated of Interest)','Concept (Accumulated of Interest)',TO_TIMESTAMP('2014-06-11 15:21:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:21:35 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57217 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 11, 2014 3:22:07 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Acumulado de Intereses)',PrintName='Concepto (Acumulado de Intereses)',Updated=TO_TIMESTAMP('2014-06-11 15:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57217 AND AD_Language='es_MX'
;

-- Jun 11, 2014 3:22:10 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Acumulado de Intereses)',PrintName='Concepto (Acumulado de Intereses)',Updated=TO_TIMESTAMP('2014-06-11 15:22:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57217 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:22:49 PM VET
-- LVE HR
UPDATE AD_Column SET ColumnName='_D_Concept_ID',Updated=TO_TIMESTAMP('2014-06-11 15:22:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73081
;

-- Jun 11, 2014 3:22:57 PM VET
-- LVE HR
UPDATE AD_Column SET ColumnName='Interest_D_Concept_ID',Updated=TO_TIMESTAMP('2014-06-11 15:22:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73081
;

-- Jun 11, 2014 3:23:10 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73082,57217,0,18,53556,53813,'Interest_A_Concept_ID',TO_TIMESTAMP('2014-06-11 15:23:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Concept (Accumulated of Interest)',0,TO_TIMESTAMP('2014-06-11 15:23:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 3:23:10 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73082 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 3:24:39 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57218,0,18,53556,'Tax_C_Concept_ID',TO_TIMESTAMP('2014-06-11 15:24:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Concept (Calculation of Tax)','Concept (Calculation of Tax)',TO_TIMESTAMP('2014-06-11 15:24:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:24:39 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57218 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 11, 2014 3:25:05 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Cálculo del Impuesto)',PrintName='Concepto (Cálculo del Impuesto)',Updated=TO_TIMESTAMP('2014-06-11 15:25:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57218 AND AD_Language='es_MX'
;

-- Jun 11, 2014 3:25:08 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Cálculo del Impuesto)',PrintName='Concepto (Cálculo del Impuesto)',Updated=TO_TIMESTAMP('2014-06-11 15:25:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57218 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:25:25 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73083,57218,0,18,53556,53813,'Tax_C_Concept_ID',TO_TIMESTAMP('2014-06-11 15:25:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Concept (Calculation of Tax)',0,TO_TIMESTAMP('2014-06-11 15:25:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 3:25:25 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73083 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 3:26:25 PM VET
-- LVE HR
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,WinWidth) VALUES (0,0,53363,TO_TIMESTAMP('2014-06-11 15:26:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','Loan Definition','N',TO_TIMESTAMP('2014-06-11 15:26:22','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0)
;

-- Jun 11, 2014 3:26:25 PM VET
-- LVE HR
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=53363 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- Jun 11, 2014 3:26:46 PM VET
-- LVE HR
UPDATE AD_Window_Trl SET Name='Definición de Préstamo',Updated=TO_TIMESTAMP('2014-06-11 15:26:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53363 AND AD_Language='es_MX'
;

-- Jun 11, 2014 3:26:49 PM VET
-- LVE HR
UPDATE AD_Window_Trl SET Name='Definición de Préstamo',Updated=TO_TIMESTAMP('2014-06-11 15:26:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53363 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:27:34 PM VET
-- LVE HR
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,53966,53813,53363,TO_TIMESTAMP('2014-06-11 15:27:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','N','Y','N','N','Y','N','Y','N','N','Loan Definition','N',10,0,TO_TIMESTAMP('2014-06-11 15:27:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:27:34 PM VET
-- LVE HR
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53966 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Jun 11, 2014 3:27:39 PM VET
-- LVE HR
UPDATE AD_Tab_Trl SET Name='Definición de Préstamo',Updated=TO_TIMESTAMP('2014-06-11 15:27:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53966 AND AD_Language='es_MX'
;

-- Jun 11, 2014 3:27:42 PM VET
-- LVE HR
UPDATE AD_Tab_Trl SET Name='Definición de Préstamo',Updated=TO_TIMESTAMP('2014-06-11 15:27:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53966 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:27:57 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73060,73664,0,53966,TO_TIMESTAMP('2014-06-11 15:27:54','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2014-06-11 15:27:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:27:57 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73664 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:27:59 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73058,73665,0,53966,TO_TIMESTAMP('2014-06-11 15:27:57','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2014-06-11 15:27:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:27:59 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73665 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:02 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73082,73666,0,53966,TO_TIMESTAMP('2014-06-11 15:27:59','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Concept (Accumulated of Interest)',TO_TIMESTAMP('2014-06-11 15:27:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:02 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73666 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:10 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73077,73667,0,53966,TO_TIMESTAMP('2014-06-11 15:28:02','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Concept (Accumulated of Loan)',TO_TIMESTAMP('2014-06-11 15:28:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:10 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73667 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:13 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73080,73668,0,53966,TO_TIMESTAMP('2014-06-11 15:28:10','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Concept (Calculation of Interest)',TO_TIMESTAMP('2014-06-11 15:28:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:13 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73668 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:16 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73076,73669,0,53966,TO_TIMESTAMP('2014-06-11 15:28:13','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Concept (Calculation of Loan)',TO_TIMESTAMP('2014-06-11 15:28:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:16 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73669 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:18 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73083,73670,0,53966,TO_TIMESTAMP('2014-06-11 15:28:16','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Concept (Calculation of Tax)',TO_TIMESTAMP('2014-06-11 15:28:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:18 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73670 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:21 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73081,73671,0,53966,TO_TIMESTAMP('2014-06-11 15:28:18','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Concept (Deduction of Interest)',TO_TIMESTAMP('2014-06-11 15:28:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:21 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73671 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:24 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73075,73672,0,53966,TO_TIMESTAMP('2014-06-11 15:28:21','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Concept (Deduction of Loan)',TO_TIMESTAMP('2014-06-11 15:28:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:24 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73672 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:26 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73079,73673,0,53966,TO_TIMESTAMP('2014-06-11 15:28:24','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Concept (Flag of Loan)',TO_TIMESTAMP('2014-06-11 15:28:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:26 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73673 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:29 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73074,73674,0,53966,TO_TIMESTAMP('2014-06-11 15:28:26','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Concept (Incidence of Loan)',TO_TIMESTAMP('2014-06-11 15:28:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:29 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73674 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:32 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73078,73675,0,53966,TO_TIMESTAMP('2014-06-11 15:28:29','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Concept (Top of Loan)',TO_TIMESTAMP('2014-06-11 15:28:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:32 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73675 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:34 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73068,73676,0,53966,TO_TIMESTAMP('2014-06-11 15:28:32','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'ECA02','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_TIMESTAMP('2014-06-11 15:28:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:34 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73676 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:37 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73065,73677,0,53966,TO_TIMESTAMP('2014-06-11 15:28:34','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','N','N','N','N','N','N','Loan Definition',TO_TIMESTAMP('2014-06-11 15:28:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:37 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73677 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:40 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73070,73678,0,53966,TO_TIMESTAMP('2014-06-11 15:28:37','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Manages Interest',TO_TIMESTAMP('2014-06-11 15:28:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:40 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73678 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:43 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73067,73679,0,53966,TO_TIMESTAMP('2014-06-11 15:28:40','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',60,'ECA02','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',TO_TIMESTAMP('2014-06-11 15:28:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:43 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73679 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:46 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73059,73680,0,53966,TO_TIMESTAMP('2014-06-11 15:28:43','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2014-06-11 15:28:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:46 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73680 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:48 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73069,73681,0,53966,TO_TIMESTAMP('2014-06-11 15:28:46','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Payroll Concept',TO_TIMESTAMP('2014-06-11 15:28:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:48 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73681 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:51 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73073,73682,0,53966,TO_TIMESTAMP('2014-06-11 15:28:48','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'ECA02','The Processed checkbox indicates that a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed',TO_TIMESTAMP('2014-06-11 15:28:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:51 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73682 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:53 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73071,73683,0,53966,TO_TIMESTAMP('2014-06-11 15:28:51','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Process Now',TO_TIMESTAMP('2014-06-11 15:28:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:53 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73683 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:56 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73066,73684,0,53966,TO_TIMESTAMP('2014-06-11 15:28:53','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique',60,'ECA02','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','N','Search Key',TO_TIMESTAMP('2014-06-11 15:28:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:56 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73684 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:28:58 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73072,73685,0,53966,TO_TIMESTAMP('2014-06-11 15:28:56','YYYY-MM-DD HH24:MI:SS'),100,'Tax identifier',22,'ECA02','The Tax indicates the type of tax used in document line.','Y','Y','Y','N','N','N','N','N','Tax',TO_TIMESTAMP('2014-06-11 15:28:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:28:58 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73685 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:29:30 PM VET
-- LVE HR
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-11 15:29:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73077
;

-- Jun 11, 2014 3:29:34 PM VET
-- LVE HR
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-11 15:29:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73076
;

-- Jun 11, 2014 3:29:39 PM VET
-- LVE HR
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-11 15:29:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73075
;

-- Jun 11, 2014 3:29:42 PM VET
-- LVE HR
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-11 15:29:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73079
;

-- Jun 11, 2014 3:29:44 PM VET
-- LVE HR
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-11 15:29:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73074
;

-- Jun 11, 2014 3:29:47 PM VET
-- LVE HR
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-11 15:29:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73078
;

-- Jun 11, 2014 3:30:00 PM VET
-- LVE HR
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-11 15:30:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73070
;

-- Jun 11, 2014 3:30:13 PM VET
-- LVE HR
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-11 15:30:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73069
;

-- Jun 11, 2014 3:30:18 PM VET
-- LVE HR
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-11 15:30:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73066
;

-- Jun 11, 2014 3:30:31 PM VET
-- LVE HR
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-11 15:30:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73067
;

-- Jun 11, 2014 3:30:54 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-11 15:30:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73680
;

-- Jun 11, 2014 3:31:28 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2014-06-11 15:31:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73665
;

-- Jun 11, 2014 3:31:28 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2014-06-11 15:31:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73680
;

-- Jun 11, 2014 3:31:28 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2014-06-11 15:31:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73684
;

-- Jun 11, 2014 3:31:28 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2014-06-11 15:31:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73679
;

-- Jun 11, 2014 3:31:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-06-11 15:31:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73676
;

-- Jun 11, 2014 3:31:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-06-11 15:31:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73664
;

-- Jun 11, 2014 3:31:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-06-11 15:31:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73678
;

-- Jun 11, 2014 3:31:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-06-11 15:31:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73681
;

-- Jun 11, 2014 3:31:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-06-11 15:31:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73682
;

-- Jun 11, 2014 3:31:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-06-11 15:31:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73683
;

-- Jun 11, 2014 3:31:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-06-11 15:31:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73685
;

-- Jun 11, 2014 3:31:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-06-11 15:31:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73666
;

-- Jun 11, 2014 3:31:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-06-11 15:31:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73667
;

-- Jun 11, 2014 3:31:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-06-11 15:31:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73668
;

-- Jun 11, 2014 3:31:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-06-11 15:31:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73669
;

-- Jun 11, 2014 3:31:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-06-11 15:31:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73670
;

-- Jun 11, 2014 3:31:29 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-06-11 15:31:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73671
;

-- Jun 11, 2014 3:31:30 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-06-11 15:31:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73672
;

-- Jun 11, 2014 3:31:30 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-06-11 15:31:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73673
;

-- Jun 11, 2014 3:31:30 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-06-11 15:31:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73674
;

-- Jun 11, 2014 3:31:30 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-06-11 15:31:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73675
;

-- Jun 11, 2014 3:34:49 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57219,0,18,53556,'Interest_DM_Concept_ID',TO_TIMESTAMP('2014-06-11 15:34:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Concept (Days Of Month of Interest)','Concept (Days Of Month of Interest)',TO_TIMESTAMP('2014-06-11 15:34:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:34:49 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57219 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 11, 2014 3:35:13 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Dias del Mes de Intereses)',PrintName='Concepto (Dias del Mes de Intereses)',Updated=TO_TIMESTAMP('2014-06-11 15:35:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57219 AND AD_Language='es_MX'
;

-- Jun 11, 2014 3:35:16 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Dias del Mes de Intereses)',Updated=TO_TIMESTAMP('2014-06-11 15:35:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57219 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:35:17 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET PrintName='Concepto (Dias del Mes de Intereses)',Updated=TO_TIMESTAMP('2014-06-11 15:35:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57219 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:35:27 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73084,57219,0,18,53556,53813,'Interest_DM_Concept_ID',TO_TIMESTAMP('2014-06-11 15:35:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Concept (Days Of Month of Interest)',0,TO_TIMESTAMP('2014-06-11 15:35:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 3:35:27 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73084 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 3:35:28 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-06-11 15:35:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73668
;

-- Jun 11, 2014 3:35:28 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-06-11 15:35:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73666
;

-- Jun 11, 2014 3:35:28 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-06-11 15:35:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73667
;

-- Jun 11, 2014 3:35:34 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73084,73686,0,53966,TO_TIMESTAMP('2014-06-11 15:35:31','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Concept (Days Of Month of Interest)',TO_TIMESTAMP('2014-06-11 15:35:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:35:34 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73686 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 3:36:30 PM VET
-- LVE HR
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53837,0,53363,TO_TIMESTAMP('2014-06-11 15:36:26','YYYY-MM-DD HH24:MI:SS'),100,'Loan Definition','ECA02','Y','Y','N','N','N','Loan Definition',TO_TIMESTAMP('2014-06-11 15:36:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:36:30 PM VET
-- LVE HR
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53837 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jun 11, 2014 3:36:30 PM VET
-- LVE HR
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2014-06-11 15:36:30','YYYY-MM-DD HH24:MI:SS'),100,'Y',53837,0,999,TO_TIMESTAMP('2014-06-11 15:36:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 3:36:36 PM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Definición de Préstamo',Description='Definición de Préstamo',Updated=TO_TIMESTAMP('2014-06-11 15:36:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53837 AND AD_Language='es_MX'
;

-- Jun 11, 2014 3:36:38 PM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Definición de Préstamo',Description='Definición de Préstamo',Updated=TO_TIMESTAMP('2014-06-11 15:36:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53837 AND AD_Language='es_VE'
;

-- Jun 11, 2014 3:36:46 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=1,Updated=TO_TIMESTAMP('2014-06-11 15:36:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53837
;

-- Jun 11, 2014 3:36:46 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=2,Updated=TO_TIMESTAMP('2014-06-11 15:36:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53118
;

-- Jun 11, 2014 3:36:46 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=3,Updated=TO_TIMESTAMP('2014-06-11 15:36:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53115
;

-- Jun 11, 2014 3:36:46 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=4,Updated=TO_TIMESTAMP('2014-06-11 15:36:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53119
;

-- Jun 11, 2014 3:36:46 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=5,Updated=TO_TIMESTAMP('2014-06-11 15:36:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53120
;

-- Jun 11, 2014 3:36:46 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=6,Updated=TO_TIMESTAMP('2014-06-11 15:36:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53117
;

-- Jun 11, 2014 3:36:46 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=7,Updated=TO_TIMESTAMP('2014-06-11 15:36:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53123
;

-- Jun 11, 2014 3:36:46 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=8,Updated=TO_TIMESTAMP('2014-06-11 15:36:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53127
;

-- Jun 11, 2014 3:36:47 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=9,Updated=TO_TIMESTAMP('2014-06-11 15:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53116
;

-- Jun 11, 2014 3:36:47 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=10,Updated=TO_TIMESTAMP('2014-06-11 15:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53121
;

-- Jun 11, 2014 3:36:47 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=11,Updated=TO_TIMESTAMP('2014-06-11 15:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53122
;

-- Jun 11, 2014 3:36:47 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=12,Updated=TO_TIMESTAMP('2014-06-11 15:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53254
;

-- Jun 11, 2014 3:36:47 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=13,Updated=TO_TIMESTAMP('2014-06-11 15:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53826
;

-- Jun 11, 2014 3:36:47 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=14,Updated=TO_TIMESTAMP('2014-06-11 15:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53255
;

-- Jun 11, 2014 3:36:47 PM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=15,Updated=TO_TIMESTAMP('2014-06-11 15:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53832
;

-- Jun 11, 2014 3:37:07 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Process_ID=53633,Updated=TO_TIMESTAMP('2014-06-11 15:37:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73071
;

-- Jun 11, 2014 3:37:13 PM VET
-- LVE HR
DELETE FROM AD_Menu_Trl WHERE AD_Menu_ID=53832
;

-- Jun 11, 2014 3:37:13 PM VET
-- LVE HR
DELETE FROM AD_Menu WHERE AD_Menu_ID=53832
;

-- Jun 11, 2014 3:37:14 PM VET
-- LVE HR
DELETE FROM AD_TreeNodeMM WHERE AD_Tree_ID=10 AND Node_ID=53832
;

-- Jun 11, 2014 3:37:27 PM VET
-- LVE HR
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-06-11 15:37:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54794
;

-- Jun 11, 2014 3:37:29 PM VET
-- LVE HR
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-06-11 15:37:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54795
;

-- Jun 11, 2014 3:37:32 PM VET
-- LVE HR
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-06-11 15:37:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54796
;

-- Jun 11, 2014 3:37:45 PM VET
-- LVE HR
UPDATE AD_Process_Para SET IsActive='N',Updated=TO_TIMESTAMP('2014-06-11 15:37:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54808
;

-- Jun 11, 2014 3:45:30 PM VET
-- LVE HR
UPDATE AD_Field SET DisplayLogic='@ManagesInterest@=''Y''',Updated=TO_TIMESTAMP('2014-06-11 15:45:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73668
;

-- Jun 11, 2014 3:45:35 PM VET
-- LVE HR
UPDATE AD_Field SET DisplayLogic='@ManagesInterest@=''Y''',Updated=TO_TIMESTAMP('2014-06-11 15:45:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73666
;

-- Jun 11, 2014 3:45:40 PM VET
-- LVE HR
UPDATE AD_Field SET DisplayLogic='@ManagesInterest@=''Y''',Updated=TO_TIMESTAMP('2014-06-11 15:45:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73671
;

-- Jun 11, 2014 3:46:11 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-06-11 15:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73685
;

-- Jun 11, 2014 3:46:11 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-06-11 15:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73668
;

-- Jun 11, 2014 3:46:11 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-06-11 15:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73666
;

-- Jun 11, 2014 3:46:11 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-06-11 15:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73667
;

-- Jun 11, 2014 3:46:11 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-06-11 15:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73669
;

-- Jun 11, 2014 3:46:11 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-06-11 15:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73670
;

-- Jun 11, 2014 3:46:11 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-06-11 15:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73671
;

-- Jun 11, 2014 3:46:11 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-06-11 15:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73672
;

-- Jun 11, 2014 3:46:11 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-06-11 15:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73673
;

-- Jun 11, 2014 3:46:11 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-06-11 15:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73674
;

-- Jun 11, 2014 3:46:11 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-06-11 15:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73675
;

-- Jun 11, 2014 3:46:12 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-06-11 15:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73686
;

-- Jun 11, 2014 3:46:12 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-06-11 15:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73682
;

-- Jun 11, 2014 3:46:12 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-06-11 15:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73683
;

-- Jun 11, 2014 3:46:21 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-11 15:46:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73678
;

-- Jun 11, 2014 3:46:30 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-11 15:46:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73685
;

-- Jun 11, 2014 3:47:23 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-06-11 15:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73667
;

-- Jun 11, 2014 3:47:23 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-06-11 15:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73669
;

-- Jun 11, 2014 3:47:23 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-06-11 15:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73668
;

-- Jun 11, 2014 3:47:23 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-06-11 15:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73672
;

-- Jun 11, 2014 3:47:23 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-06-11 15:47:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73670
;

-- Jun 11, 2014 3:47:34 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-11 15:47:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73666
;

-- Jun 11, 2014 3:47:41 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-11 15:47:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73668
;

-- Jun 11, 2014 3:47:44 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-11 15:47:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73671
;

-- Jun 11, 2014 3:48:00 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-11 15:48:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73673
;

-- Jun 11, 2014 3:48:03 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-11 15:48:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73675
;


-- Jun 11, 2014 3:52:04 PM VET
-- LVE HR
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2014-06-11 15:52:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73083
;

-- Jun 11, 2014 3:53:15 PM VET
-- LVE HR
UPDATE AD_Field SET DisplayLogic='@ManagesInterest@=''Y''',Updated=TO_TIMESTAMP('2014-06-11 15:53:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73686
;

-- Jun 11, 2014 3:53:50 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-11 15:53:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73683
;

-- Jun 11, 2014 3:53:53 PM VET
-- LVE HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2014-06-11 15:53:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73682
;

-- Jun 11, 2014 4:05:29 PM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57220,0,18,53556,'Interest_R_Concept_ID',TO_TIMESTAMP('2014-06-11 16:05:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Concept (Rate of Interest)','Concept (Rate of Interest)',TO_TIMESTAMP('2014-06-11 16:05:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 4:05:29 PM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57220 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 11, 2014 4:05:42 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Tasa de Intereses)',PrintName='Concepto (Tasa de Intereses)',Updated=TO_TIMESTAMP('2014-06-11 16:05:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57220 AND AD_Language='es_MX'
;

-- Jun 11, 2014 4:05:45 PM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Concepto (Tasa de Intereses)',PrintName='Concepto (Tasa de Intereses)',Updated=TO_TIMESTAMP('2014-06-11 16:05:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57220 AND AD_Language='es_VE'
;

-- Jun 11, 2014 4:05:53 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73085,57220,0,18,53556,53813,'Interest_R_Concept_ID',TO_TIMESTAMP('2014-06-11 16:05:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Concept (Rate of Interest)',0,TO_TIMESTAMP('2014-06-11 16:05:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 4:05:53 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73085 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 4:06:10 PM VET
-- LVE HR
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=73681
;

-- Jun 11, 2014 4:06:10 PM VET
-- LVE HR
DELETE FROM AD_Field WHERE AD_Field_ID=73681
;

-- Jun 11, 2014 4:06:14 PM VET
-- LVE HR
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=73069
;

-- Jun 11, 2014 4:06:14 PM VET
-- LVE HR
DELETE FROM AD_Column WHERE AD_Column_ID=73069
;

-- Jun 11, 2014 4:06:24 PM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73085,73687,0,53966,TO_TIMESTAMP('2014-06-11 16:06:21','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Concept (Rate of Interest)',TO_TIMESTAMP('2014-06-11 16:06:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 4:06:24 PM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73687 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 4:07:38 PM VET
-- LVE HR
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,50051,0,TO_TIMESTAMP('2014-06-11 16:07:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','C','Y','N','Interest Group',TO_TIMESTAMP('2014-06-11 16:07:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 4:07:38 PM VET
-- LVE HR
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=50051 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- Jun 11, 2014 4:07:45 PM VET
-- LVE HR
UPDATE AD_FieldGroup_Trl SET Name='Intereses',Updated=TO_TIMESTAMP('2014-06-11 16:07:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=50051 AND AD_Language='es_MX'
;

-- Jun 11, 2014 4:07:47 PM VET
-- LVE HR
UPDATE AD_FieldGroup_Trl SET Name='Intereses',Updated=TO_TIMESTAMP('2014-06-11 16:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=50051 AND AD_Language='es_VE'
;

-- Jun 11, 2014 4:08:45 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-06-11 16:08:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73685
;

-- Jun 11, 2014 4:08:45 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-06-11 16:08:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73674
;

-- Jun 11, 2014 4:08:45 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-06-11 16:08:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73672
;

-- Jun 11, 2014 4:08:45 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-06-11 16:08:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73669
;

-- Jun 11, 2014 4:08:45 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-06-11 16:08:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73667
;

-- Jun 11, 2014 4:08:45 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-06-11 16:08:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73675
;

-- Jun 11, 2014 4:08:46 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-06-11 16:08:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73673
;

-- Jun 11, 2014 4:08:46 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-06-11 16:08:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73682
;

-- Jun 11, 2014 4:08:46 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-06-11 16:08:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73683
;

-- Jun 11, 2014 4:08:46 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-06-11 16:08:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73668
;

-- Jun 11, 2014 4:08:46 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-06-11 16:08:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73666
;

-- Jun 11, 2014 4:08:46 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-06-11 16:08:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73670
;

-- Jun 11, 2014 4:08:46 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-06-11 16:08:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73671
;

-- Jun 11, 2014 4:08:46 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-06-11 16:08:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73687
;

-- Jun 11, 2014 4:08:46 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-06-11 16:08:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73686
;

-- Jun 11, 2014 4:09:21 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-06-11 16:09:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73674
;

-- Jun 11, 2014 4:09:21 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-06-11 16:09:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73672
;

-- Jun 11, 2014 4:09:21 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-06-11 16:09:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73669
;

-- Jun 11, 2014 4:09:21 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-06-11 16:09:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73667
;

-- Jun 11, 2014 4:09:21 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-06-11 16:09:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73675
;

-- Jun 11, 2014 4:09:21 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-06-11 16:09:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73673
;

-- Jun 11, 2014 4:09:21 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-06-11 16:09:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73671
;

-- Jun 11, 2014 4:09:21 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-06-11 16:09:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73668
;

-- Jun 11, 2014 4:09:22 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-06-11 16:09:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73666
;

-- Jun 11, 2014 4:09:22 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-06-11 16:09:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73686
;

-- Jun 11, 2014 4:09:22 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-06-11 16:09:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73687
;

-- Jun 11, 2014 4:09:22 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-06-11 16:09:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73685
;

-- Jun 11, 2014 4:09:22 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-06-11 16:09:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73683
;

-- Jun 11, 2014 4:09:22 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-06-11 16:09:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73682
;

-- Jun 11, 2014 4:09:41 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-11 16:09:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73672
;

-- Jun 11, 2014 4:09:45 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-11 16:09:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73667
;

-- Jun 11, 2014 4:09:49 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-06-11 16:09:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73675
;

-- Jun 11, 2014 4:10:06 PM VET
-- LVE HR
UPDATE AD_Field SET AD_FieldGroup_ID=50051, IsSameLine='N',Updated=TO_TIMESTAMP('2014-06-11 16:10:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73671
;

-- Jun 11, 2014 4:10:17 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-06-11 16:10:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73666
;

-- Jun 11, 2014 4:10:21 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-11 16:10:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73686
;

-- Jun 11, 2014 4:10:38 PM VET
-- LVE HR
UPDATE AD_Field SET DisplayLogic='@ManagesInterest@=''Y''',Updated=TO_TIMESTAMP('2014-06-11 16:10:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73687
;

-- Jun 11, 2014 4:10:41 PM VET
-- LVE HR
UPDATE AD_Field SET DisplayLogic='@ManagesInterest@=''Y''',Updated=TO_TIMESTAMP('2014-06-11 16:10:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73670
;

-- Jun 11, 2014 4:10:46 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-06-11 16:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73670
;

-- Jun 11, 2014 4:10:52 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-06-11 16:10:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73685
;

-- Jun 11, 2014 4:10:57 PM VET
-- LVE HR
UPDATE AD_Field SET DisplayLogic='@ManagesInterest@=''Y''',Updated=TO_TIMESTAMP('2014-06-11 16:10:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73683
;

-- Jun 11, 2014 4:12:31 PM VET
-- LVE HR
UPDATE AD_Field SET DisplayLogic='@ManagesInterest@=''Y''',Updated=TO_TIMESTAMP('2014-06-11 16:12:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73685
;

-- Jun 11, 2014 4:13:24 PM VET
-- LVE HR
UPDATE AD_Field SET DisplayLogic='@ManagesInterest@=''Y''',Updated=TO_TIMESTAMP('2014-06-11 16:13:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73682
;

-- Jun 11, 2014 4:13:49 PM VET
-- LVE HR
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2014-06-11 16:13:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73083
;

-- Jun 11, 2014 4:17:30 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-06-11 16:17:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73674
;

-- Jun 11, 2014 4:17:30 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-06-11 16:17:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73672
;

-- Jun 11, 2014 4:17:30 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-06-11 16:17:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73669
;

-- Jun 11, 2014 4:17:30 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-06-11 16:17:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73667
;

-- Jun 11, 2014 4:17:30 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-06-11 16:17:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73675
;

-- Jun 11, 2014 4:17:31 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-06-11 16:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73673
;

-- Jun 11, 2014 4:17:31 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-06-11 16:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73678
;

-- Jun 11, 2014 4:17:31 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-06-11 16:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73683
;

-- Jun 11, 2014 4:17:31 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-06-11 16:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73682
;

-- Jun 11, 2014 4:17:31 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2014-06-11 16:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73671
;

-- Jun 11, 2014 4:17:31 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2014-06-11 16:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73668
;

-- Jun 11, 2014 4:17:31 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2014-06-11 16:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73666
;

-- Jun 11, 2014 4:17:31 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2014-06-11 16:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73686
;

-- Jun 11, 2014 4:17:31 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2014-06-11 16:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73687
;

-- Jun 11, 2014 4:17:31 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2014-06-11 16:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73670
;

-- Jun 11, 2014 4:17:31 PM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2014-06-11 16:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73685
;

-- Jun 11, 2014 4:17:40 PM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2014-06-11 16:17:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73678
;

-- Jun 11, 2014 4:17:45 PM VET
-- LVE HR
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-06-11 16:17:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73683
;

-- Jun 11, 2014 4:17:49 PM VET
-- LVE HR
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2014-06-11 16:17:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73682
;

-- Jun 11, 2014 4:18:31 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_TIMESTAMP('2014-06-11 16:18:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73068
;

-- Jun 11, 2014 4:23:36 PM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=14, FieldLength=255,Updated=TO_TIMESTAMP('2014-06-11 16:23:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73057
;