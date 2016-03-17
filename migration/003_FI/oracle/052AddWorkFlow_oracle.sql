-- 15/07/2014 05:25:27 PM VET
-- LVE-EFT
INSERT INTO AD_Workflow (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Workflow_ID,Author,Cost,Created,CreatedBy,DocumentNo,Duration,DurationUnit,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsValid,Limit,Name,Priority,PublishStatus,Updated,UpdatedBy,ValidateWorkflow,Value,Version,WaitingTime,WorkflowType,WorkingTime) VALUES ('3',0,0,53822,50043,'ERP CYA',0,TO_DATE('2014-07-15 17:25:25','YYYY-MM-DD HH24:MI:SS'),100,'10000000',1,'D','ECA02','Y','N','N','N',0,'Payment Request',0,'R',TO_DATE('2014-07-15 17:25:25','YYYY-MM-DD HH24:MI:SS'),100,'N','PaymentRequest',0,0,'P',0)
;

-- 15/07/2014 05:25:27 PM VET
-- LVE-EFT
INSERT INTO AD_Workflow_Trl (AD_Language,AD_Workflow_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Workflow_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Workflow t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Workflow_ID=50043 AND NOT EXISTS (SELECT * FROM AD_Workflow_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Workflow_ID=t.AD_Workflow_ID)
;

-- 15/07/2014 05:25:49 PM VET
-- LVE-EFT
UPDATE AD_Workflow_Trl SET Name='Orden de Pago',Updated=TO_DATE('2014-07-15 17:25:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50043 AND AD_Language='es_MX'
;

-- 15/07/2014 05:28:39 PM VET
-- LVE-EFT
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,IsMilestone,IsSubcontracting,JoinElement,Limit,MovingTime,Name,OverlapUnits,Priority,QueuingTime,SetupTime,SplitElement,UnitsCycles,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,Yield,YPosition) VALUES ('Z',0,0,50197,50043,0,TO_DATE('2014-07-15 17:28:36','YYYY-MM-DD HH24:MI:SS'),100,'CO',0,0,'ECA02','Y','Y','N','N','X',0,0,'Start',0,0,0,0,'X',0,TO_DATE('2014-07-15 17:28:36','YYYY-MM-DD HH24:MI:SS'),100,'Start',0,0,0,0,100,0)
;

-- 15/07/2014 05:28:39 PM VET
-- LVE-EFT
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50197 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 15/07/2014 05:30:00 PM VET
-- LVE-EFT
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,IsMilestone,IsSubcontracting,JoinElement,Limit,MovingTime,Name,OverlapUnits,Priority,QueuingTime,SetupTime,SplitElement,UnitsCycles,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,Yield,YPosition) VALUES ('D',0,0,50198,50043,0,TO_DATE('2014-07-15 17:29:59','YYYY-MM-DD HH24:MI:SS'),100,'PR',0,0,'ECA02','Y','Y','N','N','X',0,0,'(DocPrepare)',0,0,0,0,'X',0,TO_DATE('2014-07-15 17:29:59','YYYY-MM-DD HH24:MI:SS'),100,'(DocPrepare)',0,0,0,0,100,0)
;

-- 15/07/2014 05:30:00 PM VET
-- LVE-EFT
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50198 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 15/07/2014 05:37:26 PM VET
-- LVE-EFT
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,IsMilestone,IsSubcontracting,JoinElement,Limit,MovingTime,Name,OverlapUnits,Priority,QueuingTime,SetupTime,SplitElement,UnitsCycles,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,Yield,YPosition) VALUES ('D',0,0,50199,50043,0,TO_DATE('2014-07-15 17:37:24','YYYY-MM-DD HH24:MI:SS'),100,'--',0,0,'ECA02','Y','Y','N','N','X',0,0,'(DocAuto)',0,0,0,0,'X',0,TO_DATE('2014-07-15 17:37:24','YYYY-MM-DD HH24:MI:SS'),100,'(DocAuto)',0,0,0,0,100,0)
;

-- 15/07/2014 05:37:26 PM VET
-- LVE-EFT
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50199 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 15/07/2014 05:39:29 PM VET
-- LVE-EFT
INSERT INTO AD_WF_Node (Action,AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,Cost,Created,CreatedBy,DocAction,Duration,DynPriorityChange,EntityType,IsActive,IsCentrallyMaintained,IsMilestone,IsSubcontracting,JoinElement,Limit,MovingTime,Name,OverlapUnits,Priority,QueuingTime,SetupTime,SplitElement,UnitsCycles,Updated,UpdatedBy,Value,WaitingTime,WaitTime,WorkingTime,XPosition,Yield,YPosition) VALUES ('D',0,0,50200,50043,0,TO_DATE('2014-07-15 17:39:27','YYYY-MM-DD HH24:MI:SS'),100,'CO',0,0,'ECA02','Y','Y','N','N','X',0,0,'(DocComplete)',0,0,0,0,'X',0,TO_DATE('2014-07-15 17:39:27','YYYY-MM-DD HH24:MI:SS'),100,'(DocComplete)',0,0,0,0,100,0)
;

-- 15/07/2014 05:39:29 PM VET
-- LVE-EFT
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=50200 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 15/07/2014 05:42:17 PM VET
-- LVE-EFT
UPDATE AD_WF_Node SET XPosition=207, YPosition=118,Updated=TO_DATE('2014-07-15 17:42:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=50200
;

-- 15/07/2014 05:42:17 PM VET
-- LVE-EFT
UPDATE AD_WF_Node SET XPosition=0, YPosition=120,Updated=TO_DATE('2014-07-15 17:42:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=50199
;

-- 15/07/2014 05:42:17 PM VET
-- LVE-EFT
UPDATE AD_WF_Node SET XPosition=207, YPosition=4,Updated=TO_DATE('2014-07-15 17:42:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=50198
;

-- 15/07/2014 05:42:18 PM VET
-- LVE-EFT
UPDATE AD_WF_Node SET XPosition=0, YPosition=4,Updated=TO_DATE('2014-07-15 17:42:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=50197
;

-- 15/07/2014 05:43:52 PM VET
-- LVE-EFT
UPDATE AD_Workflow SET AD_WF_Node_ID=50197, IsValid='Y',Updated=TO_DATE('2014-07-15 17:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=50043
;

-- 15/07/2014 05:47:28 PM VET
-- LVE-EFT
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50198,50199,50152,TO_DATE('2014-07-15 17:47:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',10,TO_DATE('2014-07-15 17:47:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 05:47:30 PM VET
-- LVE-EFT
UPDATE AD_WF_NodeNext SET IsStdUserWorkflow='Y',Updated=TO_DATE('2014-07-15 17:47:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_NodeNext_ID=50152
;

-- 15/07/2014 05:47:48 PM VET
-- LVE-EFT
DELETE FROM AD_WF_NodeNext WHERE AD_WF_NodeNext_ID=50152
;

-- 15/07/2014 05:48:06 PM VET
-- LVE-EFT
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50197,50199,50153,TO_DATE('2014-07-15 17:48:05','YYYY-MM-DD HH24:MI:SS'),100,'EXT','Y','Y',10,TO_DATE('2014-07-15 17:48:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 05:48:09 PM VET
-- LVE-EFT
UPDATE AD_WF_NodeNext SET EntityType='ECA02',Updated=TO_DATE('2014-07-15 17:48:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_NodeNext_ID=50153
;

-- 15/07/2014 05:48:31 PM VET
-- LVE-EFT
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50198,50197,50154,TO_DATE('2014-07-15 17:48:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y',10,TO_DATE('2014-07-15 17:48:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 05:49:01 PM VET
-- LVE-EFT
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50200,50198,50155,TO_DATE('2014-07-15 17:49:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y',10,TO_DATE('2014-07-15 17:49:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/07/2014 05:49:32 PM VET
-- LVE-EFT
UPDATE AD_WF_NodeNext SET IsStdUserWorkflow='N',Updated=TO_DATE('2014-07-15 17:49:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_NodeNext_ID=50155
;

-- 15/07/2014 05:51:48 PM VET
-- LVE-EFT
DELETE FROM AD_WF_NodeNext WHERE AD_WF_NodeNext_ID=50153
;

-- 15/07/2014 05:52:11 PM VET
-- LVE-EFT
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_Node_ID,AD_WF_NodeNext_ID,Created,CreatedBy,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,50199,50197,50156,TO_DATE('2014-07-15 17:52:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N',10,TO_DATE('2014-07-15 17:52:10','YYYY-MM-DD HH24:MI:SS'),100)
;

