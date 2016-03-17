-- Aug 30, 2013 11:28:54 AM VET
-- LVE HR
INSERT INTO AD_Tab (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,55033,0,53740,53102,53037,TO_TIMESTAMP('2013-08-30 11:28:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','N','Y','N','N','N','Y','N','N','N','Movements','N',20,1,TO_TIMESTAMP('2013-08-30 11:28:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:28:54 AM VET
-- LVE HR
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=53740 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Aug 30, 2013 11:29:50 AM VET
-- LVE HR
UPDATE AD_Tab SET OrderByClause='C_BPartner_ID',Updated=TO_TIMESTAMP('2013-08-30 11:29:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53740
;

-- Aug 30, 2013 11:30:00 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55042,68502,0,53740,TO_TIMESTAMP('2013-08-30 11:29:59','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','N','Y','Y','N','N','N','N','N','N','Payroll Movement',0,0,TO_TIMESTAMP('2013-08-30 11:29:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:00 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68502 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:01 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55053,68503,0,53740,TO_TIMESTAMP('2013-08-30 11:30:01','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','N','Y','Y','Y','N','N','N','N','N','Client',10,0,TO_TIMESTAMP('2013-08-30 11:30:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:01 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68503 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:01 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55055,68504,0,53740,TO_TIMESTAMP('2013-08-30 11:30:01','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','N','Y','Y','Y','N','N','N','N','Y','Organization',20,0,TO_TIMESTAMP('2013-08-30 11:30:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:01 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68504 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:02 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55033,68505,0,53740,TO_TIMESTAMP('2013-08-30 11:30:01','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','N','Y','Y','Y','N','N','N','N','N','Payroll Process',30,0,TO_TIMESTAMP('2013-08-30 11:30:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:02 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68505 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:02 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55035,68506,0,53740,TO_TIMESTAMP('2013-08-30 11:30:02','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','N','Y','Y','Y','N','N','N','N','Y','Payroll Concept',40,0,TO_TIMESTAMP('2013-08-30 11:30:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:02 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68506 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:03 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55032,68507,0,53740,TO_TIMESTAMP('2013-08-30 11:30:02','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','N','Y','Y','Y','N','N','N','N','N','Payroll Concept Category',50,0,TO_TIMESTAMP('2013-08-30 11:30:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:03 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68507 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:03 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55043,68508,0,53740,TO_TIMESTAMP('2013-08-30 11:30:03','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','N','Y','Y','Y','N','N','N','N','N','Active',60,0,TO_TIMESTAMP('2013-08-30 11:30:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:03 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68508 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:04 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55034,68509,0,53740,TO_TIMESTAMP('2013-08-30 11:30:03','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',10,'ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','N','Y','Y','Y','N','N','N','N','N','Business Partner ',70,0,TO_TIMESTAMP('2013-08-30 11:30:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:04 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68509 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:04 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55039,68510,0,53740,TO_TIMESTAMP('2013-08-30 11:30:04','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'ECA02','A description is limited to 255 characters.','N','Y','Y','Y','N','N','N','N','N','Description',80,0,TO_TIMESTAMP('2013-08-30 11:30:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:04 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68510 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:05 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55041,68511,0,53740,TO_TIMESTAMP('2013-08-30 11:30:04','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','N','Y','Y','Y','N','N','N','N','N','Payroll Job',90,0,TO_TIMESTAMP('2013-08-30 11:30:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:05 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68511 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:05 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55040,68512,0,53740,TO_TIMESTAMP('2013-08-30 11:30:05','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','N','Y','Y','Y','N','N','N','N','Y','Payroll Department',100,0,TO_TIMESTAMP('2013-08-30 11:30:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:05 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68512 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:06 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55058,68513,0,53740,TO_TIMESTAMP('2013-08-30 11:30:05','YYYY-MM-DD HH24:MI:SS'),100,'Business Activity',10,'ECA02','Activities indicate tasks that are performed and used to utilize Activity based Costing','N','Y','Y','Y','N','N','N','N','N','Activity',110,0,TO_TIMESTAMP('2013-08-30 11:30:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:06 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68513 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:06 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55036,68514,0,53740,TO_TIMESTAMP('2013-08-30 11:30:06','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','N','Y','Y','Y','N','N','N','N','N','Column Type',120,0,TO_TIMESTAMP('2013-08-30 11:30:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:06 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68514 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:07 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55057,68515,0,53740,TO_TIMESTAMP('2013-08-30 11:30:06','YYYY-MM-DD HH24:MI:SS'),100,'Amount in a defined currency',20,'ECA02','The Amount indicates the amount for this document line.','N','Y','Y','Y','N','N','N','N','N','Amount',130,0,TO_TIMESTAMP('2013-08-30 11:30:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:07 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68515 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:07 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55047,68516,0,53740,TO_TIMESTAMP('2013-08-30 11:30:07','YYYY-MM-DD HH24:MI:SS'),100,'Quantity',10,'ECA02','The Quantity indicates the number of a specific product or item for this document.','N','Y','Y','Y','N','N','N','N','N','Quantity',140,0,TO_TIMESTAMP('2013-08-30 11:30:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:07 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68516 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:08 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55048,68517,0,53740,TO_TIMESTAMP('2013-08-30 11:30:07','YYYY-MM-DD HH24:MI:SS'),100,'Date service was provided',29,'ECA02','The Service Date indicates the date that the service was provided.','N','Y','Y','Y','N','N','N','N','N','Service date',150,0,TO_TIMESTAMP('2013-08-30 11:30:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:08 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68517 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:08 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55049,68518,0,53740,TO_TIMESTAMP('2013-08-30 11:30:08','YYYY-MM-DD HH24:MI:SS'),100,'Text Message',255,'ECA02','N','Y','Y','Y','N','N','N','N','N','Text Message',160,0,TO_TIMESTAMP('2013-08-30 11:30:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:08 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68518 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:09 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55056,68519,0,53740,TO_TIMESTAMP('2013-08-30 11:30:08','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','N','Y','Y','Y','N','N','N','N','N','Rule',170,0,TO_TIMESTAMP('2013-08-30 11:30:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:09 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68519 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:09 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55052,68520,0,53740,TO_TIMESTAMP('2013-08-30 11:30:09','YYYY-MM-DD HH24:MI:SS'),100,'Valid from including this date (first day)',29,'ECA02','The Valid From date indicates the first day of a date range','N','Y','Y','Y','N','N','N','N','N','Valid from',180,0,TO_TIMESTAMP('2013-08-30 11:30:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:09 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68520 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:10 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55054,68521,0,53740,TO_TIMESTAMP('2013-08-30 11:30:09','YYYY-MM-DD HH24:MI:SS'),100,'Valid to including this date (last day)',29,'ECA02','The Valid To date indicates the last day of a date range','N','Y','Y','Y','N','N','N','N','Y','Valid to',190,0,TO_TIMESTAMP('2013-08-30 11:30:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:10 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68521 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:10 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57008,68522,0,53740,TO_TIMESTAMP('2013-08-30 11:30:10','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','N','Y','Y','Y','N','N','N','N','N','Manufacturing Cost Collector',200,TO_TIMESTAMP('2013-08-30 11:30:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:10 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68522 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:11 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55046,68523,0,53740,TO_TIMESTAMP('2013-08-30 11:30:10','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'ECA02','The Processed checkbox indicates that a document has been processed.','N','Y','Y','Y','N','N','N','N','N','Processed',210,0,TO_TIMESTAMP('2013-08-30 11:30:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:11 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68523 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:11 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55044,68524,0,53740,TO_TIMESTAMP('2013-08-30 11:30:11','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document / line is printed',1,'ECA02','The Printed checkbox indicates if this document or line will included when printing.','N','Y','Y','Y','N','N','N','N','Y','Printed',220,0,TO_TIMESTAMP('2013-08-30 11:30:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:11 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68524 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:12 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,55031,68525,0,53740,TO_TIMESTAMP('2013-08-30 11:30:11','YYYY-MM-DD HH24:MI:SS'),100,'This is a manual process',1,'ECA02','The Manual check box indicates if the process will done manually.','N','Y','Y','Y','N','N','N','N','N','Manual',230,0,TO_TIMESTAMP('2013-08-30 11:30:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:12 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68525 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:12 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56179,68526,0,53740,TO_TIMESTAMP('2013-08-30 11:30:12','YYYY-MM-DD HH24:MI:SS'),100,'Performing or initiating organization',10,'ECA02','The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','N','Y','Y','Y','N','N','N','N','N','Trx Organization',240,TO_TIMESTAMP('2013-08-30 11:30:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:12 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68526 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:13 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56178,68527,0,53740,TO_TIMESTAMP('2013-08-30 11:30:12','YYYY-MM-DD HH24:MI:SS'),100,'Marketing Campaign',10,'ECA02','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.','N','Y','Y','Y','N','N','N','N','N','Campaign',250,TO_TIMESTAMP('2013-08-30 11:30:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:13 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68527 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:13 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56184,68528,0,53740,TO_TIMESTAMP('2013-08-30 11:30:13','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #1',10,'ECA02','The user defined element displays the optional elements that have been defined for this account combination.','N','Y','Y','Y','N','N','N','N','N','User List 1',260,TO_TIMESTAMP('2013-08-30 11:30:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:13 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68528 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:14 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56183,68529,0,53740,TO_TIMESTAMP('2013-08-30 11:30:13','YYYY-MM-DD HH24:MI:SS'),100,'User defined list element #2',10,'ECA02','The user defined element displays the optional elements that have been defined for this account combination.','N','Y','Y','Y','N','N','N','N','N','User List 2',270,TO_TIMESTAMP('2013-08-30 11:30:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:14 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68529 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:14 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56180,68530,0,53740,TO_TIMESTAMP('2013-08-30 11:30:14','YYYY-MM-DD HH24:MI:SS'),100,'Phase of a Project',10,'ECA02','N','Y','Y','Y','N','N','N','N','N','Project Phase',280,TO_TIMESTAMP('2013-08-30 11:30:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:14 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68530 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:15 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56181,68531,0,53740,TO_TIMESTAMP('2013-08-30 11:30:14','YYYY-MM-DD HH24:MI:SS'),100,'Actual Project Task in a Phase',10,'ECA02','A Project Task in a Project Phase represents the actual work.','N','Y','Y','Y','N','N','N','N','N','Project Task',290,TO_TIMESTAMP('2013-08-30 11:30:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:15 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68531 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:30:15 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56182,68532,0,53740,TO_TIMESTAMP('2013-08-30 11:30:15','YYYY-MM-DD HH24:MI:SS'),100,'Financial Project',10,'ECA02','A Project allows you to track and control internal or external activities.','N','Y','Y','Y','N','N','N','N','N','Project',300,TO_TIMESTAMP('2013-08-30 11:30:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:30:15 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68532 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 30, 2013 11:32:34 AM VET
-- LVE HR
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=68512
;

-- Aug 30, 2013 11:32:34 AM VET
-- LVE HR
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=68511
;

-- Aug 30, 2013 11:32:34 AM VET
-- LVE HR
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=68509
;

-- Aug 30, 2013 11:32:34 AM VET
-- LVE HR
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68507
;

-- Aug 30, 2013 11:32:34 AM VET
-- LVE HR
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68506
;

-- Aug 30, 2013 11:32:34 AM VET
-- LVE HR
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=68508
;

-- Aug 30, 2013 11:32:34 AM VET
-- LVE HR
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=68510
;

-- Aug 30, 2013 11:33:28 AM VET
-- LVE HR
UPDATE AD_Tab SET OrderByClause=NULL,Updated=TO_TIMESTAMP('2013-08-30 11:33:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53740
;

-- Aug 30, 2013 11:39:27 AM VET
-- LVE HR
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53442,'N',TO_TIMESTAMP('2013-08-30 11:39:25','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','HR Payment Receipt','Y',0,0,TO_TIMESTAMP('2013-08-30 11:39:25','YYYY-MM-DD HH24:MI:SS'),100,'rpt_HR_PaymentReceipt')
;

-- Aug 30, 2013 11:39:27 AM VET
-- LVE HR
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53442 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 30, 2013 11:39:45 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Name='Recibo de Pago de Nómina',Updated=TO_TIMESTAMP('2013-08-30 11:39:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53442 AND AD_Language='es_MX'
;

-- Aug 30, 2013 11:40:12 AM VET
-- LVE HR
UPDATE AD_Process_Trl SET Description='Muestra los Recibos de Pago de los Empleados',Updated=TO_TIMESTAMP('2013-08-30 11:40:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53442 AND AD_Language='es_MX'
;

-- Aug 30, 2013 11:40:54 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,53407,0,53442,53963,19,'HR_Process_ID',TO_TIMESTAMP('2013-08-30 11:40:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','HR_Process_ID',10,TO_TIMESTAMP('2013-08-30 11:40:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:40:54 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53963 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 30, 2013 11:41:47 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53442,53964,30,52073,'C_BPartner_ID',TO_TIMESTAMP('2013-08-30 11:41:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','C_BPartner_ID',20,TO_TIMESTAMP('2013-08-30 11:41:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:41:47 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53964 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 30, 2013 11:45:08 AM VET
-- LVE HR
UPDATE AD_Process SET JasperReport='attachment://inf_HR_Payment_Receipt.jasper',Updated=TO_TIMESTAMP('2013-08-30 11:45:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53442
;

-- Aug 30, 2013 11:49:00 AM VET
-- LVE HR
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,53607,0,TO_TIMESTAMP('2013-08-30 11:48:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','Y','Reports',TO_TIMESTAMP('2013-08-30 11:48:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:49:00 AM VET
-- LVE HR
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53607 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Aug 30, 2013 11:49:00 AM VET
-- LVE HR
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53607, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53607)
;

-- Aug 30, 2013 11:49:23 AM VET
-- LVE HR
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53608,0,53442,TO_TIMESTAMP('2013-08-30 11:49:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','HR PaymentReceipt',TO_TIMESTAMP('2013-08-30 11:49:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 30, 2013 11:49:23 AM VET
-- LVE HR
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53608 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Aug 30, 2013 11:49:23 AM VET
-- LVE HR
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53608, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53608)
;

-- Aug 30, 2013 11:49:27 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53608
;

-- Aug 30, 2013 11:49:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53607, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53608
;

-- Aug 30, 2013 11:49:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53607
;

-- Aug 30, 2013 11:49:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53118
;

-- Aug 30, 2013 11:49:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53115
;

-- Aug 30, 2013 11:49:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53119
;

-- Aug 30, 2013 11:49:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53120
;

-- Aug 30, 2013 11:49:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53117
;

-- Aug 30, 2013 11:49:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53123
;

-- Aug 30, 2013 11:49:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53127
;

-- Aug 30, 2013 11:49:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53116
;

-- Aug 30, 2013 11:49:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53121
;

-- Aug 30, 2013 11:49:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=10, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53122
;

-- Aug 30, 2013 11:49:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=11, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53254
;

-- Aug 30, 2013 11:49:30 AM VET
-- LVE HR
UPDATE AD_TreeNodeMM SET Parent_ID=53114, SeqNo=12, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53255
;

-- Aug 30, 2013 11:49:44 AM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Reportes',Updated=TO_TIMESTAMP('2013-08-30 11:49:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53607 AND AD_Language='es_MX'
;

-- Aug 30, 2013 11:56:08 AM VET
-- LVE HR
UPDATE AD_Tab_Trl SET Name='Movimientos',Description='Movimientos',Updated=TO_TIMESTAMP('2013-08-30 11:56:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53740 AND AD_Language='es_MX'
;

-- Aug 30, 2013 11:56:41 AM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Reportes ',Description='Reportes',Updated=TO_TIMESTAMP('2013-08-30 11:56:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53607 AND AD_Language='es_MX'
;

-- Aug 30, 2013 11:56:44 AM VET
-- LVE HR
UPDATE AD_Menu_Trl SET Name='Reportes',Updated=TO_TIMESTAMP('2013-08-30 11:56:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53607 AND AD_Language='es_MX'
;

UPDATE AD_Process SET JasperReport='attachment:inf_HR_Payment_Receipt.jasper',Updated=TO_TIMESTAMP('2013-08-30 12:10:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53442
;