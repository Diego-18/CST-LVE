-- Aug 14, 2014 9:15:34 AM UTC
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,74235,114,0,19,53871,'AD_PInstance_ID',TO_TIMESTAMP('2014-08-14 09:15:33','YYYY-MM-DD HH24:MI:SS'),100,'Instance of the process','ECA02',22,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Process Instance',0,TO_TIMESTAMP('2014-08-14 09:15:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 14, 2014 9:15:34 AM UTC
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=74235 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 14, 2014 10:06:45 AM UTC
-- LVE HR
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=74219
;

-- Aug 14, 2014 10:06:45 AM UTC
-- LVE HR
DELETE FROM AD_Column WHERE AD_Column_ID=74219
;

-- Aug 14, 2014 10:06:46 AM UTC
-- LVE HR
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=74221
;

-- Aug 14, 2014 10:06:46 AM UTC
-- LVE HR
DELETE FROM AD_Column WHERE AD_Column_ID=74221
;

-- Aug 14, 2014 10:06:47 AM UTC
-- LVE HR
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=74218
;

-- Aug 14, 2014 10:06:47 AM UTC
-- LVE HR
DELETE FROM AD_Column WHERE AD_Column_ID=74218
;

-- Aug 14, 2014 10:06:48 AM UTC
-- LVE HR
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=74220
;

-- Aug 14, 2014 10:06:48 AM UTC
-- LVE HR
DELETE FROM AD_Column WHERE AD_Column_ID=74220
;

-- Aug 14, 2014 10:06:49 AM UTC
-- LVE HR
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=74222
;

-- Aug 14, 2014 10:06:49 AM UTC
-- LVE HR
DELETE FROM AD_Column WHERE AD_Column_ID=74222
;

