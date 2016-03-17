-- Dec 16, 2014 3:17:16 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType IN (''API'',''APC'',''GLJ'', ''POO'') ',Updated=TO_TIMESTAMP('2014-12-16 15:17:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52381
;

-- Dec 16, 2014 3:21:30 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType IN (''API'',''GLJ'', ''POO'') ',Updated=TO_TIMESTAMP('2014-12-16 15:21:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52381
;

-- Dec 16, 2014 3:25:52 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType IN (''API'',''GLJ'', ''POO'')  AND C_DocType.RequestType = @RequestType@',Updated=TO_TIMESTAMP('2014-12-16 15:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52381
;

-- Dec 16, 2014 3:34:46 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType IN (''API'',''GLJ'', ''POO'')  AND C_DocType.RequestType = ''@RequestType@''',Updated=TO_TIMESTAMP('2014-12-16 15:34:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52381
;

-- Dec 16, 2014 3:39:14 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='C_DocType.RequestType = ''@RequestType@''',Updated=TO_TIMESTAMP('2014-12-16 15:39:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52381
;

-- Dec 16, 2014 3:42:22 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType IN (''API'',''GLJ'', ''POO'')',Updated=TO_TIMESTAMP('2014-12-16 15:42:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52381
;

