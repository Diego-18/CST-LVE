-- Jun 26, 2014 10:49:06 AM VET
-- LVE HR
UPDATE AD_Column SET IsParent='N',Updated=TO_DATE('2014-06-26 10:49:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67812
;

-- Jun 26, 2014 10:50:23 AM VET
-- LVE HR
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,57242,0,13,'LVE_HR_DependentConcept_ID',TO_DATE('2014-06-26 10:50:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Dependent Concept','Dependent Concept',TO_DATE('2014-06-26 10:50:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 26, 2014 10:50:23 AM VET
-- LVE HR
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=57242 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jun 26, 2014 10:50:35 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Dependencia de Concepto',PrintName='Dependencia de Concepto',Updated=TO_DATE('2014-06-26 10:50:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57242 AND AD_Language='es_MX'
;

-- Jun 26, 2014 10:50:40 AM VET
-- LVE HR
UPDATE AD_Element_Trl SET Name='Dependencia de Concepto',PrintName='Dependencia de Concepto',Updated=TO_DATE('2014-06-26 10:50:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57242 AND AD_Language='es_VE'
;

-- Jun 26, 2014 10:51:05 AM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,73244,57242,0,19,53587,'LVE_HR_DependentConcept_ID',TO_DATE('2014-06-26 10:51:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','Y','Y','N','N','N','N','N','Dependent Concept',0,TO_DATE('2014-06-26 10:51:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jun 26, 2014 10:51:05 AM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=73244 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jun 26, 2014 10:51:33 AM VET
-- LVE HR
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,73244,73730,0,53764,TO_DATE('2014-06-26 10:51:30','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','N','N','N','N','N','N','Dependent Concept',TO_DATE('2014-06-26 10:51:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jun 26, 2014 10:51:33 AM VET
-- LVE HR
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=73730 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;
