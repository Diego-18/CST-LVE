-- Jul 22, 2014 11:57:47 AM VET
-- LVE EFT
UPDATE AD_Column SET AD_Reference_ID=19,Updated=TO_DATE('2014-07-22 11:57:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73813
;

-- Jul 22, 2014 1:39:24 PM VET
-- LVE EFT
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52383,'C_Invoice.DocStatus IN (''CO'', ''CL'') AND IsSOTrx=''N''',TO_DATE('2014-07-22 13:39:18','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_Invoice Not Sales Order Transaction','S',TO_DATE('2014-07-22 13:39:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 22, 2014 1:39:41 PM VET
-- LVE EFT
UPDATE AD_Column SET AD_Val_Rule_ID=52383,Updated=TO_DATE('2014-07-22 13:39:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73416
;

-- Jul 22, 2014 1:40:39 PM VET
-- LVE EFT
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52384,'C_Order.DocStatus IN (''CO'') AND IsSOTrx=''N''',TO_DATE('2014-07-22 13:40:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_Order Not Sales Order Transaction','S',TO_DATE('2014-07-22 13:40:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 22, 2014 1:40:49 PM VET
-- LVE EFT
UPDATE AD_Column SET AD_Val_Rule_ID=52384,Updated=TO_DATE('2014-07-22 13:40:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=73417
;

-- Jul 22, 2014 1:42:15 PM VET
-- LVE EFT
UPDATE AD_Browse SET WhereClause='RequestType = ''@RequestType@'' AND PayAmt > 0',Updated=TO_DATE('2014-07-22 13:42:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50039
;

-- Jul 22, 2014 1:42:34 PM VET
-- LVE EFT
UPDATE AD_Browse SET WhereClause='RequestType = ''@RequestType@'' AND OpenAmt > 0',Updated=TO_DATE('2014-07-22 13:42:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50039
;

-- Jul 22, 2014 1:43:08 PM VET
-- LVE EFT
UPDATE AD_Browse SET WhereClause='RequestType = ''@RequestType@'' AND OpenAmt >= 0',Updated=TO_DATE('2014-07-22 13:43:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50039
;

-- Jul 22, 2014 1:43:35 PM VET
-- LVE EFT
UPDATE AD_Browse SET WhereClause='OpenAmt >= 0 AND RequestType = ''@RequestType@''',Updated=TO_DATE('2014-07-22 13:43:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50039
;

-- Jul 22, 2014 1:44:30 PM VET
-- LVE EFT
UPDATE AD_Browse SET WhereClause='OpenAmt > 0 AND RequestType = ''@RequestType@''',Updated=TO_DATE('2014-07-22 13:44:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50039
;

-- Jul 22, 2014 2:10:46 PM VET
-- LVE EFT
UPDATE AD_Browse SET WhereClause='OpenAmt > 0 AND RequestType = ''@RequestType@'' AND IsSOTrx = ''N''',Updated=TO_DATE('2014-07-22 14:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50039
;

