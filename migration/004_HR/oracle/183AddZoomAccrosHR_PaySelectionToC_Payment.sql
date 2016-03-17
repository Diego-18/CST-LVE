-- Aug 28, 2014 10:08:19 AM VET
-- LVE HR
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,IsDirected,Name,Type,Updated,UpdatedBy) VALUES (0,0,50014,TO_DATE('2014-08-28 10:08:18','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','C_Payment <-> HR_PaySelection','I',TO_DATE('2014-08-28 10:08:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 28, 2014 10:09:11 AM VET
-- LVE HR
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53720,TO_DATE('2014-08-28 10:09:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','HR_PaySelection <-> C_Payment',TO_DATE('2014-08-28 10:09:10','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Aug 28, 2014 10:09:11 AM VET
-- LVE HR
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53720 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Aug 28, 2014 10:09:49 AM VET
-- LVE HR
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,58705,58693,0,53720,53248,TO_DATE('2014-08-28 10:09:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_DATE('2014-08-28 10:09:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 28, 2014 10:10:20 AM VET
-- LVE HR
UPDATE AD_Ref_Table SET AD_Window_ID=53383, WhereClause='exists (select psc.HR_PaySelection_ID from HR_PaySelectionCheck psc 
 inner join  HR_PaySelectionLine psl ON (psc.HR_PaySelectionCheck_ID = psl.HR_PaySelectionCheck_ID) inner join C_Payment p ON (p.C_Payment_ID = psc.C_Payment_ID )
		where psc.C_Payment_ID = @C_Payment_ID@ 
		and HR_PaySelection.HR_PaySelection_ID = psc.HR_PaySelection_ID
	)',Updated=TO_DATE('2014-08-28 10:10:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53720
;

-- Aug 28, 2014 10:10:52 AM VET
-- LVE HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53331,54463,TO_DATE('2014-08-28 10:10:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_Payment <-> HR_PaySelection',TO_DATE('2014-08-28 10:10:51','YYYY-MM-DD HH24:MI:SS'),100,'C_Payment <-> HR_PaySelection')
;

-- Aug 28, 2014 10:10:52 AM VET
-- LVE HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54463 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 28, 2014 10:11:00 AM VET
-- LVE HR
UPDATE AD_RelationType SET AD_Reference_Source_ID=53720, Role_Source='C_Payment <-> HR_PaySelection',Updated=TO_DATE('2014-08-28 10:11:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50014
;

-- Aug 28, 2014 10:12:13 AM VET
-- LVE HR
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53722,TO_DATE('2014-08-28 10:12:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','C_Payment <-> HR_PaySelection ',TO_DATE('2014-08-28 10:12:12','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Aug 28, 2014 10:12:13 AM VET
-- LVE HR
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53722 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Aug 28, 2014 10:13:14 AM VET
-- LVE HR
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,5401,5043,0,53722,335,53383,TO_DATE('2014-08-28 10:13:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',TO_DATE('2014-08-28 10:13:14','YYYY-MM-DD HH24:MI:SS'),100,'exists (select psc.C_Payment_ID from HR_PaySelection ps 
inner join HR_PaySelectionLine psl on (ps.HR_PaySelection_ID = psl.HR_PaySelection_ID) 
inner join HR_PaySelectionCheck psc on (psl.HR_PaySelectionCheck_ID = psc.HR_PaySelectionCheck_ID)
where ps.HR_PaySelection_ID=@HR_PaySelection_ID@ AND C_Payment.C_Payment_ID = psc.C_Payment_ID
)')
;

-- Aug 28, 2014 10:13:26 AM VET
-- LVE HR
UPDATE AD_RelationType SET AD_Reference_Target_ID=53722,Updated=TO_DATE('2014-08-28 10:13:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50014
;

-- Aug 28, 2014 10:13:45 AM VET
-- LVE HR
UPDATE AD_Ref_List SET Name='HR_PaySelection <-> C_Payment', Value='HR_PaySelection <-> C_Payment',Updated=TO_DATE('2014-08-28 10:13:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54463
;

-- Aug 28, 2014 10:13:45 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54463
;

-- Aug 28, 2014 10:14:27 AM VET
-- LVE HR
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53331,54464,TO_DATE('2014-08-28 10:14:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_Payment <-> HR_PaySelection',TO_DATE('2014-08-28 10:14:26','YYYY-MM-DD HH24:MI:SS'),100,'C_Payment <-> HR_PaySelection')
;

-- Aug 28, 2014 10:14:27 AM VET
-- LVE HR
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54464 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 28, 2014 10:14:34 AM VET
-- LVE HR
UPDATE AD_RelationType SET Role_Source='HR_PaySelection <-> C_Payment', Role_Target='C_Payment <-> HR_PaySelection',Updated=TO_DATE('2014-08-28 10:14:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50014
;

-- Aug 28, 2014 10:15:03 AM VET
-- LVE HR
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_Reference_Source_ID,AD_Reference_Target_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,IsDirected,Name,Role_Source,Role_Target,Type,Updated,UpdatedBy) VALUES (0,0,53722,53720,50015,TO_DATE('2014-08-28 10:15:02','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','HR_PaySelection <-> C_Payment','HR_PaySelection <-> C_Payment','C_Payment <-> HR_PaySelection','I',TO_DATE('2014-08-28 10:15:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 28, 2014 10:24:49 AM VET
-- LVE HR
UPDATE AD_Ref_Table SET AD_Window_ID=53103,Updated=TO_DATE('2014-08-28 10:24:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53722
;

-- Aug 28, 2014 10:26:31 AM VET
-- LVE HR
UPDATE AD_RelationType SET Role_Source='C_Payment <-> HR_PaySelection', Role_Target='HR_PaySelection <-> C_Payment',Updated=TO_DATE('2014-08-28 10:26:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50015
;

-- Aug 28, 2014 10:28:03 AM VET
-- LVE HR
UPDATE AD_Ref_Table SET AD_Window_ID=53103,Updated=TO_DATE('2014-08-28 10:28:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53720
;

-- Aug 28, 2014 10:28:39 AM VET
-- LVE HR
UPDATE AD_Ref_Table SET AD_Window_ID=53383,Updated=TO_DATE('2014-08-28 10:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53722
;

-- Aug 28, 2014 10:30:59 AM VET
-- LVE HR
UPDATE AD_Reference SET Name='HR_PaySelection  -> C_Payment',Updated=TO_DATE('2014-08-28 10:30:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53722
;

-- Aug 28, 2014 10:30:59 AM VET
-- LVE HR
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53722
;

-- Aug 28, 2014 10:31:09 AM VET
-- LVE HR
UPDATE AD_Reference_Trl SET Name='HR_PaySelection  -> C_Payment',Updated=TO_DATE('2014-08-28 10:31:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53722 AND AD_Language='es_MX'
;

-- Aug 28, 2014 10:32:19 AM VET
-- LVE HR
UPDATE AD_Reference SET Name='C_Payment -> HR_PaySelection',Updated=TO_DATE('2014-08-28 10:32:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53720
;

-- Aug 28, 2014 10:32:19 AM VET
-- LVE HR
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53720
;

-- Aug 28, 2014 10:32:27 AM VET
-- LVE HR
UPDATE AD_Reference_Trl SET Name='C_Payment -> HR_PaySelection',Updated=TO_DATE('2014-08-28 10:32:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53720 AND AD_Language='es_MX'
;

-- Aug 28, 2014 10:33:12 AM VET
-- LVE HR
UPDATE AD_Ref_List SET Name='HR_PaySelection -> C_Payment', Value='HR_PaySelection -> C_Payment',Updated=TO_DATE('2014-08-28 10:33:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54463
;

-- Aug 28, 2014 10:33:12 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54463
;

-- Aug 28, 2014 10:33:16 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET Name='HR_PaySelection -> C_Payment',Updated=TO_DATE('2014-08-28 10:33:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54463 AND AD_Language='es_MX'
;

-- Aug 28, 2014 10:33:35 AM VET
-- LVE HR
UPDATE AD_RelationType SET Role_Source=NULL,Updated=TO_DATE('2014-08-28 10:33:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50014
;

-- Aug 28, 2014 10:33:56 AM VET
-- LVE HR
UPDATE AD_Ref_List SET Name='C_Payment -> HR_PaySelection', Value='C_Payment -> HR_PaySelection',Updated=TO_DATE('2014-08-28 10:33:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54464
;

-- Aug 28, 2014 10:33:56 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=54464
;

-- Aug 28, 2014 10:34:00 AM VET
-- LVE HR
UPDATE AD_Ref_List_Trl SET Name='C_Payment -> HR_PaySelection',Updated=TO_DATE('2014-08-28 10:34:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54464 AND AD_Language='es_MX'
;

-- Aug 28, 2014 10:34:05 AM VET
-- LVE HR
UPDATE AD_RelationType SET Role_Source='C_Payment <-> HR_PaySelection',Updated=TO_DATE('2014-08-28 10:34:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50014
;

-- Aug 28, 2014 10:34:09 AM VET
-- LVE HR
UPDATE AD_RelationType SET Role_Source=NULL, Role_Target=NULL,Updated=TO_DATE('2014-08-28 10:34:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50014
;

-- Aug 28, 2014 10:34:16 AM VET
-- LVE HR
UPDATE AD_RelationType SET Role_Source='C_Payment -> HR_PaySelection', Role_Target='HR_PaySelection -> C_Payment',Updated=TO_DATE('2014-08-28 10:34:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50014
;

-- Aug 28, 2014 10:34:24 AM VET
-- LVE HR
UPDATE AD_RelationType SET Role_Source='HR_PaySelection -> C_Payment', Role_Target='C_Payment -> HR_PaySelection',Updated=TO_DATE('2014-08-28 10:34:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50015
;

-- Aug 28, 2014 10:35:30 AM VET
-- LVE HR
UPDATE AD_RelationType SET AD_Reference_Source_ID=53722, AD_Reference_Target_ID=53720, Role_Source='HR_PaySelection -> C_Payment', Role_Target='C_Payment -> HR_PaySelection',Updated=TO_DATE('2014-08-28 10:35:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50014
;

-- Aug 28, 2014 10:36:53 AM VET
-- LVE HR
UPDATE AD_RelationType SET AD_Reference_Source_ID=53720, AD_Reference_Target_ID=53722, Role_Source='C_Payment -> HR_PaySelection', Role_Target='HR_PaySelection -> C_Payment',Updated=TO_DATE('2014-08-28 10:36:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50015
;

-- Aug 28, 2014 10:38:57 AM VET
-- LVE HR
UPDATE AD_RelationType SET Name='HR_PaySelection -> C_Payment ',Updated=TO_DATE('2014-08-28 10:38:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50014
;

-- Aug 28, 2014 10:39:11 AM VET
-- LVE HR
UPDATE AD_RelationType SET Name='C_Payment -> HR_PaySelection',Updated=TO_DATE('2014-08-28 10:39:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50015
;

-- Aug 28, 2014 10:41:28 AM VET
-- LVE HR
UPDATE AD_Ref_Table SET AD_Window_ID=NULL,Updated=TO_DATE('2014-08-28 10:41:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53720
;

-- Aug 28, 2014 10:41:36 AM VET
-- LVE HR
UPDATE AD_Ref_Table SET AD_Window_ID=NULL,Updated=TO_DATE('2014-08-28 10:41:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53722
;

-- Aug 28, 2014 10:43:14 AM VET
-- LVE HR
UPDATE AD_RelationType SET IsActive='N',Updated=TO_DATE('2014-08-28 10:43:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50014
;

-- Aug 28, 2014 10:43:57 AM VET
-- LVE HR
UPDATE AD_RelationType SET IsActive='N',Updated=TO_DATE('2014-08-28 10:43:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50015
;

-- Aug 28, 2014 10:44:23 AM VET
-- LVE HR
UPDATE AD_RelationType SET IsActive='Y',Updated=TO_DATE('2014-08-28 10:44:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50015
;

-- Aug 28, 2014 10:46:01 AM VET
-- LVE HR
UPDATE AD_RelationType SET AD_Reference_Source_ID=53722, AD_Reference_Target_ID=53720, Role_Source='HR_PaySelection -> C_Payment', Role_Target='C_Payment -> HR_PaySelection',Updated=TO_DATE('2014-08-28 10:46:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50015
;

-- Aug 28, 2014 10:46:52 AM VET
-- LVE HR
UPDATE AD_Ref_Table SET AD_Window_ID=53383,Updated=TO_DATE('2014-08-28 10:46:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53720
;

-- Aug 28, 2014 10:47:37 AM VET
-- LVE HR
UPDATE AD_Ref_Table SET AD_Window_ID=53383,Updated=TO_DATE('2014-08-28 10:47:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53722
;

-- Aug 28, 2014 10:48:27 AM VET
-- LVE HR
UPDATE AD_RelationType SET IsActive='Y',Updated=TO_DATE('2014-08-28 10:48:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50014
;

-- Aug 28, 2014 10:49:18 AM VET
-- LVE HR
UPDATE AD_RelationType SET AD_Reference_Source_ID=53720, AD_Reference_Target_ID=53722, Role_Source='C_Payment -> HR_PaySelection', Role_Target='HR_PaySelection -> C_Payment',Updated=TO_DATE('2014-08-28 10:49:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50014
;

-- Aug 28, 2014 10:50:27 AM VET
-- LVE HR
UPDATE AD_Ref_Table SET AD_Window_ID=53103,Updated=TO_DATE('2014-08-28 10:50:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53720
;

-- Aug 28, 2014 10:53:33 AM VET
-- LVE HR
UPDATE AD_Ref_Table SET AD_Window_ID=53383,Updated=TO_DATE('2014-08-28 10:53:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53720
;

-- Aug 28, 2014 10:56:57 AM VET
-- LVE HR
UPDATE AD_Ref_Table SET AD_Window_ID=53103,Updated=TO_DATE('2014-08-28 10:56:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53720
;

-- Aug 28, 2014 10:59:11 AM VET
-- LVE HR
UPDATE AD_Ref_Table SET WhereClause='exists (select psc.HR_PaySelection_ID from HR_PaySelectionCheck psc 
 inner join  HR_PaySelectionLine psl ON (psc.HR_PaySelectionCheck_ID = psl.HR_PaySelectionCheck_ID) inner join C_Payment p ON (p.C_Payment_ID = psc.C_Payment_ID )where psc.C_Payment_ID = @C_Payment_ID@ and HR_PaySelection.HR_PaySelection_ID = psc.HR_PaySelection_ID)',Updated=TO_DATE('2014-08-28 10:59:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53720
;

-- Aug 28, 2014 10:59:48 AM VET
-- LVE HR
UPDATE AD_RelationType SET AD_Reference_Source_ID=53722, AD_Reference_Target_ID=NULL, Role_Source='HR_PaySelection -> C_Payment', Role_Target=NULL,Updated=TO_DATE('2014-08-28 10:59:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=50014
;

