-- 20/09/2013 09:06:32 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='HR_Process.HR_Payroll_ID = @HR_Payroll_ID@  AND HR_Process.DocStatus IN(''CO'',''CL'') AND HR_Process.HR_Process_ID IN(SELECT HR_Process_ID FROM HR_Movement WHERE HR_Concept_ID IN(SELECT HR_Concept_ID FROM HR_Concept WHERE IsPaid=''Y'') 
AND HR_Movement_ID EXISTS (SELECT HR_Movement_ID FROM HR_PaySelectionLine WHERE Processed=''Y''))',Updated=TO_DATE('2013-09-20 21:06:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52072
;

-- 20/09/2013 09:09:13 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='HR_Process.HR_Payroll_ID = @HR_Payroll_ID@  AND HR_Process.DocStatus IN(''CO'',''CL'') AND HR_Process.HR_Process_ID IN(SELECT HR_Process_ID FROM HR_Movement WHERE HR_Concept_ID IN(SELECT HR_Concept_ID FROM HR_Concept WHERE IsPaid=''Y'') 
AND HR_Movement_ID NOT EXISTS (SELECT 1 FROM HR_PaySelectionLine WHERE Processed=''Y'' AND HR_PaySelectionLine.HR_Movement_ID = HR_Movement.HR_Movement_ID  ))',Updated=TO_DATE('2013-09-20 21:09:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52072
;

-- 20/09/2013 09:09:56 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Code='HR_Process.HR_Payroll_ID = @HR_Payroll_ID@  AND HR_Process.DocStatus IN(''CO'',''CL'') AND HR_Process.HR_Process_ID IN(SELECT HR_Process_ID FROM HR_Movement WHERE HR_Concept_ID IN(SELECT HR_Concept_ID FROM HR_Concept WHERE IsPaid=''Y'') 
AND NOT EXISTS (SELECT 1 FROM HR_PaySelectionLine WHERE Processed=''Y'' AND HR_PaySelectionLine.HR_Movement_ID = HR_Movement.HR_Movement_ID  ))',Updated=TO_DATE('2013-09-20 21:09:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52072
;

