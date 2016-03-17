-- Jun 26, 2014 10:00:58 AM VET
-- LVE ADempiere
UPDATE AD_Tab SET AD_Column_ID=866,Updated=TO_TIMESTAMP('2014-06-26 10:00:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=136
;

-- Jun 26, 2014 10:01:05 AM VET
-- LVE ADempiere
UPDATE AD_Tab SET AD_Column_ID=7053,Updated=TO_TIMESTAMP('2014-06-26 10:01:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=215
;

-- Jun 26, 2014 10:02:46 AM VET
-- LVE ADempiere
UPDATE C_Country SET HasRegion='Y', RegionName='State',Updated=TO_TIMESTAMP('2014-06-26 10:02:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Country_ID=339
;

-- Jun 26, 2014 10:02:46 AM VET
-- LVE ADempiere
UPDATE C_Country_Trl SET IsTranslated='N' WHERE C_Country_ID=339
;

-- Jun 26, 2014 10:03:08 AM VET
-- LVE ADempiere
UPDATE AD_Language SET IsSystemLanguage='Y',Updated=TO_TIMESTAMP('2014-06-26 10:03:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Language_ID=151
;

-- Jun 26, 2014 10:57:53 AM VET
-- LVE ADempiere
UPDATE C_Country_Trl SET RegionName='Estado',Updated=TO_TIMESTAMP('2014-06-26 10:57:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Country_ID=339 AND AD_Language='es_MX'
;

-- Jun 26, 2014 10:57:58 AM VET
-- LVE ADempiere
UPDATE C_Country_Trl SET RegionName='Estado',Updated=TO_TIMESTAMP('2014-06-26 10:57:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Country_ID=339 AND AD_Language='es_VE'
;

-- Jun 26, 2014 10:58:56 AM VET
-- LVE ADempiere
UPDATE C_Country SET DisplaySequence='@R@ @C@, @P@', CaptureSequence='@CO@ @R@ @C@, @A1@ @A2@ @A3@ @A4@ @P@',Updated=TO_TIMESTAMP('2014-06-26 10:58:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Country_ID=339
;

