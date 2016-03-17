-- Jan 19, 2015 8:44:31 AM EST
-- HR Loan
UPDATE AD_Element SET Name='HR Loan Amortization', PrintName='HR Loan Amortization',Updated=TO_TIMESTAMP('2015-01-19 08:44:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57756
;

-- Jan 19, 2015 8:44:31 AM EST
-- HR Loan
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57756
;

-- Jan 19, 2015 8:44:31 AM EST
-- HR Loan
UPDATE AD_Column SET ColumnName='LVE_HR_LoanAmortization_ID', Name='HR Loan Amortization', Description=NULL, Help=NULL WHERE AD_Element_ID=57756
;

-- Jan 19, 2015 8:44:31 AM EST
-- HR Loan
UPDATE AD_Process_Para SET ColumnName='LVE_HR_LoanAmortization_ID', Name='HR Loan Amortization', Description=NULL, Help=NULL, AD_Element_ID=57756 WHERE UPPER(ColumnName)='LVE_HR_LOANAMORTIZATION_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jan 19, 2015 8:44:31 AM EST
-- HR Loan
UPDATE AD_Process_Para SET ColumnName='LVE_HR_LoanAmortization_ID', Name='HR Loan Amortization', Description=NULL, Help=NULL WHERE AD_Element_ID=57756 AND IsCentrallyMaintained='Y'
;

-- Jan 19, 2015 8:44:31 AM EST
-- HR Loan
UPDATE AD_Field SET Name='HR Loan Amortization', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57756) AND IsCentrallyMaintained='Y'
;

-- Jan 19, 2015 8:44:31 AM EST
-- HR Loan
UPDATE AD_PrintFormatItem SET PrintName='HR Loan Amortization', Name='HR Loan Amortization' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57756)
;

-- Jan 19, 2015 8:45:48 AM EST
-- HR Loan
UPDATE AD_Element_Trl SET Name='Amortización',PrintName='Amortización',Updated=TO_TIMESTAMP('2015-01-19 08:45:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57756 AND AD_Language='es_MX'
;

-- Jan 19, 2015 8:46:00 AM EST
-- HR Loan
UPDATE AD_Element SET Name='Amortization', PrintName='Amortization',Updated=TO_TIMESTAMP('2015-01-19 08:46:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57756
;

-- Jan 19, 2015 8:46:00 AM EST
-- HR Loan
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57756
;

-- Jan 19, 2015 8:46:00 AM EST
-- HR Loan
UPDATE AD_Column SET ColumnName='LVE_HR_LoanAmortization_ID', Name='Amortization', Description=NULL, Help=NULL WHERE AD_Element_ID=57756
;

-- Jan 19, 2015 8:46:00 AM EST
-- HR Loan
UPDATE AD_Process_Para SET ColumnName='LVE_HR_LoanAmortization_ID', Name='Amortization', Description=NULL, Help=NULL, AD_Element_ID=57756 WHERE UPPER(ColumnName)='LVE_HR_LOANAMORTIZATION_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jan 19, 2015 8:46:00 AM EST
-- HR Loan
UPDATE AD_Process_Para SET ColumnName='LVE_HR_LoanAmortization_ID', Name='Amortization', Description=NULL, Help=NULL WHERE AD_Element_ID=57756 AND IsCentrallyMaintained='Y'
;

-- Jan 19, 2015 8:46:00 AM EST
-- HR Loan
UPDATE AD_Field SET Name='Amortization', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57756) AND IsCentrallyMaintained='Y'
;

-- Jan 19, 2015 8:46:01 AM EST
-- HR Loan
UPDATE AD_PrintFormatItem SET PrintName='Amortization', Name='Amortization' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57756)
;

-- Jan 19, 2015 8:46:29 AM EST
-- HR Loan
UPDATE AD_Element SET Name='HR Loan', PrintName='HR Loan',Updated=TO_TIMESTAMP('2015-01-19 08:46:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57754
;

-- Jan 19, 2015 8:46:29 AM EST
-- HR Loan
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57754
;

-- Jan 19, 2015 8:46:29 AM EST
-- HR Loan
UPDATE AD_Column SET ColumnName='LVE_HR_Loan_ID', Name='HR Loan', Description=NULL, Help=NULL WHERE AD_Element_ID=57754
;

-- Jan 19, 2015 8:46:30 AM EST
-- HR Loan
UPDATE AD_Process_Para SET ColumnName='LVE_HR_Loan_ID', Name='HR Loan', Description=NULL, Help=NULL, AD_Element_ID=57754 WHERE UPPER(ColumnName)='LVE_HR_LOAN_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jan 19, 2015 8:46:30 AM EST
-- HR Loan
UPDATE AD_Process_Para SET ColumnName='LVE_HR_Loan_ID', Name='HR Loan', Description=NULL, Help=NULL WHERE AD_Element_ID=57754 AND IsCentrallyMaintained='Y'
;

-- Jan 19, 2015 8:46:30 AM EST
-- HR Loan
UPDATE AD_Field SET Name='HR Loan', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57754) AND IsCentrallyMaintained='Y'
;

-- Jan 19, 2015 8:46:30 AM EST
-- HR Loan
UPDATE AD_PrintFormatItem SET PrintName='HR Loan', Name='HR Loan' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57754)
;

-- Jan 19, 2015 8:46:50 AM EST
-- HR Loan
UPDATE AD_Element_Trl SET Name='Préstamo a Empleado',PrintName='Préstamo a Empleado',Updated=TO_TIMESTAMP('2015-01-19 08:46:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57754 AND AD_Language='es_MX'
;

-- Jan 19, 2015 8:47:02 AM EST
-- HR Loan
UPDATE AD_Element SET Name='HR Loan Payment Term', PrintName='HR Loan Payment Term',Updated=TO_TIMESTAMP('2015-01-19 08:47:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57755
;

-- Jan 19, 2015 8:47:02 AM EST
-- HR Loan
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=57755
;

-- Jan 19, 2015 8:47:02 AM EST
-- HR Loan
UPDATE AD_Column SET ColumnName='LVE_HR_LoanPaymentTerm_ID', Name='HR Loan Payment Term', Description=NULL, Help=NULL WHERE AD_Element_ID=57755
;

-- Jan 19, 2015 8:47:02 AM EST
-- HR Loan
UPDATE AD_Process_Para SET ColumnName='LVE_HR_LoanPaymentTerm_ID', Name='HR Loan Payment Term', Description=NULL, Help=NULL, AD_Element_ID=57755 WHERE UPPER(ColumnName)='LVE_HR_LOANPAYMENTTERM_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jan 19, 2015 8:47:02 AM EST
-- HR Loan
UPDATE AD_Process_Para SET ColumnName='LVE_HR_LoanPaymentTerm_ID', Name='HR Loan Payment Term', Description=NULL, Help=NULL WHERE AD_Element_ID=57755 AND IsCentrallyMaintained='Y'
;

-- Jan 19, 2015 8:47:02 AM EST
-- HR Loan
UPDATE AD_Field SET Name='HR Loan Payment Term', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=57755) AND IsCentrallyMaintained='Y'
;

-- Jan 19, 2015 8:47:02 AM EST
-- HR Loan
UPDATE AD_PrintFormatItem SET PrintName='HR Loan Payment Term', Name='HR Loan Payment Term' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=57755)
;

-- Jan 19, 2015 8:47:22 AM EST
-- HR Loan
UPDATE AD_Element_Trl SET Name='Término de Pago de Préstamo',PrintName='Término de Pago de Préstamo',Updated=TO_TIMESTAMP('2015-01-19 08:47:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=57755 AND AD_Language='es_MX'
;

-- Jan 19, 2015 8:56:17 AM EST
-- HR Loan
INSERT INTO AD_Workflow (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Workflow_ID,Author,Cost,Created,CreatedBy,Description,DocumentNo,Duration,DurationUnit,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsValid,Name,PublishStatus,Updated,UpdatedBy,Value,Version,WaitingTime,WorkflowType,WorkingTime) VALUES ('1',0,0,53922,50045,'Adempiere, Inc.',0,TO_TIMESTAMP('2015-01-19 08:56:10','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Process HR Loan)','10000000',1,'D','ECA02','Y','N','N','N','Process_HR_Loan','R',TO_TIMESTAMP('2015-01-19 08:56:10','YYYY-MM-DD HH24:MI:SS'),100,'Process_HR_Loan',0,0,'P',0)
;

-- Jan 19, 2015 8:56:17 AM EST
-- HR Loan
INSERT INTO AD_Workflow_Trl (AD_Language,AD_Workflow_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Workflow_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Workflow t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Workflow_ID=50045 AND NOT EXISTS (SELECT * FROM AD_Workflow_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Workflow_ID=t.AD_Workflow_ID)
;

-- Jan 19, 2015 8:56:38 AM EST
-- HR Loan
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Workflow_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('1',0,0,53734,50045,TO_TIMESTAMP('2015-01-19 08:56:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','HR Loan Invoice','Y',0,0,TO_TIMESTAMP('2015-01-19 08:56:37','YYYY-MM-DD HH24:MI:SS'),100,'LVE_HR_Loan Process')
;

-- Jan 19, 2015 8:56:38 AM EST
-- HR Loan
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53734 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jan 19, 2015 8:57:02 AM EST
-- HR Loan
UPDATE AD_Process_Trl SET Name='Procesar Préstamo a Empleado',Updated=TO_TIMESTAMP('2015-01-19 08:57:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53734 AND AD_Language='es_MX'
;

-- Jan 19, 2015 8:57:16 AM EST
-- HR Loan
UPDATE AD_Column SET AD_Process_ID=53734,Updated=TO_TIMESTAMP('2015-01-19 08:57:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=75436
;

-- Jan 19, 2015 8:58:45 AM EST
-- HR Loan
UPDATE AD_Workflow_Trl SET IsTranslated='Y',Name='Proceso de Préstamo',Description='(Proceso de Préstamo Estándar)',Updated=TO_TIMESTAMP('2015-01-19 08:58:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50045 AND AD_Language='es_MX'
;

-- Jan 19, 2015 8:59:37 AM EST
-- HR Loan
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,IsMilestone,IsSubcontracting,JoinElement,"limit",MovingTime,Name,OverlapUnits,Priority,QueuingTime,SetupTime,SplitElement,UnitsCycles,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,Yield,YPosition) VALUES ('D',0,0,50205,50045,0,TO_TIMESTAMP('2015-01-19 08:59:34','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','--',0,0,'ECA02','Y','Y','N','N','X',0,0,'(DocAuto)',0,0,0,0,'X',0,TO_TIMESTAMP('2015-01-19 08:59:34','YYYY-MM-DD HH24:MI:SS'),100,'(DocAuto)',0,0,0,0,100,0)
;

-- Jan 19, 2015 8:59:37 AM EST
-- HR Loan
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50205 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Jan 19, 2015 9:00:04 AM EST
-- HR Loan
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,IsMilestone,IsSubcontracting,JoinElement,"limit",MovingTime,Name,OverlapUnits,Priority,QueuingTime,SetupTime,SplitElement,UnitsCycles,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,Yield,YPosition) VALUES ('D',0,0,50206,50045,0,TO_TIMESTAMP('2015-01-19 09:00:01','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA02','Y','Y','N','N','X',0,0,'(DocComplete)',0,0,0,0,'X',0,TO_TIMESTAMP('2015-01-19 09:00:01','YYYY-MM-DD HH24:MI:SS'),100,'(DocComplete)',0,0,0,0,100,0)
;

-- Jan 19, 2015 9:00:04 AM EST
-- HR Loan
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50206 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Jan 19, 2015 9:00:34 AM EST
-- HR Loan
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,IsMilestone,IsSubcontracting,JoinElement,"limit",MovingTime,Name,OverlapUnits,Priority,QueuingTime,SetupTime,SplitElement,UnitsCycles,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,Yield,YPosition) VALUES ('D',0,0,50207,50045,0,TO_TIMESTAMP('2015-01-19 09:00:26','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','PR',0,0,'ECA02','Y','Y','N','N','X',0,0,'(DocPrepare)',0,0,0,0,'X',0,TO_TIMESTAMP('2015-01-19 09:00:26','YYYY-MM-DD HH24:MI:SS'),100,'(DocPrepare)',0,0,0,0,100,0)
;

-- Jan 19, 2015 9:00:34 AM EST
-- HR Loan
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50207 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Jan 19, 2015 9:01:12 AM EST
-- HR Loan
INSERT INTO AD_WF_Node ("action",AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,Description,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,IsMilestone,IsSubcontracting,JoinElement,"limit",MovingTime,Name,OverlapUnits,Priority,QueuingTime,SetupTime,SplitElement,UnitsCycles,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,Yield,YPosition) VALUES ('Z',0,0,50208,50045,0,TO_TIMESTAMP('2015-01-19 09:01:08','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Node)','CO',0,0,'ECA02','Y','Y','N','N','X',0,0,'(Start)',0,0,0,0,'X',0,TO_TIMESTAMP('2015-01-19 09:01:08','YYYY-MM-DD HH24:MI:SS'),100,'(Start)',0,0,0,0,100,0)
;

-- Jan 19, 2015 9:01:12 AM EST
-- HR Loan
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50208 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- Jan 19, 2015 9:02:54 AM EST
-- HR Loan
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50206,50207,50160,TO_TIMESTAMP('2015-01-19 09:02:52','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA02','Y','N',10,TO_TIMESTAMP('2015-01-19 09:02:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 19, 2015 9:03:28 AM EST
-- HR Loan
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50207,50208,50161,TO_TIMESTAMP('2015-01-19 09:03:25','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Approval)','ECA02','Y','Y',10,TO_TIMESTAMP('2015-01-19 09:03:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 19, 2015 9:04:23 AM EST
-- HR Loan
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,Description,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50205,50208,50162,TO_TIMESTAMP('2015-01-19 09:04:13','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Transition)','ECA02','Y','N',100,TO_TIMESTAMP('2015-01-19 09:04:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 19, 2015 9:04:40 AM EST
-- HR Loan
UPDATE AD_Workflow SET AD_WF_Node_ID=50208, IsValid='Y',Updated=TO_TIMESTAMP('2015-01-19 09:04:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50045
;

