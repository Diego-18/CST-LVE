-- 2/10/2013 06:39:50 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=100,Updated=TO_DATE('2013-10-02 18:39:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54112
;

-- 2/10/2013 06:39:59 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=200,Updated=TO_DATE('2013-10-02 18:39:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54117
;

-- 2/10/2013 06:40:04 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=300,Updated=TO_DATE('2013-10-02 18:40:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54111
;

-- 2/10/2013 06:40:10 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=400,Updated=TO_DATE('2013-10-02 18:40:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54109
;

-- 2/10/2013 06:40:16 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=600,Updated=TO_DATE('2013-10-02 18:40:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54110
;

-- 2/10/2013 06:40:52 PM VET
-- LVE HR
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,53478,54119,19,'AD_Org_ID',TO_DATE('2013-10-02 18:40:51','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','Organization',610,TO_DATE('2013-10-02 18:40:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 2/10/2013 06:40:52 PM VET
-- LVE HR
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54119 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 2/10/2013 06:41:40 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=10, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 18:41:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55185
;

-- 2/10/2013 06:41:40 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsPrinted='Y', SeqNo=20, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 18:41:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55177
;

-- 2/10/2013 06:41:40 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsPrinted='Y', SeqNo=30, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 18:41:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55189
;

-- 2/10/2013 06:41:40 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=40, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 18:41:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55188
;

-- 2/10/2013 06:41:40 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 18:41:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55173
;

-- 2/10/2013 06:41:40 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 18:41:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55172
;

-- 2/10/2013 06:42:03 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsOrderBy='Y', IsSuppressRepeats='Y', SortNo=1, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 18:42:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55185
;

-- 2/10/2013 06:42:08 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET SortNo=2, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 18:42:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55177
;

-- 2/10/2013 06:42:11 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET SortNo=3, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 18:42:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55189
;

-- 2/10/2013 06:43:49 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsSuppressRepeats='N', XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 18:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55189
;

-- 2/10/2013 06:44:04 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsSuppressRepeats='Y', XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 18:44:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55189
;

-- 2/10/2013 06:44:08 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSuppressRepeats='Y', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 18:44:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55188
;

-- 2/10/2013 06:44:23 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsSuppressRepeats='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 18:44:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55188
;

-- 2/10/2013 06:45:17 PM VET
-- LVE HR
UPDATE AD_PrintFormat SET AD_PrintTableFormat_ID=100,Updated=TO_DATE('2013-10-02 18:45:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50147
;

-- 2/10/2013 06:46:36 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='Y', XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 18:46:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55185
;

-- 2/10/2013 06:46:46 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 18:46:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55185
;

-- 2/10/2013 06:47:53 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=10,Updated=TO_DATE('2013-10-02 18:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54119
;

-- 2/10/2013 06:48:00 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=19,Updated=TO_DATE('2013-10-02 18:48:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54112
;

-- 2/10/2013 06:48:05 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=29,Updated=TO_DATE('2013-10-02 18:48:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54117
;

-- 2/10/2013 06:48:10 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=39,Updated=TO_DATE('2013-10-02 18:48:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54111
;

-- 2/10/2013 06:48:16 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=49,Updated=TO_DATE('2013-10-02 18:48:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54109
;

-- 2/10/2013 06:48:21 PM VET
-- LVE HR
UPDATE AD_Process_Para SET SeqNo=59,Updated=TO_DATE('2013-10-02 18:48:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54110
;

-- 2/10/2013 06:49:50 PM VET
-- LVE HR
UPDATE AD_PrintTableFormat SET LineStroke=0,Updated=TO_DATE('2013-10-02 18:49:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintTableFormat_ID=100
;

-- 2/10/2013 06:50:54 PM VET
-- LVE HR
UPDATE AD_PrintTableFormat SET LineStroke=1.000000000000,Updated=TO_DATE('2013-10-02 18:50:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintTableFormat_ID=100
;

-- 2/10/2013 07:02:45 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68428,399,0,20,53607,'IsPrinted',TO_DATE('2013-10-02 19:02:43','YYYY-MM-DD HH24:MI:SS'),100,'Indicates if this document / line is printed','ECA02',1,'The Printed checkbox indicates if this document or line will included when printing.','Y','N','N','N','N','N','N','N','N','N','Printed',TO_DATE('2013-10-02 19:02:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 2/10/2013 07:02:45 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68428 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 2/10/2013 07:02:46 PM VET
-- LVE HR
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,68429,620,0,10,53607,'Value',TO_DATE('2013-10-02 19:02:45','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique','ECA02',40,'A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','N','Y','N','N','N','Y','N','N','Search Key',2,TO_DATE('2013-10-02 19:02:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 2/10/2013 07:02:46 PM VET
-- LVE HR
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68429 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 2/10/2013 07:03:52 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsActive='N', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 19:03:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55188
;

-- 2/10/2013 07:04:06 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 19:04:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55171
;

-- 2/10/2013 07:04:06 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 19:04:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55173
;

-- 2/10/2013 07:04:06 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=70, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 19:04:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55172
;

-- 2/10/2013 07:04:20 PM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68429,1000000,100,130,50147,55198,0,0,TO_DATE('2013-10-02 19:04:18','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'Value','C','F',20,80,'N',0,TO_DATE('2013-10-02 19:04:18','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 2/10/2013 07:04:20 PM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=55198 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 2/10/2013 07:04:23 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsCentrallyMaintained='Y', IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 19:04:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55198
;

-- 2/10/2013 07:04:29 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintName='Value', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 19:04:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55198
;

-- 2/10/2013 07:04:29 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET IsTranslated='N' WHERE AD_PrintFormatItem_ID=55198
;

-- 2/10/2013 07:04:37 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 19:04:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55198
;

-- 2/10/2013 07:04:37 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 19:04:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55171
;

-- 2/10/2013 07:04:37 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=70, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 19:04:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55173
;

-- 2/10/2013 07:04:37 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=80, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 19:04:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55172
;

-- 2/10/2013 07:05:20 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET MaxWidth=80, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 19:05:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55177
;

-- 2/10/2013 07:05:43 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET AD_PrintColor_ID=NULL, AD_PrintFont_ID=NULL, IsGroupBy='N', IsHeightOneLine='N', IsNextLine='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 19:05:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55198
;

-- 2/10/2013 07:06:00 PM VET
-- LVE HR
UPDATE AD_PrintFormatItem SET IsFixedWidth='Y', IsGroupBy='N', IsPageBreak='N', MaxWidth=80, SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 19:06:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55171
;

