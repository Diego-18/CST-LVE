-- Aug 14, 2014 10:29:06 AM UTC
-- LVE HR
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=74226
;

-- Aug 14, 2014 10:29:06 AM UTC
-- LVE HR
DELETE FROM AD_Column WHERE AD_Column_ID=74226
;

-- Aug 14, 2014 10:29:10 AM UTC
-- LVE HR
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=74225
;

-- Aug 14, 2014 10:29:10 AM UTC
-- LVE HR
DELETE FROM AD_Column WHERE AD_Column_ID=74225
;

-- Aug 14, 2014 10:29:13 AM UTC
-- LVE HR
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=74224
;

-- Aug 14, 2014 10:29:13 AM UTC
-- LVE HR
DELETE FROM AD_Column WHERE AD_Column_ID=74224
;

-- Aug 14, 2014 11:35:38 AM UTC
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74236,1129,0,15,53871,'ServiceDate',TO_DATE('2014-08-14 11:35:35','YYYY-MM-DD HH24:MI:SS'),100,'Date service was provided','ECA02',7,'The Service Date indicates the date that the service was provided.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Service date',0,TO_DATE('2014-08-14 11:35:35','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 14, 2014 11:35:38 AM UTC
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74236 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 14, 2014 11:35:50 AM UTC
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74237,526,0,12,53871,'Qty',TO_DATE('2014-08-14 11:35:49','YYYY-MM-DD HH24:MI:SS'),100,'Quantity','ECA02',22,'The Quantity indicates the number of a specific product or item for this document.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Quantity',0,TO_DATE('2014-08-14 11:35:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 14, 2014 11:35:50 AM UTC
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74237 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 14, 2014 11:36:12 AM UTC
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74238,2438,0,14,53871,'TextMsg',TO_DATE('2014-08-14 11:36:08','YYYY-MM-DD HH24:MI:SS'),100,'Text Message','ECA02',2000,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Text Message',0,TO_DATE('2014-08-14 11:36:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 14, 2014 11:36:12 AM UTC
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74238 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

