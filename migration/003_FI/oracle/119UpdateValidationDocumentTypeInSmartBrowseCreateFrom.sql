-- Dec 18, 2014 4:28:02 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType = @RequestType@-- IN (''API'',''GLJ'', ''POO'')',Updated=TO_DATE('2014-12-18 16:28:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52381
;

-- Dec 18, 2014 4:30:32 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType = @RequestType@', Description='-- IN (''API'',''GLJ'', ''POO'')',Updated=TO_DATE('2014-12-18 16:30:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52381
;

-- Dec 18, 2014 4:32:43 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType = ''@RequestType@''',Updated=TO_DATE('2014-12-18 16:32:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52381
;

-- Dec 18, 2014 4:48:57 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='( ''@RequestType@'' = ''API'' AND C_DocType.DocBaseType = ''API'')
OR ( ''@RequestType@'' = ''POO'' AND C_DocType.DocBaseType = ''POO'' AND C_DocType.DocSubTypeSO <> ''RM'')
OR ( ''@RequestType@''= ''GLJ'' AND C_DocType.DocBaseType = ''GLJ'')', Description=NULL,Updated=TO_DATE('2014-12-18 16:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52381
;

-- Dec 18, 2014 5:08:48 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='( ''@RequestType@'' = ''API'' AND C_DocType.DocBaseType = ''API'')
OR ( ''@RequestType@'' = ''POO'' AND C_DocType.DocBaseType = ''POO'' AND COALESCE(C_DocType.DocSubTypeSO,'''') <> ''RM'')
OR ( ''@RequestType@''= ''GLJ'' AND C_DocType.DocBaseType = ''GLJ'')',Updated=TO_DATE('2014-12-18 17:08:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52381
;

