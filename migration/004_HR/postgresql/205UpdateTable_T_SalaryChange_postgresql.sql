-- Feb 27, 2015 9:52:41 AM VET
-- LVE HR
UPDATE AD_Element SET ColumnName='PreviousAmt', Name='Previous Amount', PrintName='Previous Amount',Updated=TO_TIMESTAMP('2015-02-27 09:52:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57416
;

-- Feb 27, 2015 9:52:41 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57416
;

-- Feb 27, 2015 9:52:41 AM VET
-- LVE HR
UPDATE AD_Column SET ColumnName='PreviousAmt', Name='Previous Amount', Description=NULL, Help=NULL WHERE AD_Element_ID=57416
;

-- Feb 27, 2015 9:52:41 AM VET
-- LVE HR
UPDATE AD_Process_Para SET ColumnName='PreviousAmt', Name='Previous Amount', Description=NULL, Help=NULL, AD_Element_ID=57416 WHERE UPPER(ColumnName)='PREVIOUSAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Feb 27, 2015 9:52:41 AM VET
-- LVE HR
UPDATE AD_Process_Para SET ColumnName='PreviousAmt', Name='Previous Amount', Description=NULL, Help=NULL WHERE AD_Element_ID=57416 AND IsCentrallyMaintained='Y'
;

-- Feb 27, 2015 9:52:41 AM VET
-- LVE HR
UPDATE AD_Field SET Name='Previous Amount', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57416) AND IsCentrallyMaintained='Y'
;

-- Feb 27, 2015 9:52:41 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET PrintName='Previous Amount', Name='Previous Amount' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57416)
;

-- Feb 27, 2015 9:52:55 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Monto Anterior',PrintName='Monto Anterior',Updated=TO_TIMESTAMP('2015-02-27 09:52:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57416 AND AD_Language='es_MX'
;

-- Feb 27, 2015 10:01:07 AM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57885,0,15,'PreviousServiceDate',TO_TIMESTAMP('2015-02-27 10:01:06','YYYY-MM-DD HH24:MI:SS'),100,NULL,'ECA02',7,NULL,'Y','Previous Service date','Previous Service date',TO_TIMESTAMP('2015-02-27 10:01:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 27, 2015 10:01:07 AM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57885 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Feb 27, 2015 10:01:21 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Fecha Servicio Anterior',PrintName='Fecha Servicio Anterior',Updated=TO_TIMESTAMP('2015-02-27 10:01:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57885 AND AD_Language='es_MX'
;

-- Feb 27, 2015 10:01:43 AM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75934,57885,0,15,53871,'PreviousServiceDate',TO_TIMESTAMP('2015-02-27 10:01:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',7,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Previous Service date',0,TO_TIMESTAMP('2015-02-27 10:01:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 27, 2015 10:01:43 AM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75934 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 27, 2015 10:06:12 AM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57886,0,29,'PreviousQty',TO_TIMESTAMP('2015-02-27 10:06:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Previous Quantity','PreviousQty',TO_TIMESTAMP('2015-02-27 10:06:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 27, 2015 10:06:12 AM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57886 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Feb 27, 2015 10:17:38 AM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75935,57886,0,29,53871,'PreviousQty',TO_TIMESTAMP('2015-02-27 10:17:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Previous Quantity',0,TO_TIMESTAMP('2015-02-27 10:17:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 27, 2015 10:17:38 AM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75935 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 27, 2015 10:18:34 AM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57887,0,14,'PreviousTextMsg',TO_TIMESTAMP('2015-02-27 10:18:33','YYYY-MM-DD HH24:MI:SS'),100,NULL,'ECA02',2000,'Y','Previous Text Message','Previous Message',TO_TIMESTAMP('2015-02-27 10:18:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 27, 2015 10:18:34 AM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57887 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Feb 27, 2015 10:18:47 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Mensaje de texto Anterior',Updated=TO_TIMESTAMP('2015-02-27 10:18:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57887 AND AD_Language='es_MX'
;

-- Feb 27, 2015 10:19:02 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET PrintName='Mensaje Anterior',Updated=TO_TIMESTAMP('2015-02-27 10:19:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57887 AND AD_Language='es_MX'
;

-- Feb 27, 2015 10:19:13 AM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75936,57887,0,14,53871,'PreviousTextMsg',TO_TIMESTAMP('2015-02-27 10:19:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',2000,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Previous Text Message',0,TO_TIMESTAMP('2015-02-27 10:19:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 27, 2015 10:19:13 AM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75936 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

