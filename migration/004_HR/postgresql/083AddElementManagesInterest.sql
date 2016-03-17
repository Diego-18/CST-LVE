-- Jun 11, 2014 10:05:49 AM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57207,0,20,'ManagesInterest',TO_TIMESTAMP('2014-06-11 10:05:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Manages Interest','Manages Interest',TO_TIMESTAMP('2014-06-11 10:05:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 10:05:49 AM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57207 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 11, 2014 10:06:05 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Maneja Intereses',PrintName='Maneja Intereses',Updated=TO_TIMESTAMP('2014-06-11 10:06:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57207 AND AD_Language='es_MX'
;

-- Jun 11, 2014 10:10:36 AM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,57207,0,53633,54808,20,'ManagesInterest',TO_DATE('2014-06-11 10:10:29','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','Manages Interest',90,TO_DATE('2014-06-11 10:10:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 10:10:36 AM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54808 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jun 11, 2014 10:15:56 AM VET
-- LVE HR
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_DATE('2014-06-11 10:15:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72722
;

-- Jun 11, 2014 10:16:17 AM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73056,2051,0,10,53794,'PrinterName',TO_DATE('2014-06-11 10:16:11','YYYY-MM-DD HH24:MI:SS'),100,'Name of the Printer','ECA02',40,'Internal (Operating System) Name of the Printer; Please mote that the printer name may be different on different clients. Enter a printer name, which applies to ALL clients (e.g. printer on a server). <p>
If none is entered, the default printer is used. You specify your default printer when you log in. You can also change the default printer in Preferences.','Y','Y','N','N','N','N','N','N','N','Y','N','N','Y','Printer Name',0,TO_DATE('2014-06-11 10:16:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 10:16:17 AM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73056 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 10:20:15 AM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73057,52050,0,36,53794,'ReceiptFooterMsg',TO_DATE('2014-06-11 10:20:11','YYYY-MM-DD HH24:MI:SS'),100,'This message will be displayed at the bottom of a receipt when doing a sales or purchase','ECA02',0,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Receipt Footer Msg',0,TO_DATE('2014-06-11 10:20:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 11, 2014 10:20:15 AM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73057 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 11, 2014 10:20:54 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73056,73662,0,53949,TO_DATE('2014-06-11 10:20:45','YYYY-MM-DD HH24:MI:SS'),100,'Name of the Printer',40,'ECA02','Internal (Operating System) Name of the Printer; Please mote that the printer name may be different on different clients. Enter a printer name, which applies to ALL clients (e.g. printer on a server). <p>
If none is entered, the default printer is used. You specify your default printer when you log in. You can also change the default printer in Preferences.','Y','Y','Y','N','N','N','N','N','Printer Name',TO_DATE('2014-06-11 10:20:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 10:20:54 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73662 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 10:20:56 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73057,73663,0,53949,TO_DATE('2014-06-11 10:20:54','YYYY-MM-DD HH24:MI:SS'),100,'This message will be displayed at the bottom of a receipt when doing a sales or purchase',0,'ECA02','Y','Y','Y','N','N','N','N','N','Receipt Footer Msg',TO_DATE('2014-06-11 10:20:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 11, 2014 10:20:56 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73663 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jun 11, 2014 10:21:13 AM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_DATE('2014-06-11 10:21:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73662
;

-- Jun 11, 2014 10:21:13 AM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2014-06-11 10:21:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73372
;

-- Jun 11, 2014 10:21:13 AM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2014-06-11 10:21:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73663
;

-- Jun 11, 2014 10:21:13 AM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2014-06-11 10:21:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73370
;

-- Jun 11, 2014 10:21:13 AM VET
-- LVE HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2014-06-11 10:21:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73375
;

-- Jun 11, 2014 10:21:21 AM VET
-- LVE HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-06-11 10:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73662
;
