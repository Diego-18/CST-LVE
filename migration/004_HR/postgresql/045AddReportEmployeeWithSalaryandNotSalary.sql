-- 28/09/2013 11:09:25 AM VET
-- LVE HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,Name,Updated,UpdatedBy) VALUES (1000000,1000000,100,130,50139,100,53068,53596,TO_TIMESTAMP('2013-09-28 11:09:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y','Empleado (Con Salario)',TO_TIMESTAMP('2013-09-28 11:09:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 11:09:41 AM VET
-- LVE HR
UPDATE AD_PrintFormat SET AD_PrintColor_ID=100, AD_PrintFont_ID=130, AD_PrintPaper_ID=100, AD_ReportView_ID=53065, AD_Table_ID=53596, FooterMargin=0, HeaderMargin=0, IsDefault='N', IsForm='N', IsStandardHeaderFooter='Y', IsTableBased='Y', Name='Empleado &Copiar registro 259841360',Updated=TO_TIMESTAMP('2013-09-28 11:09:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50139
;

-- 28/09/2013 11:09:43 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68110,0,50139,54769,0,TO_TIMESTAMP('2013-09-28 11:09:41','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Active','C','F','Active',0,'N',0,TO_TIMESTAMP('2013-09-28 11:09:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:09:43 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54769 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:09:43 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68110) WHERE AD_PrintFormatItem_ID = 54769 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68110 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54769) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:09:46 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68108,0,50139,54770,0,TO_TIMESTAMP('2013-09-28 11:09:43','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Client','C','F','Client',0,'N',0,TO_TIMESTAMP('2013-09-28 11:09:43','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:09:46 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54770 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:09:46 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68108) WHERE AD_PrintFormatItem_ID = 54770 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68108 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54770) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:09:48 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68111,0,50139,54771,0,TO_TIMESTAMP('2013-09-28 11:09:46','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Created','C','F','Created',0,'N',0,TO_TIMESTAMP('2013-09-28 11:09:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:09:48 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54771 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:09:48 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68111) WHERE AD_PrintFormatItem_ID = 54771 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68111 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54771) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:09:49 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68113,0,50139,54772,0,TO_TIMESTAMP('2013-09-28 11:09:48','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Created By','C','F','Created By',0,'N',0,TO_TIMESTAMP('2013-09-28 11:09:48','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:09:49 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54772 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:09:49 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68113) WHERE AD_PrintFormatItem_ID = 54772 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68113 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54772) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:09:51 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68112,0,50139,54773,0,TO_TIMESTAMP('2013-09-28 11:09:50','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Updated','C','F','Updated',0,'N',0,TO_TIMESTAMP('2013-09-28 11:09:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:09:51 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54773 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:09:51 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68112) WHERE AD_PrintFormatItem_ID = 54773 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68112 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54773) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:09:54 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68114,0,50139,54774,0,TO_TIMESTAMP('2013-09-28 11:09:51','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Updated By','C','F','Updated By',0,'N',0,TO_TIMESTAMP('2013-09-28 11:09:51','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:09:54 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54774 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:09:54 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68114) WHERE AD_PrintFormatItem_ID = 54774 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68114 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54774) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:09:58 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68143,0,50139,54775,0,TO_TIMESTAMP('2013-09-28 11:09:54','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Address','C','F','Address',0,'N',0,TO_TIMESTAMP('2013-09-28 11:09:54','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:09:58 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54775 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:09:58 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68143) WHERE AD_PrintFormatItem_ID = 54775 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68143 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54775) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:00 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68116,0,50139,54776,0,TO_TIMESTAMP('2013-09-28 11:09:58','YYYY-MM-DD HH24:MI:SS'),100,'B','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'BP Name','C','F','BP Name',0,'N',0,TO_TIMESTAMP('2013-09-28 11:09:58','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:00 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54776 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:00 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68116) WHERE AD_PrintFormatItem_ID = 54776 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68116 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54776) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:01 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68146,0,50139,54777,0,TO_TIMESTAMP('2013-09-28 11:10:00','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'BPL_Fax','C','F','BPL_Fax',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:01 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54777 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:01 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68146) WHERE AD_PrintFormatItem_ID = 54777 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68146 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54777) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:04 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68144,0,50139,54778,0,TO_TIMESTAMP('2013-09-28 11:10:01','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'BPL_Phone','C','F','BPL_Phone',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:01','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:04 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54778 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:04 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68144) WHERE AD_PrintFormatItem_ID = 54778 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68144 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54778) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:05 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68145,0,50139,54779,0,TO_TIMESTAMP('2013-09-28 11:10:04','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'BPL_Phone2','C','F','BPL_Phone2',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:04','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:05 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54779 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:05 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68145) WHERE AD_PrintFormatItem_ID = 54779 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68145 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54779) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:07 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68126,0,50139,54780,0,TO_TIMESTAMP('2013-09-28 11:10:05','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Business Partner Birthday','C','F','Business Partner Birthday',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:05','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:07 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54780 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68126) WHERE AD_PrintFormatItem_ID = 54780 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68126 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54780) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:09 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68120,0,50139,54781,0,TO_TIMESTAMP('2013-09-28 11:10:07','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Business Partner Gender','C','F','Business Partner Gender',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:09 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54781 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:09 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68120) WHERE AD_PrintFormatItem_ID = 54781 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68120 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54781) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:10 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68117,0,50139,54782,0,TO_TIMESTAMP('2013-09-28 11:10:09','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Business Partner Group','C','F','BPartner Group',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:09','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:10 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54782 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:10 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68117) WHERE AD_PrintFormatItem_ID = 54782 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68117 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54782) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:12 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68136,0,50139,54783,0,TO_TIMESTAMP('2013-09-28 11:10:10','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Column Type','C','F','Column Type',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:10','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:12 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54783 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:12 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68136) WHERE AD_PrintFormatItem_ID = 54783 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68136 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54783) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:14 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68121,0,50139,54784,0,TO_TIMESTAMP('2013-09-28 11:10:12','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Contribute C.A.P.T.A.','C','F','Contribute C.A.P.T.A.',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:12','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:14 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54784 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:14 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68121) WHERE AD_PrintFormatItem_ID = 54784 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68121 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54784) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:15 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68124,0,50139,54785,0,TO_TIMESTAMP('2013-09-28 11:10:14','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Employee','C','F','Employee',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:14','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:15 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54785 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:15 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68124) WHERE AD_PrintFormatItem_ID = 54785 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68124 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54785) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:17 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68119,0,50139,54786,0,TO_TIMESTAMP('2013-09-28 11:10:15','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Employee Status','C','F','Employee Status',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:17 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54786 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:17 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68119) WHERE AD_PrintFormatItem_ID = 54786 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68119 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54786) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:19 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68129,0,50139,54787,0,TO_TIMESTAMP('2013-09-28 11:10:17','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'End Date','C','F','End Date',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:19 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54787 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:19 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68129) WHERE AD_PrintFormatItem_ID = 54787 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68129 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54787) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:20 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68122,0,50139,54788,0,TO_TIMESTAMP('2013-09-28 11:10:19','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Has Growth Plan','C','F','Has Growth Plan',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:19','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:20 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54788 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:20 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68122) WHERE AD_PrintFormatItem_ID = 54788 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68122 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54788) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:22 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68123,0,50139,54789,0,TO_TIMESTAMP('2013-09-28 11:10:20','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Is Jubilate','C','F','Is Jubilate',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:20','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:22 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54789 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:22 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68123) WHERE AD_PrintFormatItem_ID = 54789 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68123 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54789) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:24 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68125,0,50139,54790,0,TO_TIMESTAMP('2013-09-28 11:10:22','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Is Unionized','C','F','Is Unionized',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:24 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54790 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:24 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68125) WHERE AD_PrintFormatItem_ID = 54790 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68125 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54790) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:25 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68139,0,50139,54791,0,TO_TIMESTAMP('2013-09-28 11:10:24','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Max Value','C','F','Max Value',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:25 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54791 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:25 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68139) WHERE AD_PrintFormatItem_ID = 54791 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68139 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54791) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:27 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68140,0,50139,54792,0,TO_TIMESTAMP('2013-09-28 11:10:25','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Min Value','C','F','Min Value',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:25','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:27 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54792 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:27 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68140) WHERE AD_PrintFormatItem_ID = 54792 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68140 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54792) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:29 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68132,0,50139,54793,0,TO_TIMESTAMP('2013-09-28 11:10:27','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Payroll','C','F','Payroll',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:29 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54793 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:30 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68132) WHERE AD_PrintFormatItem_ID = 54793 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68132 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54793) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:32 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68135,0,50139,54794,0,TO_TIMESTAMP('2013-09-28 11:10:30','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Payroll Concept','C','F','Payroll Concept',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:32 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54794 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:32 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68135) WHERE AD_PrintFormatItem_ID = 54794 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68135 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54794) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:34 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68134,0,50139,54795,0,TO_TIMESTAMP('2013-09-28 11:10:32','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Payroll Employee Attribute','C','F','Payroll Employee Attribute',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:34 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54795 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:34 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68134) WHERE AD_PrintFormatItem_ID = 54795 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68134 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54795) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:36 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68131,0,50139,54796,0,TO_TIMESTAMP('2013-09-28 11:10:34','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Payroll Job','C','F','Payroll Job',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:34','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:36 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54796 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:36 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68131) WHERE AD_PrintFormatItem_ID = 54796 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68131 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54796) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:37 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68138,0,50139,54797,0,TO_TIMESTAMP('2013-09-28 11:10:36','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Printed','C','F','Printed',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:36','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:37 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54797 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:37 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68138) WHERE AD_PrintFormatItem_ID = 54797 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68138 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54797) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:39 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68127,0,50139,54798,0,TO_TIMESTAMP('2013-09-28 11:10:37','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Social Security Code','C','F','Social Security Code',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:39 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54798 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:39 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68127) WHERE AD_PrintFormatItem_ID = 54798 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68127 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54798) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:41 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68118,0,50139,54799,0,TO_TIMESTAMP('2013-09-28 11:10:39','YYYY-MM-DD HH24:MI:SS'),100,'B','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Tax ID','C','F','Tax ID',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:39','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:41 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54799 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:41 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68118) WHERE AD_PrintFormatItem_ID = 54799 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68118 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54799) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:42 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68141,0,50139,54800,0,TO_TIMESTAMP('2013-09-28 11:10:41','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Valid from','C','F','Valid from',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:42 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54800 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:42 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68141) WHERE AD_PrintFormatItem_ID = 54800 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68141 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54800) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:46 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68142,0,50139,54801,0,TO_TIMESTAMP('2013-09-28 11:10:42','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Valid to','C','F','Valid to',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:46 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54801 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:46 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68142) WHERE AD_PrintFormatItem_ID = 54801 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68142 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54801) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:48 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68133,0,50139,54802,0,TO_TIMESTAMP('2013-09-28 11:10:46','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Validation code','C','F','Validation code',0,'N',0,TO_TIMESTAMP('2013-09-28 11:10:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:48 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54802 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:48 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68133) WHERE AD_PrintFormatItem_ID = 54802 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68133 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54802) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:50 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68109,0,50139,54803,0,TO_TIMESTAMP('2013-09-28 11:10:48','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','Y','N','Y','Y','N','N','N','N','Y','N','X',1,0,0,'Organization','C','F','Organization',10,'N',1,TO_TIMESTAMP('2013-09-28 11:10:48','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:50 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54803 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:50 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68109) WHERE AD_PrintFormatItem_ID = 54803 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68109 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54803) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:51 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68128,0,50139,54804,0,TO_TIMESTAMP('2013-09-28 11:10:50','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'Start Date','C','F','Start Date',20,'N',0,TO_TIMESTAMP('2013-09-28 11:10:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:51 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54804 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:51 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68128) WHERE AD_PrintFormatItem_ID = 54804 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68128 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54804) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:53 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68130,0,50139,54805,0,TO_TIMESTAMP('2013-09-28 11:10:51','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','Y','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,120,'Payroll Department','C','F','Payroll Department',30,'N',0,TO_TIMESTAMP('2013-09-28 11:10:51','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:53 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54805 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:53 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68130) WHERE AD_PrintFormatItem_ID = 54805 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68130 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54805) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:54 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68115,0,50139,54806,0,TO_TIMESTAMP('2013-09-28 11:10:53','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','Y','N','N','Y','N','N','N','N','N','N','N','Y','N','Y','Y','N','N','N','N','N','N','X',1,0,150,'Business Partner ','C','F','Business Partner ',40,'N',0,TO_TIMESTAMP('2013-09-28 11:10:53','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:54 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54806 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:54 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68115) WHERE AD_PrintFormatItem_ID = 54806 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68115 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54806) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68137,0,50139,54807,0,TO_TIMESTAMP('2013-09-28 11:10:54','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'Amount','C','F','Amt',50,'N',0,TO_TIMESTAMP('2013-09-28 11:10:54','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54807 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68137) WHERE AD_PrintFormatItem_ID = 54807 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68137 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54807) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54653 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54769 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54653)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54664 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54770 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54664)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54667 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54771 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54667)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54668 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54772 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54668)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54687 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54773 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54687)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54688 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54774 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54688)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54654 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54775 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54654)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54661 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54776 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54661)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54658 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54777 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54658)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54659 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54778 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54659)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54660 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54779 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54660)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54656 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54780 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54656)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54657 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54781 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54657)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54663 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54782 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54663)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54665 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54783 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54665)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54666 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54784 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54666)
;

-- 28/09/2013 11:10:56 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54669 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54785 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54669)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54670 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54786 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54670)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54671 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54787 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54671)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54672 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54788 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54672)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54673 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54789 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54673)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54674 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54790 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54674)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54675 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54791 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54675)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54676 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54792 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54676)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54678 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54793 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54678)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54679 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54794 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54679)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54681 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54795 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54681)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54682 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54796 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54682)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54683 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54797 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54683)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54684 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54798 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54684)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54686 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54799 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54686)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54690 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54800 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54690)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54691 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54801 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54691)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54689 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54802 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54689)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54677 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54803 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54677)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54685 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54804 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54685)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54680 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54805 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54680)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54662 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54806 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54662)
;

-- 28/09/2013 11:10:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54655 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54807 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54655)
;

-- 28/09/2013 11:11:14 AM VET
-- LVE HR
UPDATE AD_PrintFormat SET AD_ReportView_ID=53068, Name='Empleado (Con Salario)',Updated=TO_TIMESTAMP('2013-09-28 11:11:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50139
;

-- 28/09/2013 11:11:22 AM VET
-- LVE HR
UPDATE AD_PrintFormat SET AD_PrintFont_ID=133,Updated=TO_TIMESTAMP('2013-09-28 11:11:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50139
;

-- 28/09/2013 11:13:22 AM VET
-- LVE HR
UPDATE AD_ReportView SET WhereClause=NULL,Updated=TO_TIMESTAMP('2013-09-28 11:13:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53065
;

-- 28/09/2013 11:13:46 AM VET
-- LVE HR
UPDATE AD_ReportView SET Name='LVE_RV_HR_Employee (Salary)',Updated=TO_TIMESTAMP('2013-09-28 11:13:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53068
;

-- 28/09/2013 11:13:55 AM VET
-- LVE HR
UPDATE AD_ReportView SET Name='LVE_RV_HR_Employee (Not Salary)',Updated=TO_TIMESTAMP('2013-09-28 11:13:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53069
;

-- 28/09/2013 11:16:46 AM VET
-- LVE HR
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,Name,Updated,UpdatedBy) VALUES (1000000,1000000,100,133,50140,100,53068,53596,TO_TIMESTAMP('2013-09-28 11:16:44','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y','Empleado (Sin Salario)',TO_TIMESTAMP('2013-09-28 11:16:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/09/2013 11:17:02 AM VET
-- LVE HR
UPDATE AD_PrintFormat SET AD_PrintColor_ID=100, AD_PrintFont_ID=130, AD_PrintPaper_ID=100, AD_ReportView_ID=53065, AD_Table_ID=53596, FooterMargin=0, HeaderMargin=0, IsDefault='N', IsForm='N', IsStandardHeaderFooter='Y', IsTableBased='Y', Name='Empleado &Copiar registro 128543993',Updated=TO_TIMESTAMP('2013-09-28 11:17:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50140
;

-- 28/09/2013 11:17:04 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68110,0,50140,54808,0,TO_TIMESTAMP('2013-09-28 11:17:02','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Active','C','F','Active',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:04 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54808 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:04 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68110) WHERE AD_PrintFormatItem_ID = 54808 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68110 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54808) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:05 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68108,0,50140,54809,0,TO_TIMESTAMP('2013-09-28 11:17:04','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Client','C','F','Client',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:04','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:05 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54809 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:05 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68108) WHERE AD_PrintFormatItem_ID = 54809 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68108 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54809) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:07 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68111,0,50140,54810,0,TO_TIMESTAMP('2013-09-28 11:17:05','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Created','C','F','Created',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:05','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:07 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54810 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68111) WHERE AD_PrintFormatItem_ID = 54810 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68111 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54810) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:08 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68113,0,50140,54811,0,TO_TIMESTAMP('2013-09-28 11:17:07','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Created By','C','F','Created By',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:08 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54811 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:08 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68113) WHERE AD_PrintFormatItem_ID = 54811 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68113 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54811) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:10 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68112,0,50140,54812,0,TO_TIMESTAMP('2013-09-28 11:17:08','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Updated','C','F','Updated',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:10 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54812 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:10 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68112) WHERE AD_PrintFormatItem_ID = 54812 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68112 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54812) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:11 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68114,0,50140,54813,0,TO_TIMESTAMP('2013-09-28 11:17:10','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Updated By','C','F','Updated By',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:10','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:11 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54813 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:11 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68114) WHERE AD_PrintFormatItem_ID = 54813 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68114 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54813) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:13 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68143,0,50140,54814,0,TO_TIMESTAMP('2013-09-28 11:17:11','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Address','C','F','Address',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:11','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:13 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54814 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:13 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68143) WHERE AD_PrintFormatItem_ID = 54814 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68143 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54814) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:14 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68116,0,50140,54815,0,TO_TIMESTAMP('2013-09-28 11:17:13','YYYY-MM-DD HH24:MI:SS'),100,'B','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'BP Name','C','F','BP Name',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:13','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:14 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54815 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:14 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68116) WHERE AD_PrintFormatItem_ID = 54815 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68116 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54815) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:16 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68146,0,50140,54816,0,TO_TIMESTAMP('2013-09-28 11:17:14','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'BPL_Fax','C','F','BPL_Fax',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:14','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:16 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54816 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:16 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68146) WHERE AD_PrintFormatItem_ID = 54816 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68146 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54816) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:19 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68144,0,50140,54817,0,TO_TIMESTAMP('2013-09-28 11:17:16','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'BPL_Phone','C','F','BPL_Phone',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:19 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54817 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:19 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68144) WHERE AD_PrintFormatItem_ID = 54817 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68144 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54817) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:20 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68145,0,50140,54818,0,TO_TIMESTAMP('2013-09-28 11:17:19','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'BPL_Phone2','C','F','BPL_Phone2',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:19','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:20 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54818 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:20 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68145) WHERE AD_PrintFormatItem_ID = 54818 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68145 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54818) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:22 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68126,0,50140,54819,0,TO_TIMESTAMP('2013-09-28 11:17:21','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Business Partner Birthday','C','F','Business Partner Birthday',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:21','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:22 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54819 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:22 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68126) WHERE AD_PrintFormatItem_ID = 54819 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68126 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54819) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:23 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68120,0,50140,54820,0,TO_TIMESTAMP('2013-09-28 11:17:22','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Business Partner Gender','C','F','Business Partner Gender',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:23 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54820 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:23 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68120) WHERE AD_PrintFormatItem_ID = 54820 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68120 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54820) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:25 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68117,0,50140,54821,0,TO_TIMESTAMP('2013-09-28 11:17:23','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Business Partner Group','C','F','BPartner Group',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:25 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54821 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:25 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68117) WHERE AD_PrintFormatItem_ID = 54821 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68117 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54821) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:27 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68136,0,50140,54822,0,TO_TIMESTAMP('2013-09-28 11:17:25','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Column Type','C','F','Column Type',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:25','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:27 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54822 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:27 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68136) WHERE AD_PrintFormatItem_ID = 54822 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68136 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54822) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:28 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68121,0,50140,54823,0,TO_TIMESTAMP('2013-09-28 11:17:27','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Contribute C.A.P.T.A.','C','F','Contribute C.A.P.T.A.',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:28 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54823 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:28 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68121) WHERE AD_PrintFormatItem_ID = 54823 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68121 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54823) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:30 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68124,0,50140,54824,0,TO_TIMESTAMP('2013-09-28 11:17:28','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Employee','C','F','Employee',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:28','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:30 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54824 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:30 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68124) WHERE AD_PrintFormatItem_ID = 54824 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68124 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54824) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:31 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68119,0,50140,54825,0,TO_TIMESTAMP('2013-09-28 11:17:30','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Employee Status','C','F','Employee Status',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:31 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54825 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:31 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68119) WHERE AD_PrintFormatItem_ID = 54825 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68119 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54825) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:33 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68129,0,50140,54826,0,TO_TIMESTAMP('2013-09-28 11:17:31','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'End Date','C','F','End Date',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:31','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:33 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54826 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:33 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68129) WHERE AD_PrintFormatItem_ID = 54826 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68129 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54826) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:34 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68122,0,50140,54827,0,TO_TIMESTAMP('2013-09-28 11:17:33','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Has Growth Plan','C','F','Has Growth Plan',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:33','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:34 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54827 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:34 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68122) WHERE AD_PrintFormatItem_ID = 54827 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68122 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54827) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:36 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68123,0,50140,54828,0,TO_TIMESTAMP('2013-09-28 11:17:34','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Is Jubilate','C','F','Is Jubilate',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:34','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:36 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54828 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:36 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68123) WHERE AD_PrintFormatItem_ID = 54828 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68123 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54828) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:37 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68125,0,50140,54829,0,TO_TIMESTAMP('2013-09-28 11:17:36','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Is Unionized','C','F','Is Unionized',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:36','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:37 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54829 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:37 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68125) WHERE AD_PrintFormatItem_ID = 54829 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68125 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54829) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:39 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68139,0,50140,54830,0,TO_TIMESTAMP('2013-09-28 11:17:37','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Max Value','C','F','Max Value',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:39 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54830 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:39 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68139) WHERE AD_PrintFormatItem_ID = 54830 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68139 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54830) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:41 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68140,0,50140,54831,0,TO_TIMESTAMP('2013-09-28 11:17:39','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Min Value','C','F','Min Value',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:39','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:41 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54831 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:41 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68140) WHERE AD_PrintFormatItem_ID = 54831 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68140 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54831) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:42 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68132,0,50140,54832,0,TO_TIMESTAMP('2013-09-28 11:17:41','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Payroll','C','F','Payroll',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:41','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:42 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54832 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:42 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68132) WHERE AD_PrintFormatItem_ID = 54832 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68132 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54832) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:44 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68135,0,50140,54833,0,TO_TIMESTAMP('2013-09-28 11:17:42','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Payroll Concept','C','F','Payroll Concept',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:44 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54833 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:44 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68135) WHERE AD_PrintFormatItem_ID = 54833 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68135 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54833) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:46 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68134,0,50140,54834,0,TO_TIMESTAMP('2013-09-28 11:17:44','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Payroll Employee Attribute','C','F','Payroll Employee Attribute',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:44','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:46 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54834 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:46 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68134) WHERE AD_PrintFormatItem_ID = 54834 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68134 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54834) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:48 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68131,0,50140,54835,0,TO_TIMESTAMP('2013-09-28 11:17:46','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Payroll Job','C','F','Payroll Job',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:48 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54835 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:48 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68131) WHERE AD_PrintFormatItem_ID = 54835 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68131 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54835) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:50 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68138,0,50140,54836,0,TO_TIMESTAMP('2013-09-28 11:17:48','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Printed','C','F','Printed',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:48','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:50 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54836 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:50 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68138) WHERE AD_PrintFormatItem_ID = 54836 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68138 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54836) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:52 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68127,0,50140,54837,0,TO_TIMESTAMP('2013-09-28 11:17:50','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Social Security Code','C','F','Social Security Code',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:52 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54837 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:52 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68127) WHERE AD_PrintFormatItem_ID = 54837 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68127 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54837) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:54 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68118,0,50140,54838,0,TO_TIMESTAMP('2013-09-28 11:17:52','YYYY-MM-DD HH24:MI:SS'),100,'B','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Tax ID','C','F','Tax ID',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:52','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:54 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54838 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:54 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68118) WHERE AD_PrintFormatItem_ID = 54838 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68118 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54838) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:55 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68141,0,50140,54839,0,TO_TIMESTAMP('2013-09-28 11:17:54','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Valid from','C','F','Valid from',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:54','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:55 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54839 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:55 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68141) WHERE AD_PrintFormatItem_ID = 54839 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68141 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54839) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:57 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68142,0,50140,54840,0,TO_TIMESTAMP('2013-09-28 11:17:55','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Valid to','C','F','Valid to',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:57 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54840 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:57 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68142) WHERE AD_PrintFormatItem_ID = 54840 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68142 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54840) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:17:58 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68133,0,50140,54841,0,TO_TIMESTAMP('2013-09-28 11:17:57','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Validation code','C','F','Validation code',0,'N',0,TO_TIMESTAMP('2013-09-28 11:17:57','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:17:58 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54841 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:17:58 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68133) WHERE AD_PrintFormatItem_ID = 54841 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68133 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54841) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:18:00 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68109,0,50140,54842,0,TO_TIMESTAMP('2013-09-28 11:17:58','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','Y','N','Y','Y','N','N','N','N','Y','N','X',1,0,0,'Organization','C','F','Organization',10,'N',1,TO_TIMESTAMP('2013-09-28 11:17:58','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:18:00 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54842 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:18:00 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68109) WHERE AD_PrintFormatItem_ID = 54842 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68109 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54842) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:18:02 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68128,0,50140,54843,0,TO_TIMESTAMP('2013-09-28 11:18:00','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'Start Date','C','F','Start Date',20,'N',0,TO_TIMESTAMP('2013-09-28 11:18:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:18:02 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54843 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:18:02 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68128) WHERE AD_PrintFormatItem_ID = 54843 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68128 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54843) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:18:03 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68130,0,50140,54844,0,TO_TIMESTAMP('2013-09-28 11:18:02','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','Y','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,120,'Payroll Department','C','F','Payroll Department',30,'N',0,TO_TIMESTAMP('2013-09-28 11:18:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:18:03 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54844 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:18:03 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68130) WHERE AD_PrintFormatItem_ID = 54844 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68130 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54844) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:18:05 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68115,0,50140,54845,0,TO_TIMESTAMP('2013-09-28 11:18:03','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','Y','N','N','Y','N','N','N','N','N','N','N','Y','N','Y','Y','N','N','N','N','N','N','X',1,0,150,'Business Partner ','C','F','Business Partner ',40,'N',0,TO_TIMESTAMP('2013-09-28 11:18:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:18:05 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54845 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:18:05 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68115) WHERE AD_PrintFormatItem_ID = 54845 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68115 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54845) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:18:06 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (1000000,68137,0,50140,54846,0,TO_TIMESTAMP('2013-09-28 11:18:05','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'Amount','C','F','Amt',50,'N',0,TO_TIMESTAMP('2013-09-28 11:18:05','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 28/09/2013 11:18:06 AM VET
-- LVE HR
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54846 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 28/09/2013 11:18:06 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68137) WHERE AD_PrintFormatItem_ID = 54846 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=68137 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 54846) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 28/09/2013 11:18:06 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54653 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54808 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54653)
;

-- 28/09/2013 11:18:06 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54664 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54809 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54664)
;

-- 28/09/2013 11:18:06 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54667 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54810 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54667)
;

-- 28/09/2013 11:18:06 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54668 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54811 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54668)
;

-- 28/09/2013 11:18:06 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54687 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54812 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54687)
;

-- 28/09/2013 11:18:06 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54688 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54813 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54688)
;

-- 28/09/2013 11:18:06 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54654 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54814 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54654)
;

-- 28/09/2013 11:18:06 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54661 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54815 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54661)
;

-- 28/09/2013 11:18:06 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54658 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54816 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54658)
;

-- 28/09/2013 11:18:06 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54659 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54817 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54659)
;

-- 28/09/2013 11:18:06 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54660 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54818 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54660)
;

-- 28/09/2013 11:18:06 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54656 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54819 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54656)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54657 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54820 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54657)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54663 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54821 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54663)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54665 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54822 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54665)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54666 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54823 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54666)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54669 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54824 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54669)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54670 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54825 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54670)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54671 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54826 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54671)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54672 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54827 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54672)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54673 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54828 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54673)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54674 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54829 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54674)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54675 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54830 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54675)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54676 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54831 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54676)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54678 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54832 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54678)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54679 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54833 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54679)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54681 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54834 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54681)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54682 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54835 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54682)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54683 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54836 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54683)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54684 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54837 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54684)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54686 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54838 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54686)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54690 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54839 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54690)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54691 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54840 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54691)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54689 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54841 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54689)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54677 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54842 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54677)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54685 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54843 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54685)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54680 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54844 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54680)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54662 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54845 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54662)
;

-- 28/09/2013 11:18:07 AM VET
-- LVE HR
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =54655 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=54846 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =54655)
;

-- 28/09/2013 11:18:30 AM VET
-- LVE HR
UPDATE AD_PrintFormat SET AD_ReportView_ID=53069, Name='Empleado (Sin Salario)',Updated=TO_TIMESTAMP('2013-09-28 11:18:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=50140
;

