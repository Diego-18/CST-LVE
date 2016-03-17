-- 2/10/2013 11:54:03 AM VET
-- CGI Anca
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsOrderBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 11:54:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55188
;

-- 2/10/2013 11:54:28 AM VET
-- CGI Anca
UPDATE AD_PrintFormatItem SET SortNo=2, XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 11:54:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55189
;

-- 2/10/2013 11:54:46 AM VET
-- CGI Anca
UPDATE AD_PrintFormatItem SET IsGroupBy='N', XPosition=0, YPosition=0,Updated=TO_DATE('2013-10-02 11:54:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=55189
;

-- 2/10/2013 12:00:38 PM VET
-- CGI Anca
UPDATE AD_Column SET ColumnSQL='CASE WHEN CategoryValue IN (''AS'',''DE'',''PR'') THEN CASE WHEN CategoryValue IN(''DE'',''PR'') THEN (Amt * -1) ELSE Amt END END',Updated=TO_DATE('2013-10-02 12:00:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68423
;

-- 2/10/2013 12:01:17 PM VET
-- CGI Anca
UPDATE AD_ReportView SET WhereClause='CategoryValue IN (''AS'',''DE'',''RE'',''PR'')',Updated=TO_DATE('2013-10-02 12:01:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53072
;

