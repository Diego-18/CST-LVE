-- Sep 17, 2013 11:32:28 AM VET
-- LVE-HR
UPDATE AD_Column SET DefaultValue='N',Updated=TO_DATE('2013-09-17 11:32:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67814
;

-- Sep 17, 2013 11:32:31 AM VET
-- LVE-HR
UPDATE AD_Column SET DefaultValue='N',Updated=TO_DATE('2013-09-17 11:32:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67815
;

-- Sep 17, 2013 11:32:34 AM VET
-- LVE-HR
UPDATE AD_Column SET DefaultValue='N',Updated=TO_DATE('2013-09-17 11:32:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67813
;

-- Sep 17, 2013 11:32:37 AM VET
-- LVE-HR
UPDATE AD_Column SET DefaultValue='N',Updated=TO_DATE('2013-09-17 11:32:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67816
;

-- Sep 17, 2013 11:32:57 AM VET
-- LVE-HR
UPDATE AD_Column SET DefaultValue='''N''',Updated=TO_DATE('2013-09-17 11:32:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67816
;

-- Sep 17, 2013 11:33:02 AM VET
-- LVE-HR
UPDATE AD_Column SET DefaultValue='''N''',Updated=TO_DATE('2013-09-17 11:33:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67813
;

-- Sep 17, 2013 11:33:06 AM VET
-- LVE-HR
UPDATE AD_Column SET DefaultValue='''N''',Updated=TO_DATE('2013-09-17 11:33:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67815
;

-- Sep 17, 2013 11:33:11 AM VET
-- LVE-HR
UPDATE AD_Column SET DefaultValue='''N''',Updated=TO_DATE('2013-09-17 11:33:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67814
;

-- Sep 17, 2013 11:33:27 AM VET
-- LVE-HR
ALTER TABLE C_BPartner ADD Birthday DATE DEFAULT NULL 
;

-- Sep 17, 2013 11:33:34 AM VET
-- LVE-HR
ALTER TABLE C_BPartner ADD EmployeeStatus NVARCHAR2(2) DEFAULT NULL 
;

-- Sep 17, 2013 11:33:41 AM VET
-- LVE-HR
ALTER TABLE C_BPartner ADD IsCAPTA CHAR(1) DEFAULT 'N' CHECK (IsCAPTA IN ('Y','N'))
;

-- Sep 17, 2013 11:33:47 AM VET
-- LVE-HR
ALTER TABLE C_BPartner ADD IsGrowthPlan CHAR(1) DEFAULT 'N' CHECK (IsGrowthPlan IN ('Y','N'))
;

-- Sep 17, 2013 11:33:51 AM VET
-- LVE-HR
ALTER TABLE C_BPartner ADD IsJubilate CHAR(1) DEFAULT 'N' CHECK (IsJubilate IN ('Y','N'))
;

-- Sep 17, 2013 11:33:55 AM VET
-- LVE-HR
ALTER TABLE C_BPartner ADD IsUnionized CHAR(1) DEFAULT 'N' CHECK (IsUnionized IN ('Y','N'))
;

