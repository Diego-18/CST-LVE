-- 23/07/2014 10:35:08 AM CEST
-- LVE-HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57326,0,20,'IsUniqueForProvision',TO_DATE('2014-07-23 10:35:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Unique for Provision','Unique for Provision',TO_DATE('2014-07-23 10:35:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/07/2014 10:35:08 AM CEST
-- LVE-HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57326 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 23/07/2014 10:35:40 AM CEST
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Único para Dotación',PrintName='Único para Dotación',Updated=TO_DATE('2014-07-23 10:35:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57326 AND AD_Language='es_MX'
;

-- 23/07/2014 10:36:29 AM CEST
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73815,57326,0,20,291,'IsUniqueForProvision',TO_DATE('2014-07-23 10:36:22','YYYY-MM-DD HH24:MI:SS'),100,'N','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Unique for Provision',0,TO_DATE('2014-07-23 10:36:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/07/2014 10:36:29 AM CEST
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73815 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/07/2014 10:37:50 AM CEST
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73816,57326,0,20,53089,'IsUniqueForProvision',TO_DATE('2014-07-23 10:37:31','YYYY-MM-DD HH24:MI:SS'),100,'EE02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Unique for Provision',0,TO_DATE('2014-07-23 10:37:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/07/2014 10:37:50 AM CEST
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73816 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/07/2014 10:37:55 AM CEST
-- LVE-HR
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_DATE('2014-07-23 10:37:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73816
;

-- 23/07/2014 10:38:01 AM CEST
-- LVE-HR
UPDATE AD_Column SET DefaultValue='N',Updated=TO_DATE('2014-07-23 10:38:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73816
;

-- 23/07/2014 10:39:19 AM CEST
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73817,57326,0,20,53088,'IsUniqueForProvision',TO_DATE('2014-07-23 10:39:12','YYYY-MM-DD HH24:MI:SS'),100,'N','EE02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Unique for Provision',0,TO_DATE('2014-07-23 10:39:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/07/2014 10:39:19 AM CEST
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73817 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/07/2014 10:43:14 AM CEST
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,73817,74132,0,53970,TO_DATE('2014-07-23 10:43:03','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','Y','Y','N','N','N','N','N','Unique for Provision',0,80,0,TO_DATE('2014-07-23 10:43:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/07/2014 10:43:14 AM CEST
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74132 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 23/07/2014 10:47:25 AM CEST
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,73816,74133,0,53972,TO_DATE('2014-07-23 10:47:17','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','Y','Y','N','N','N','N','N','Unique for Provision',0,80,0,TO_DATE('2014-07-23 10:47:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/07/2014 10:47:25 AM CEST
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74133 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 23/07/2014 10:48:26 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2014-07-23 10:48:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73788
;

-- 23/07/2014 10:49:01 AM CEST
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,73815,74134,0,53974,TO_DATE('2014-07-23 10:48:57','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','N','Y','Y','Y','N','N','N','N','N','Unique for Provision',0,230,0,TO_DATE('2014-07-23 10:48:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/07/2014 10:49:01 AM CEST
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=74134 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 23/07/2014 10:53:22 AM CEST
-- LVE-HR
UPDATE AD_Tab SET IsReadOnly='N',Updated=TO_DATE('2014-07-23 10:53:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53970
;

-- 23/07/2014 10:53:43 AM CEST
-- LVE-HR
UPDATE AD_Tab SET IsReadOnly='N',Updated=TO_DATE('2014-07-23 10:53:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53972
;

-- 23/07/2014 10:53:47 AM CEST
-- LVE-HR
UPDATE AD_Tab SET IsReadOnly='N',Updated=TO_DATE('2014-07-23 10:53:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53974
;

-- 23/07/2014 10:54:14 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:54:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73761
;

-- 23/07/2014 10:54:15 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:54:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73762
;

-- 23/07/2014 10:54:16 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:54:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73763
;

-- 23/07/2014 10:54:17 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:54:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73764
;

-- 23/07/2014 10:54:18 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:54:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73765
;

-- 23/07/2014 10:54:19 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:54:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73766
;

-- 23/07/2014 10:54:21 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:54:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73767
;

-- 23/07/2014 10:54:40 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:54:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73782
;

-- 23/07/2014 10:54:42 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:54:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73783
;

-- 23/07/2014 10:54:43 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:54:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73784
;

-- 23/07/2014 10:54:44 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:54:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73785
;

-- 23/07/2014 10:54:45 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:54:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73786
;

-- 23/07/2014 10:54:47 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:54:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73787
;

-- 23/07/2014 10:54:50 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:54:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73788
;

-- 23/07/2014 10:55:56 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-07-23 10:55:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73951
;

-- 23/07/2014 10:55:56 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-07-23 10:55:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73950
;

-- 23/07/2014 10:55:56 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-07-23 10:55:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73957
;

-- 23/07/2014 10:55:57 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-07-23 10:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73954
;

-- 23/07/2014 10:55:57 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-07-23 10:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73952
;

-- 23/07/2014 10:55:57 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-07-23 10:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73956
;

-- 23/07/2014 10:55:57 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-07-23 10:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73955
;

-- 23/07/2014 10:55:57 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-07-23 10:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73959
;

-- 23/07/2014 10:55:57 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-07-23 10:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73958
;

-- 23/07/2014 10:55:57 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-07-23 10:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73949
;

-- 23/07/2014 10:55:57 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2014-07-23 10:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73960
;

-- 23/07/2014 10:55:57 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2014-07-23 10:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73953
;

-- 23/07/2014 10:55:57 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2014-07-23 10:55:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74134
;

-- 23/07/2014 10:56:43 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:56:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73939
;

-- 23/07/2014 10:56:44 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:56:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73940
;

-- 23/07/2014 10:56:45 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:56:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73941
;

-- 23/07/2014 10:56:46 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:56:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73942
;

-- 23/07/2014 10:56:47 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:56:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73943
;

-- 23/07/2014 10:56:48 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:56:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73944
;

-- 23/07/2014 10:56:49 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:56:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73945
;

-- 23/07/2014 10:56:50 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:56:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73946
;

-- 23/07/2014 10:56:51 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:56:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73947
;

-- 23/07/2014 10:56:52 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:56:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73948
;

-- 23/07/2014 10:56:54 AM CEST
-- LVE-HR
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2014-07-23 10:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73953
;

-- 23/07/2014 11:02:03 AM CEST
-- LVE-HR
UPDATE AD_Column SET EntityType='ECA02',Updated=TO_DATE('2014-07-23 11:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73817
;

