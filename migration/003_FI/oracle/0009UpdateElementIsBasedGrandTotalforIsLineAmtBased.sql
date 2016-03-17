-- Oct 2, 2014 2:12:26 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET ColumnName='IsLineAmtBased', Name='Line Amt Based', PrintName='Line Amt Based',Updated=TO_DATE('2014-10-02 14:12:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57466
;

-- Oct 2, 2014 2:12:26 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57466
;

-- Oct 2, 2014 2:12:26 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='IsLineAmtBased', Name='Line Amt Based', Description=NULL, Help=NULL WHERE AD_Element_ID=57466
;

-- Oct 2, 2014 2:12:26 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='IsLineAmtBased', Name='Line Amt Based', Description=NULL, Help=NULL, AD_Element_ID=57466 WHERE UPPER(ColumnName)='ISLINEAMTBASED' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 2, 2014 2:12:26 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='IsLineAmtBased', Name='Line Amt Based', Description=NULL, Help=NULL WHERE AD_Element_ID=57466 AND IsCentrallyMaintained='Y'
;

-- Oct 2, 2014 2:12:26 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Line Amt Based', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57466) AND IsCentrallyMaintained='Y'
;

-- Oct 2, 2014 2:12:26 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem pi SET PrintName='Line Amt Based', Name='Line Amt Based' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=57466)
;

-- Oct 2, 2014 2:12:41 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Basado en Monto Base',PrintName='Basado en Monto Base',Updated=TO_DATE('2014-10-02 14:12:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57466 AND AD_Language='es_MX'
;

-- Oct 2, 2014 2:12:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='N',Updated=TO_DATE('2014-10-02 14:12:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=74473
;

-- Oct 2, 2014 2:48:02 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Tab (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,8312,0,54008,551,183,TO_DATE('2014-10-02 14:47:57','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Payment Schedule','ECA02','N','N','Y','N','N','Y','N','Y','N','N','Invoice Payment Schedule','N',25,1,TO_DATE('2014-10-02 14:47:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2014 2:48:02 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=54008 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- Oct 2, 2014 2:48:14 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Tab_Trl SET Name='Programa de Pagos de Facturas',Description='Programa de Pagos de Facturas',Updated=TO_DATE('2014-10-02 14:48:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=54008 AND AD_Language='es_MX'
;

-- Oct 2, 2014 2:48:39 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,8313,74606,0,54008,TO_DATE('2014-10-02 14:48:36','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'ECA02','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2014-10-02 14:48:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2014 2:48:39 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74606 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 2, 2014 2:48:41 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,8305,74607,0,54008,TO_DATE('2014-10-02 14:48:39','YYYY-MM-DD HH24:MI:SS'),100,'Amount of the payment due',22,'ECA02','Full amount of the payment due','Y','Y','Y','N','N','N','N','N','Amount due',TO_DATE('2014-10-02 14:48:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2014 2:48:41 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74607 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 2, 2014 2:48:43 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,8309,74608,0,54008,TO_DATE('2014-10-02 14:48:41','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2014-10-02 14:48:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2014 2:48:43 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74608 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 2, 2014 2:48:44 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,8308,74609,0,54008,TO_DATE('2014-10-02 14:48:43','YYYY-MM-DD HH24:MI:SS'),100,'Calculated amount of discount',22,'ECA02','The Discount Amount indicates the discount amount for a document or line.','Y','Y','Y','N','N','N','N','N','Discount Amount',TO_DATE('2014-10-02 14:48:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2014 2:48:44 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74609 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 2, 2014 2:48:46 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,8310,74610,0,54008,TO_DATE('2014-10-02 14:48:44','YYYY-MM-DD HH24:MI:SS'),100,'Last Date for payments with discount',7,'ECA02','Last Date where a deduction of the payment discount is allowed','Y','Y','Y','N','N','N','N','N','Discount Date',TO_DATE('2014-10-02 14:48:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2014 2:48:46 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74610 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 2, 2014 2:48:48 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,8306,74611,0,54008,TO_DATE('2014-10-02 14:48:46','YYYY-MM-DD HH24:MI:SS'),100,'Date when the payment is due',7,'ECA02','Date when the payment is due without deductions or discount','Y','Y','Y','N','N','N','N','N','Due Date',TO_DATE('2014-10-02 14:48:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2014 2:48:48 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74611 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 2, 2014 2:48:53 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,8312,74612,0,54008,TO_DATE('2014-10-02 14:48:48','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier',22,'ECA02','The Invoice Document.','Y','Y','Y','N','N','N','N','N','Invoice',TO_DATE('2014-10-02 14:48:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2014 2:48:53 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74612 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 2, 2014 2:48:55 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,8314,74613,0,54008,TO_DATE('2014-10-02 14:48:53','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Payment Schedule',22,'ECA02','The Invoice Payment Schedule determines when partial payments are due.','Y','Y','N','N','N','N','N','N','Invoice Payment Schedule',TO_DATE('2014-10-02 14:48:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2014 2:48:55 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74613 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 2, 2014 2:48:57 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,8303,74614,0,54008,TO_DATE('2014-10-02 14:48:55','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2014-10-02 14:48:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2014 2:48:57 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74614 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 2, 2014 2:48:58 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,8315,74615,0,54008,TO_DATE('2014-10-02 14:48:57','YYYY-MM-DD HH24:MI:SS'),100,'Payment Schedule Template',22,'ECA02','Information when parts of the payment are due','Y','Y','Y','N','N','N','N','N','Payment Schedule',TO_DATE('2014-10-02 14:48:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2014 2:48:58 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74615 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 2, 2014 2:49:00 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,10570,74616,0,54008,TO_DATE('2014-10-02 14:48:58','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'ECA02','The Processed checkbox indicates that a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed',TO_DATE('2014-10-02 14:48:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2014 2:49:00 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74616 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 2, 2014 2:49:02 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,10324,74617,0,54008,TO_DATE('2014-10-02 14:49:00','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Process Now',TO_DATE('2014-10-02 14:49:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2014 2:49:03 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74617 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 2, 2014 2:49:04 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,8304,74618,0,54008,TO_DATE('2014-10-02 14:49:03','YYYY-MM-DD HH24:MI:SS'),100,'Element is valid',1,'ECA02','The element passed the validation check','Y','Y','Y','N','N','N','N','N','Valid',TO_DATE('2014-10-02 14:49:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 2, 2014 2:49:04 PM VET
-- LVE-OrderPrepaySchedule
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74618 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Oct 2, 2014 2:51:01 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Tab SET AD_Column_ID=3000240,Updated=TO_DATE('2014-10-02 14:51:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=3000202
;

-- Oct 2, 2014 2:52:13 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-10-02 14:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74616
;

-- Oct 2, 2014 2:52:13 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_DATE('2014-10-02 14:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74608
;

-- Oct 2, 2014 2:52:13 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_DATE('2014-10-02 14:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74614
;

-- Oct 2, 2014 2:52:13 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_DATE('2014-10-02 14:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74612
;

-- Oct 2, 2014 2:52:13 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_DATE('2014-10-02 14:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74615
;

-- Oct 2, 2014 2:52:13 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2014-10-02 14:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74606
;

-- Oct 2, 2014 2:52:13 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2014-10-02 14:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74611
;

-- Oct 2, 2014 2:52:13 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2014-10-02 14:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74607
;

-- Oct 2, 2014 2:52:13 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2014-10-02 14:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74610
;

-- Oct 2, 2014 2:52:13 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2014-10-02 14:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74609
;

-- Oct 2, 2014 2:52:13 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2014-10-02 14:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74618
;

-- Oct 2, 2014 2:52:13 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2014-10-02 14:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74617
;

-- Oct 2, 2014 2:52:51 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-10-02 14:52:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74617
;

-- Oct 2, 2014 2:55:47 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-10-02 14:55:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74614
;

-- Oct 2, 2014 2:56:01 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-10-02 14:56:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74615
;

-- Oct 2, 2014 2:56:24 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2014-10-02 14:56:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74618
;

-- Oct 2, 2014 2:56:24 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2014-10-02 14:56:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74611
;

-- Oct 2, 2014 2:56:24 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2014-10-02 14:56:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74607
;

-- Oct 2, 2014 2:56:24 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2014-10-02 14:56:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74610
;

-- Oct 2, 2014 2:56:24 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2014-10-02 14:56:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74609
;

-- Oct 2, 2014 2:56:33 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-10-02 14:56:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74618
;

-- Oct 2, 2014 2:56:36 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-10-02 14:56:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74607
;

-- Oct 2, 2014 2:56:41 PM VET
-- LVE-OrderPrepaySchedule
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-10-02 14:56:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74609
;

