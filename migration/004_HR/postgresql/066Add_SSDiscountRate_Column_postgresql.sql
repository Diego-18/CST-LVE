-- 04/02/2014 10:52:35 AM CET
-- LVE-HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57027,0,12,'SSDiscountRate',TO_TIMESTAMP('2014-02-04 10:52:24','YYYY-MM-DD HH24:MI:SS'),1013256,'ECA02',10,'Y','Social Security Discount','Social Security Discount',TO_TIMESTAMP('2014-02-04 10:52:24','YYYY-MM-DD HH24:MI:SS'),1013256)
;

-- 04/02/2014 10:52:35 AM CET
-- LVE-HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57027 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 04/02/2014 10:53:20 AM CET
-- LVE-HR
UPDATE AD_Element_Trl SET Name='% Descuento Seguro Social',PrintName='% Descuento Seguro Social',Updated=TO_TIMESTAMP('2014-02-04 10:53:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013256 WHERE AD_Element_ID=57027 AND AD_Language='es_MX'
;

-- 04/02/2014 10:53:29 AM CET
-- LVE-HR
UPDATE AD_Element_Trl SET Name='% Descuento S.S.O.',PrintName='% Descuento S.S.O.',Updated=TO_TIMESTAMP('2014-02-04 10:53:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013256 WHERE AD_Element_ID=57027 AND AD_Language='es_VE'
;

-- 04/02/2014 10:54:04 AM CET
-- LVE-HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,71488,57027,0,12,53086,'SSDiscountRate',TO_TIMESTAMP('2014-02-04 10:54:00','YYYY-MM-DD HH24:MI:SS'),1013256,'EE02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Social Security Discount',0,TO_TIMESTAMP('2014-02-04 10:54:00','YYYY-MM-DD HH24:MI:SS'),1013256,0)
;

-- 04/02/2014 10:54:05 AM CET
-- LVE-HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=71488 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/02/2014 10:56:22 AM CET
-- LVE-HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsEmbedded,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,71488,72266,0,53102,TO_TIMESTAMP('2014-02-04 10:56:11','YYYY-MM-DD HH24:MI:SS'),1013256,0,'ECA02','N','Y','Y','Y','N','N','N','N','N','Social Security Discount',0,150,0,TO_TIMESTAMP('2014-02-04 10:56:11','YYYY-MM-DD HH24:MI:SS'),1013256)
;

-- 04/02/2014 10:56:22 AM CET
-- LVE-HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72266 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 04/02/2014 11:01:24 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2014-02-04 11:01:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013256 WHERE AD_Field_ID=72266
;

-- 04/02/2014 11:01:24 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2014-02-04 11:01:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013256 WHERE AD_Field_ID=54784
;

-- 04/02/2014 11:01:24 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2014-02-04 11:01:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013256 WHERE AD_Field_ID=54785
;

-- 04/02/2014 11:01:24 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2014-02-04 11:01:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013256 WHERE AD_Field_ID=54786
;

-- 04/02/2014 11:01:24 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2014-02-04 11:01:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013256 WHERE AD_Field_ID=54787
;

-- 04/02/2014 11:01:24 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2014-02-04 11:01:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013256 WHERE AD_Field_ID=54788
;

-- 04/02/2014 11:01:25 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2014-02-04 11:01:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013256 WHERE AD_Field_ID=54789
;

-- 04/02/2014 11:01:25 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2014-02-04 11:01:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013256 WHERE AD_Field_ID=54790
;

-- 04/02/2014 11:01:25 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2014-02-04 11:01:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013256 WHERE AD_Field_ID=54791
;

-- 04/02/2014 11:01:25 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2014-02-04 11:01:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013256 WHERE AD_Field_ID=54792
;

-- 04/02/2014 11:01:25 AM CET
-- LVE-HR
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2014-02-04 11:01:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013256 WHERE AD_Field_ID=54793
;

-- 04/02/2014 11:01:33 AM CET
-- LVE-HR
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2014-02-04 11:01:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=1013256 WHERE AD_Field_ID=72266
;

