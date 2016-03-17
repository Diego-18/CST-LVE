-- Sep 18, 2013 4:14:02 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=69424
;

-- Sep 18, 2013 4:14:03 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=69421
;

-- Sep 18, 2013 4:14:03 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=69423
;

-- Sep 18, 2013 4:14:03 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=69420
;

-- Sep 18, 2013 4:14:03 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=69422
;

-- Sep 18, 2013 4:14:03 AM VET
-- LVE-Import
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=69425
;

-- Sep 18, 2013 4:14:30 AM VET
-- LVE-Import
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-09-18 04:14:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69421
;

-- Sep 18, 2013 4:14:37 AM VET
-- LVE-Import
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-09-18 04:14:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69420
;

-- Sep 18, 2013 4:14:44 AM VET
-- LVE-Import
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-09-18 04:14:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=69425
;

-- Sep 18, 2013 4:15:12 AM VET
-- LVE-Import
ALTER TABLE AD_User ADD Degree NVARCHAR2(2) DEFAULT NULL 
;

-- Sep 18, 2013 4:15:26 AM VET
-- LVE-Import
ALTER TABLE AD_User ADD Gender CHAR(1) DEFAULT NULL 
;

-- Sep 18, 2013 4:15:36 AM VET
-- LVE-Import
ALTER TABLE AD_User ADD IsDepending CHAR(1) DEFAULT 'N' CHECK (IsDepending IN ('Y','N'))
;

-- Sep 18, 2013 4:15:44 AM VET
-- LVE-Import
ALTER TABLE AD_User ADD IsScholarship CHAR(1) DEFAULT 'N' CHECK (IsScholarship IN ('Y','N'))
;

-- Sep 18, 2013 4:15:50 AM VET
-- LVE-Import
ALTER TABLE AD_User ADD Relationship NVARCHAR2(2) DEFAULT NULL 
;

-- Sep 18, 2013 4:15:58 AM VET
-- LVE-Import
ALTER TABLE AD_User ADD Turn CHAR(1) DEFAULT NULL 
;

