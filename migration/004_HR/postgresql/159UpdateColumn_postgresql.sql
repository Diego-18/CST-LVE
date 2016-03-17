-- 8/08/2014 10:39:13 AM CEST
-- LVE-HR
UPDATE AD_Element SET ColumnName='HeaderPrintName', Name='Header Print Name', PrintName='Header Print Name',Updated=TO_TIMESTAMP('2014-08-08 10:39:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57411
;

-- 8/08/2014 10:39:13 AM CEST
-- LVE-HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57411
;

-- 8/08/2014 10:39:13 AM CEST
-- LVE-HR
UPDATE AD_Column SET ColumnName='HeaderPrintName', Name='Header Print Name', Description=NULL, Help=NULL WHERE AD_Element_ID=57411
;

-- 8/08/2014 10:39:13 AM CEST
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='HeaderPrintName', Name='Header Print Name', Description=NULL, Help=NULL, AD_Element_ID=57411 WHERE UPPER(ColumnName)='HEADERPRINTNAME' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 8/08/2014 10:39:13 AM CEST
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='HeaderPrintName', Name='Header Print Name', Description=NULL, Help=NULL WHERE AD_Element_ID=57411 AND IsCentrallyMaintained='Y'
;

-- 8/08/2014 10:39:13 AM CEST
-- LVE-HR
UPDATE AD_Field SET Name='Header Print Name', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57411) AND IsCentrallyMaintained='Y'
;

-- 8/08/2014 10:39:13 AM CEST
-- LVE-HR
UPDATE AD_PrintFormatItem SET PrintName='Header Print Name', Name='Header Print Name' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57411)
;

-- 8/08/2014 10:39:50 AM CEST
-- LVE-HR
UPDATE AD_Element SET ColumnName='MovDescription', Name='Movement Description', PrintName='Movement Description',Updated=TO_TIMESTAMP('2014-08-08 10:39:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57410
;

-- 8/08/2014 10:39:50 AM CEST
-- LVE-HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57410
;

-- 8/08/2014 10:39:50 AM CEST
-- LVE-HR
UPDATE AD_Column SET ColumnName='MovDescription', Name='Movement Description', Description=NULL, Help=NULL WHERE AD_Element_ID=57410
;

-- 8/08/2014 10:39:50 AM CEST
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='MovDescription', Name='Movement Description', Description=NULL, Help=NULL, AD_Element_ID=57410 WHERE UPPER(ColumnName)='MOVDESCRIPTION' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 8/08/2014 10:39:50 AM CEST
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='MovDescription', Name='Movement Description', Description=NULL, Help=NULL WHERE AD_Element_ID=57410 AND IsCentrallyMaintained='Y'
;

-- 8/08/2014 10:39:50 AM CEST
-- LVE-HR
UPDATE AD_Field SET Name='Movement Description', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57410) AND IsCentrallyMaintained='Y'
;

-- 8/08/2014 10:39:50 AM CEST
-- LVE-HR
UPDATE AD_PrintFormatItem SET PrintName='Movement Description', Name='Movement Description' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57410)
;

-- 8/08/2014 10:40:12 AM CEST
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Descripción del Movimiento',PrintName='Descripción del Movimiento',Updated=TO_TIMESTAMP('2014-08-08 10:40:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57410 AND AD_Language='es_MX'
;

-- 8/08/2014 10:40:42 AM CEST
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Nombre a ser Impreso',PrintName='Nombre a ser Impreso',Updated=TO_TIMESTAMP('2014-08-08 10:40:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57411 AND AD_Language='es_MX'
;

-- 8/08/2014 10:41:04 AM CEST
-- LVE-HR
UPDATE AD_Element SET ColumnName='Payroll', Name='Payroll', PrintName='Payroll',Updated=TO_TIMESTAMP('2014-08-08 10:41:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57408
;

-- 8/08/2014 10:41:04 AM CEST
-- LVE-HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57408
;

-- 8/08/2014 10:41:04 AM CEST
-- LVE-HR
UPDATE AD_Column SET ColumnName='Payroll', Name='Payroll', Description=NULL, Help=NULL WHERE AD_Element_ID=57408
;

-- 8/08/2014 10:41:04 AM CEST
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='Payroll', Name='Payroll', Description=NULL, Help=NULL, AD_Element_ID=57408 WHERE UPPER(ColumnName)='PAYROLL' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 8/08/2014 10:41:04 AM CEST
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='Payroll', Name='Payroll', Description=NULL, Help=NULL WHERE AD_Element_ID=57408 AND IsCentrallyMaintained='Y'
;

-- 8/08/2014 10:41:04 AM CEST
-- LVE-HR
UPDATE AD_Field SET Name='Payroll', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57408) AND IsCentrallyMaintained='Y'
;

-- 8/08/2014 10:41:04 AM CEST
-- LVE-HR
UPDATE AD_PrintFormatItem SET PrintName='Payroll', Name='Payroll' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57408)
;

-- 8/08/2014 10:41:23 AM CEST
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Nómina',PrintName='Nómina',Updated=TO_TIMESTAMP('2014-08-08 10:41:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57408 AND AD_Language='es_MX'
;

-- 8/08/2014 10:41:49 AM CEST
-- LVE-HR
UPDATE AD_Element SET ColumnName='ProcessReport', Name='Process Report', PrintName='Process Report',Updated=TO_TIMESTAMP('2014-08-08 10:41:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57409
;

-- 8/08/2014 10:41:49 AM CEST
-- LVE-HR
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57409
;

-- 8/08/2014 10:41:49 AM CEST
-- LVE-HR
UPDATE AD_Column SET ColumnName='ProcessReport', Name='Process Report', Description=NULL, Help=NULL WHERE AD_Element_ID=57409
;

-- 8/08/2014 10:41:49 AM CEST
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='ProcessReport', Name='Process Report', Description=NULL, Help=NULL, AD_Element_ID=57409 WHERE UPPER(ColumnName)='PROCESSREPORT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 8/08/2014 10:41:49 AM CEST
-- LVE-HR
UPDATE AD_Process_Para SET ColumnName='ProcessReport', Name='Process Report', Description=NULL, Help=NULL WHERE AD_Element_ID=57409 AND IsCentrallyMaintained='Y'
;

-- 8/08/2014 10:41:49 AM CEST
-- LVE-HR
UPDATE AD_Field SET Name='Process Report', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57409) AND IsCentrallyMaintained='Y'
;

-- 8/08/2014 10:41:49 AM CEST
-- LVE-HR
UPDATE AD_PrintFormatItem SET PrintName='Process Report', Name='Process Report' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57409)
;

-- 8/08/2014 10:42:00 AM CEST
-- LVE-HR
UPDATE AD_Element_Trl SET Name='Reporte de Proceso',PrintName='Reporte de Proceso',Updated=TO_TIMESTAMP('2014-08-08 10:42:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57409 AND AD_Language='es_MX'
;

