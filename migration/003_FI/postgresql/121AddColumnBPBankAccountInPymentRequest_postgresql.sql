-- Feb 3, 2015 7:50:53 PM VET
-- LVE EFT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,75729,837,0,19,53828,'C_BP_BankAccount_ID',TO_TIMESTAMP('2015-02-03 19:50:52','YYYY-MM-DD HH24:MI:SS'),100,'Bank Account of the Business Partner','ECA02',22,'The Partner Bank Account identifies the bank account to be used for this Business Partner','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Partner Bank Account',0,TO_TIMESTAMP('2015-02-03 19:50:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Feb 3, 2015 7:50:53 PM VET
-- LVE EFT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=75729 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 3, 2015 7:51:16 PM VET
-- LVE EFT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,75729,75516,0,53979,TO_TIMESTAMP('2015-02-03 19:51:15','YYYY-MM-DD HH24:MI:SS'),100,'Bank Account of the Business Partner',22,'ECA02','The Partner Bank Account identifies the bank account to be used for this Business Partner','Y','Y','Y','N','N','N','N','N','Partner Bank Account',TO_TIMESTAMP('2015-02-03 19:51:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 3, 2015 7:51:16 PM VET
-- LVE EFT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=75516 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Feb 3, 2015 7:51:57 PM VET
-- LVE EFT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2015-02-03 19:51:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75516
;

-- Feb 3, 2015 7:55:24 PM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2015-02-03 19:55:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75516
;

-- Feb 3, 2015 7:55:24 PM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2015-02-03 19:55:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74965
;

-- Feb 3, 2015 7:55:40 PM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2015-02-03 19:55:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=74965
;

-- Feb 3, 2015 7:55:40 PM VET
-- LVE EFT
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2015-02-03 19:55:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=75516
;

-- Feb 3, 2015 8:45:22 PM VET
-- LVE EFT
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52421,'C_BPartner_ID = @C_BPartner_ID@ 
	OR EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN C_Invoice i ON (prl.C_Invoice_ID = i.C_Invoice_ID )
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = i.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)
	OR EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN C_Order o ON (prl.C_Order_ID = o.C_Order_ID )
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = o.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)
	OR EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN GL_JournalLine jl ON (prl.GL_JournalLine_ID = jl.GL_JournalLine_ID )
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = jl.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)',TO_TIMESTAMP('2015-02-03 20:45:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_BP_BankAccount of Business Partner or doc from payment','S',TO_TIMESTAMP('2015-02-03 20:45:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 3, 2015 8:45:31 PM VET
-- LVE EFT
UPDATE AD_Column SET AD_Val_Rule_ID=52421,Updated=TO_TIMESTAMP('2015-02-03 20:45:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=75729
;

-- Feb 3, 2015 8:55:09 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN C_Invoice i ON (prl.C_Invoice_ID = i.C_Invoice_ID )
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = i.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)
	OR EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN C_Order o ON (prl.C_Order_ID = o.C_Order_ID )
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = o.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)
	OR EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN GL_JournalLine jl ON (prl.GL_JournalLine_ID = jl.GL_JournalLine_ID )
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = jl.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)',Updated=TO_TIMESTAMP('2015-02-03 20:55:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52421
;

-- Feb 3, 2015 8:55:59 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN C_Invoice i ON (prl.C_Invoice_ID = i.C_Invoice_ID )
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = i.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)
	OR EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN C_Order o ON (prl.C_Order_ID = o.C_Order_ID )
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = o.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)
	OR EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN GL_JournalLine jl ON (prl.GL_JournalLine_ID = jl.GL_JournalLine_ID )
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = jl.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)OR  C_BPartner_ID = @C_BPartner_ID@ 
	',Updated=TO_TIMESTAMP('2015-02-03 20:55:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52421
;

-- Feb 3, 2015 8:56:57 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN C_Invoice i ON (prl.C_Invoice_ID = i.C_Invoice_ID )
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = i.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)
	OR EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN C_Order o ON (prl.C_Order_ID = o.C_Order_ID )
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = o.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)
	OR EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN GL_JournalLine jl ON (prl.GL_JournalLine_ID = jl.GL_JournalLine_ID )
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = jl.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)OR EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = prl.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = 1000003
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)',Updated=TO_TIMESTAMP('2015-02-03 20:56:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52421
;

-- Feb 3, 2015 8:59:05 PM VET
-- LVE EFT
UPDATE AD_Val_Rule SET Code='EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN C_Invoice i ON (prl.C_Invoice_ID = i.C_Invoice_ID )
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = i.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)
	OR EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN C_Order o ON (prl.C_Order_ID = o.C_Order_ID )
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = o.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)
	OR EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN GL_JournalLine jl ON (prl.GL_JournalLine_ID = jl.GL_JournalLine_ID )
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = jl.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)OR EXISTS (
		SELECT 1
		FROM LVE_PaymentRequestLine prl
		INNER JOIN C_BP_BankAccount bpba ON (bpba.C_BPartner_ID = prl.C_BPartner_ID )
		WHERE 
			prl.LVE_PaymentRequestLine_ID = @LVE_PaymentRequestLine_ID@
			AND C_BP_BankAccount.C_BP_BankAccount_ID = bpba.C_BP_BankAccount_ID
	)',Updated=TO_TIMESTAMP('2015-02-03 20:59:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52421
;

