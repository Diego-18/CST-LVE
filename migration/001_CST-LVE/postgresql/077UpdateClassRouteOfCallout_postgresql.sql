-- Jul 7, 2015 7:11:25 AM VET
-- CST-STD
ALTER TABLE C_RfQLineQty ADD COLUMN M_RequisitionLine_ID NUMERIC(10) DEFAULT NULL 
;

-- Jul 7, 2015 7:12:56 AM VET
-- CST-STD
UPDATE AD_Column SET IsIdentifier='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2015-07-07 07:12:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=11499
;

-- Jul 7, 2015 7:13:12 AM VET
-- CST-STD
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=2,Updated=TO_TIMESTAMP('2015-07-07 07:13:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=11501
;

-- Jul 7, 2015 8:19:15 AM VET
-- CST-STD
ALTER TABLE M_DiscountSchemaLine ADD COLUMN BaseCostElement_ID NUMERIC(10) DEFAULT NULL 
;

-- Jul 7, 2015 8:19:38 AM VET
-- CST-STD
ALTER TABLE M_DiscountSchemaLine ADD COLUMN StdCostElement_ID NUMERIC(10) DEFAULT NULL 
;

-- Jul 7, 2015 8:20:02 AM VET
-- CST-STD
ALTER TABLE M_DiscountSchemaLine ADD COLUMN LimitCostElement_ID NUMERIC(10) DEFAULT NULL 
;

-- Jul 7, 2015 8:36:20 AM VET
-- CST-STD
UPDATE AD_Column SET Callout='org.compiere.model.CalloutCashJournal.docType',Updated=TO_TIMESTAMP('2015-07-07 08:36:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66847
;

-- Jul 7, 2015 8:49:15 AM VET
-- CST-STD
UPDATE AD_Column SET Callout='org.compiere.model.CalloutCashJournal.WriteOff',Updated=TO_TIMESTAMP('2015-07-07 08:49:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66860
;

-- Jul 7, 2015 8:51:43 AM VET
-- CST-STD
UPDATE AD_Process_Para SET AD_Reference_ID=19,Updated=TO_TIMESTAMP('2015-07-07 08:51:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54995
;

-- Jul 7, 2015 9:51:26 AM VET
-- CST-STD
UPDATE AD_Process SET Classname='org.spin.report.AnalyticalInventory',Updated=TO_TIMESTAMP('2015-07-07 09:51:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53720
;

