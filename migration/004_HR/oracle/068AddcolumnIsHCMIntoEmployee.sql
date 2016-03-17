-- Mar 26, 2014 2:25:23 PM VET
-- LVE-HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57100,0,20,'IsHCM',TO_DATE('2014-03-26 14:25:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','HCM Quotation','HCM Quotation',TO_DATE('2014-03-26 14:25:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 26, 2014 2:25:24 PM VET
-- LVE-HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57100 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Mar 26, 2014 2:25:42 PM VET
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Cotiza HCM',PrintName='Cotiza HCM',Updated=TO_DATE('2014-03-26 14:25:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57100 AND AD_Language='es_MX'
;

-- Mar 26, 2014 2:26:19 PM VET
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72541,57100,0,20,53086,'IsHCM',TO_DATE('2014-03-26 14:26:03','YYYY-MM-DD HH24:MI:SS'),100,'EE02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','HCM Quotation',0,TO_DATE('2014-03-26 14:26:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 26, 2014 2:26:19 PM VET
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72541 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 26, 2014 2:28:47 PM VET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72541,73220,0,53102,TO_DATE('2014-03-26 14:28:36','YYYY-MM-DD HH24:MI:SS'),100,1,'EE02','Y','Y','Y','N','N','N','N','N','HCM Quotation',TO_DATE('2014-03-26 14:28:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 26, 2014 2:28:47 PM VET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73220 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 26, 2014 2:44:25 PM VET
-- LVE-HR
UPDATE AD_Column SET DefaultValue='N',Updated=TO_DATE('2014-03-26 14:44:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72541
;

-- Mar 26, 2014 2:45:59 PM VET
-- LVE-HR
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_DATE('2014-03-26 14:45:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72541
;

-- Mar 26, 2014 2:59:50 PM VET
-- LVE-HR
UPDATE AD_Language SET IsSystemLanguage='Y',Updated=TO_DATE('2014-03-26 14:59:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Language_ID=151
;

-- Mar 26, 2014 3:00:05 PM VET
-- LVE-HR
UPDATE AD_Language SET IsSystemLanguage='N',Updated=TO_DATE('2014-03-26 15:00:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Language_ID=151
;

-- Mar 26, 2014 3:01:26 PM VET
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Cotiza HCM',PrintName='Cotiza HCM',Updated=TO_DATE('2014-03-26 15:01:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57100 AND AD_Language='es_VE'
;

-- Mar 26, 2014 3:38:50 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53472,54697,30,'C_BPartner_ID',TO_DATE('2014-03-26 15:38:48','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','Business Partner ',120,TO_DATE('2014-03-26 15:38:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 26, 2014 3:38:50 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54697 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 26, 2014 3:39:04 PM VET
-- LVE-HR
UPDATE AD_Process_Para SET SeqNo=43,Updated=TO_DATE('2014-03-26 15:39:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54697
;

-- Mar 26, 2014 3:39:29 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,373,0,53472,54698,17,319,'IsEmployee',TO_DATE('2014-03-26 15:39:19','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if  this Business Partner is an employee','ECA02',1,'The Employee checkbox indicates if this Business Partner is an Employee.  If it is selected, additional fields will display which further identify this employee.','Y','Y','N','N','Employee',120,TO_DATE('2014-03-26 15:39:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 26, 2014 3:39:29 PM VET
-- LVE-HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54698 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 26, 2014 3:39:34 PM VET
-- LVE-HR
UPDATE AD_Process_Para SET SeqNo=45,Updated=TO_DATE('2014-03-26 15:39:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54698
;

