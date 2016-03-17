-- 24/09/2013 04:34:10 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET Name='Contribute C.A.P.T.A.', PrintName='Contribute C.A.P.T.A.',Updated=TO_DATE('2013-09-24 16:34:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56356
;

-- 24/09/2013 04:34:10 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56356
;

-- 24/09/2013 04:34:10 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='IsCAPTA', Name='Contribute C.A.P.T.A.', Description=NULL, Help=NULL WHERE AD_Element_ID=56356
;

-- 24/09/2013 04:34:10 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='IsCAPTA', Name='Contribute C.A.P.T.A.', Description=NULL, Help=NULL, AD_Element_ID=56356 WHERE UPPER(ColumnName)='ISCAPTA' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 24/09/2013 04:34:10 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='IsCAPTA', Name='Contribute C.A.P.T.A.', Description=NULL, Help=NULL WHERE AD_Element_ID=56356 AND IsCentrallyMaintained='Y'
;

-- 24/09/2013 04:34:10 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Contribute C.A.P.T.A.', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56356) AND IsCentrallyMaintained='Y'
;

-- 24/09/2013 04:34:10 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem pi SET PrintName='Contribute C.A.P.T.A.', Name='Contribute C.A.P.T.A.' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56356)
;

-- 24/09/2013 04:34:25 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Constribuye a C.A.P.T.A.',PrintName='Constribuye a C.A.P.T.A.',Updated=TO_DATE('2013-09-24 16:34:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56356 AND AD_Language='es_MX'
;

-- 24/09/2013 04:34:57 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Plan Crecer',PrintName='Plan Crecer',Updated=TO_DATE('2013-09-24 16:34:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56357 AND AD_Language='es_MX'
;

-- 24/09/2013 04:35:36 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Sindicalizado',PrintName='Sindicalizado',Updated=TO_DATE('2013-09-24 16:35:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56358 AND AD_Language='es_MX'
;

-- 24/09/2013 04:35:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_ELEMENT_TRL (AD_Element_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Name, PrintName, Description, Help, IsTranslated) SELECT m.AD_Element_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID, m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy, m.Name, m.PrintName, m.Description, m.Help, 'N' FROM	AD_ELEMENT m, AD_LANGUAGE l WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y' AND	AD_Element_ID || AD_LANGUAGE NOT IN  (SELECT AD_Element_ID || AD_LANGUAGE FROM AD_ELEMENT_TRL)
;

-- 24/09/2013 04:35:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_COLUMN c SET		AD_Element_id = 	(SELECT AD_Element_ID FROM AD_ELEMENT e 	WHERE UPPER(c.ColumnName)=UPPER(e.ColumnName)) 	WHERE AD_Element_ID IS NULL
;

-- 24/09/2013 04:35:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE	AD_ELEMENT_TRL 	WHERE	AD_Element_ID IN 	(SELECT AD_Element_ID FROM AD_ELEMENT e  	WHERE NOT EXISTS 	(SELECT 1 FROM AD_COLUMN c WHERE UPPER(e.ColumnName)=UPPER(c.ColumnName)) 	AND NOT EXISTS 	(SELECT 1 FROM AD_PROCESS_PARA p WHERE UPPER(e.ColumnName)=UPPER(p.ColumnName)))
;

-- 24/09/2013 04:35:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE	AD_ELEMENT e 	WHERE AD_Element_ID >= 1000000 AND NOT EXISTS 	(SELECT 1 FROM AD_COLUMN c WHERE UPPER(e.ColumnName)=UPPER(c.ColumnName)) 	AND NOT EXISTS 	(SELECT 1 FROM AD_PROCESS_PARA p WHERE UPPER(e.ColumnName)=UPPER(p.ColumnName))
;

-- 24/09/2013 04:35:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
 	UPDATE AD_COLUMN c 		SET	(ColumnName, Name, Description, Help) = 	           (SELECT ColumnName, Name, Description, Help 	            FROM AD_ELEMENT e WHERE c.AD_Element_ID=e.AD_Element_ID), 			Updated = SYSDATE 	WHERE EXISTS (SELECT 1 FROM AD_ELEMENT e  				WHERE c.AD_Element_ID=e.AD_Element_ID 				  AND (c.ColumnName <> e.ColumnName OR c.Name <> e.Name  					OR NVL(c.Description,' ') <> NVL(e.Description,' ') OR NVL(c.Help,' ') <> NVL(e.Help,' ')))
;

-- 24/09/2013 04:35:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
 	UPDATE AD_FIELD f 		SET (Name, Description, Help) =  	            (SELECT e.Name, e.Description, e.Help 	            FROM AD_ELEMENT e, AD_COLUMN c 	    	    WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID), 			Updated = SYSDATE 	WHERE f.IsCentrallyMaintained='Y' AND f.IsActive='Y' 	 AND EXISTS (SELECT 1 FROM AD_ELEMENT e, AD_COLUMN c 				WHERE f.AD_Column_ID=c.AD_Column_ID 				  AND c.AD_Element_ID=e.AD_Element_ID AND c.AD_Process_ID IS NULL 				  AND (f.Name <> e.Name OR NVL(f.Description,' ') <> NVL(e.Description,' ') OR NVL(f.Help,' ') <> NVL(e.Help,' ')))
;

-- 24/09/2013 04:35:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_FIELD_TRL trl SET Name = (SELECT e.Name FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f			WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID 			  AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=trl.AD_Field_ID),	Description = (SELECT e.Description FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f			WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID 			  AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=trl.AD_Field_ID),	Help = (SELECT e.Help FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f			WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID 			  AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=trl.AD_Field_ID),	IsTranslated = (SELECT e.IsTranslated FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f			WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID 			  AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=trl.AD_Field_ID),	Updated = SYSDATE WHERE EXISTS (SELECT 1 FROM AD_FIELD f, AD_ELEMENT_TRL e, AD_COLUMN c		WHERE trl.AD_Field_ID=f.AD_Field_ID		  AND f.AD_Column_ID=c.AD_Column_ID		  AND c.AD_Element_ID=e.AD_Element_ID AND c.AD_Process_ID IS NULL		  AND trl.AD_LANGUAGE=e.AD_LANGUAGE		  AND f.IsCentrallyMaintained='Y' AND f.IsActive='Y'		  AND (trl.Name <> e.Name OR NVL(trl.Description,' ') <> NVL(e.Description,' ') OR NVL(trl.Help,' ') <> NVL(e.Help,' ')))
;

-- 24/09/2013 04:35:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_FIELD f SET Name = (SELECT e.PO_Name FROM AD_ELEMENT e, AD_COLUMN c 			WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID), 	Description = (SELECT e.PO_Description FROM AD_ELEMENT e, AD_COLUMN c 			WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID), 	Help = (SELECT e.PO_Help FROM AD_ELEMENT e, AD_COLUMN c 			WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID), 	Updated = SYSDATE WHERE f.IsCentrallyMaintained='Y' AND f.IsActive='Y' AND EXISTS (SELECT 1 FROM AD_ELEMENT e, AD_COLUMN c 		WHERE f.AD_Column_ID=c.AD_Column_ID 		  AND c.AD_Element_ID=e.AD_Element_ID AND c.AD_Process_ID IS NULL 		  AND (f.Name <> e.PO_Name OR NVL(f.Description,' ') <> NVL(e.PO_Description,' ') OR NVL(f.Help,' ') <> NVL(e.PO_Help,' ')) 		  AND e.PO_Name IS NOT NULL) AND EXISTS (SELECT 1 FROM AD_TAB t, AD_WINDOW w 		WHERE f.AD_Tab_ID=t.AD_Tab_ID 		  AND t.AD_Window_ID=w.AD_Window_ID 		  AND w.IsSOTrx='N')
;

-- 24/09/2013 04:35:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
 UPDATE AD_FIELD_TRL trl SET Name = (SELECT e.PO_Name FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f 		WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID 		  AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=trl.AD_Field_ID), Description = (SELECT e.PO_Description FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f 		WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID  		  AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=trl.AD_Field_ID), Help = (SELECT e.PO_Help FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f 		WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID 		  AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=trl.AD_Field_ID), IsTranslated = (SELECT e.IsTranslated FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f 		WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID  		  AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=trl.AD_Field_ID), Updated = SYSDATE WHERE EXISTS (SELECT 1 FROM AD_FIELD f, AD_ELEMENT_TRL e, AD_COLUMN c 	WHERE trl.AD_Field_ID=f.AD_Field_ID 	  AND f.AD_Column_ID=c.AD_Column_ID 	  AND c.AD_Element_ID=e.AD_Element_ID AND c.AD_Process_ID IS NULL 	  AND trl.AD_LANGUAGE=e.AD_LANGUAGE 	  AND f.IsCentrallyMaintained='Y' AND f.IsActive='Y' 	  AND (trl.Name <> e.PO_Name OR NVL(trl.Description,' ') <> NVL(e.PO_Description,' ') OR NVL(trl.Help,' ') <> NVL(e.PO_Help,' ')) 	  AND e.PO_Name IS NOT NULL) AND EXISTS (SELECT 1 FROM AD_FIELD f, AD_TAB t, AD_WINDOW w 	WHERE trl.AD_Field_ID=f.AD_Field_ID 	  AND f.AD_Tab_ID=t.AD_Tab_ID 	  AND t.AD_Window_ID=w.AD_Window_ID 	  AND w.IsSOTrx='N')
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_FIELD f SET Name = (SELECT p.Name FROM AD_PROCESS p, AD_COLUMN c WHERE p.AD_Process_ID=c.AD_Process_ID 			AND c.AD_Column_ID=f.AD_Column_ID), 	Description = (SELECT p.Description FROM AD_PROCESS p, AD_COLUMN c WHERE p.AD_Process_ID=c.AD_Process_ID 			AND c.AD_Column_ID=f.AD_Column_ID), 	Help = (SELECT p.Help FROM AD_PROCESS p, AD_COLUMN c WHERE p.AD_Process_ID=c.AD_Process_ID 			AND c.AD_Column_ID=f.AD_Column_ID), 	Updated = SYSDATE WHERE f.IsCentrallyMaintained='Y' AND f.IsActive='Y' AND EXISTS (SELECT 1 FROM AD_PROCESS p, AD_COLUMN c 		WHERE c.AD_Process_ID=p.AD_Process_ID AND f.AD_Column_ID=c.AD_Column_ID 		AND (f.Name<>p.Name OR NVL(f.Description,' ')<>NVL(p.Description,' ') OR NVL(f.Help,' ')<>NVL(p.Help,' ')))
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_FIELD_TRL trl SET Name = (SELECT p.Name FROM AD_PROCESS_TRL p, AD_COLUMN c, AD_FIELD f 			WHERE p.AD_Process_ID=c.AD_Process_ID AND c.AD_Column_ID=f.AD_Column_ID 			AND f.AD_Field_ID=trl.AD_Field_ID AND p.AD_LANGUAGE=trl.AD_LANGUAGE), 	Description = (SELECT p.Description FROM AD_PROCESS_TRL p, AD_COLUMN c, AD_FIELD f 			WHERE p.AD_Process_ID=c.AD_Process_ID AND c.AD_Column_ID=f.AD_Column_ID 			AND f.AD_Field_ID=trl.AD_Field_ID AND p.AD_LANGUAGE=trl.AD_LANGUAGE), 	Help = (SELECT p.Help FROM AD_PROCESS_TRL p, AD_COLUMN c, AD_FIELD f  			WHERE p.AD_Process_ID=c.AD_Process_ID AND c.AD_Column_ID=f.AD_Column_ID 			AND f.AD_Field_ID=trl.AD_Field_ID AND p.AD_LANGUAGE=trl.AD_LANGUAGE), 	IsTranslated = (SELECT p.IsTranslated FROM AD_PROCESS_TRL p, AD_COLUMN c, AD_FIELD f 			WHERE p.AD_Process_ID=c.AD_Process_ID AND c.AD_Column_ID=f.AD_Column_ID 			AND f.AD_Field_ID=trl.AD_Field_ID AND p.AD_LANGUAGE=trl.AD_LANGUAGE), 	Updated = SYSDATE WHERE EXISTS (SELECT 1 FROM AD_PROCESS_TRL p, AD_COLUMN c, AD_FIELD f 		WHERE c.AD_Process_ID=p.AD_Process_ID AND f.AD_Column_ID=c.AD_Column_ID 		AND f.AD_Field_ID=trl.AD_Field_ID AND p.AD_LANGUAGE=trl.AD_LANGUAGE 		AND f.IsCentrallyMaintained='Y' AND f.IsActive='Y' 		AND (trl.Name<>p.Name OR NVL(trl.Description,' ')<>NVL(p.Description,' ') OR NVL(trl.Help,' ')<>NVL(p.Help,' ')))
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
 	UPDATE AD_BROWSE_FIELD f 		SET (Name, Description, Help) =  	            (SELECT e.Name, e.Description, e.Help 	            FROM AD_ELEMENT e  	    	    WHERE e.AD_Element_ID=f.AD_Element_ID), 			Updated = SYSDATE 	WHERE f.IsCentrallyMaintained='Y' AND f.IsActive='Y' 	 AND EXISTS (SELECT 1 FROM AD_ELEMENT e  				  WHERE f.AD_Element_ID=e.AD_Element_ID  				  AND (f.Name <> e.Name OR NVL(f.Description,' ') <> NVL(e.Description,' ') OR NVL(f.Help,' ') <> NVL(e.Help,' ')))
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_BROWSE_FIELD_TRL trl SET Name = (SELECT e.Name FROM AD_ELEMENT_TRL e , AD_BROWSE_FIELD f			WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=f.AD_Element_ID 			 AND f.AD_Browse_Field_ID=trl.AD_Browse_Field_ID),	Description = (SELECT e.Description FROM AD_ELEMENT_TRL e, AD_BROWSE_FIELD f			WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=f.AD_Element_ID 			 AND f.AD_Browse_Field_ID=trl.AD_Browse_Field_ID),	Help = (SELECT e.Help FROM AD_ELEMENT_TRL e, AD_BROWSE_FIELD f			WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=f.AD_Element_ID 			 AND f.AD_Browse_Field_ID=trl.AD_Browse_Field_ID),	IsTranslated = (SELECT e.IsTranslated FROM AD_ELEMENT_TRL e, AD_BROWSE_FIELD f			WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=f.AD_Element_ID 			  AND f.AD_Browse_Field_ID=trl.AD_Browse_Field_ID),	Updated = SYSDATE WHERE EXISTS (SELECT 1 FROM AD_BROWSE_FIELD f, AD_ELEMENT_TRL e		WHERE trl.AD_Browse_Field_ID=f.AD_Browse_Field_ID		  AND f.AD_Element_ID=e.AD_Element_ID		  AND trl.AD_LANGUAGE=e.AD_LANGUAGE		  AND f.IsCentrallyMaintained='Y' AND f.IsActive='Y'		  AND (trl.Name <> e.Name OR NVL(trl.Description,' ') <> NVL(e.Description,' ') OR NVL(trl.Help,' ') <> NVL(e.Help,' ')))
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_PROCESS_PARA f SET	ColumnName = (SELECT e.ColumnName FROM AD_ELEMENT e 			WHERE UPPER(e.ColumnName)=UPPER(f.ColumnName)) WHERE f.IsCentrallyMaintained='Y' AND f.IsActive='Y' AND EXISTS (SELECT 1 FROM AD_ELEMENT e WHERE UPPER(e.ColumnName)=UPPER(f.ColumnName) AND e.ColumnName<>f.ColumnName)
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_PROCESS_PARA p SET	IsCentrallyMaintained = 'N' WHERE	IsCentrallyMaintained <> 'N' AND NOT EXISTS (SELECT 1 FROM AD_ELEMENT e WHERE p.ColumnName=e.ColumnName)
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PROCESS_PARA f SET Name = (SELECT e.Name FROM AD_ELEMENT e 			WHERE e.ColumnName=f.ColumnName), 	Description = (SELECT e.Description FROM AD_ELEMENT e 			WHERE e.ColumnName=f.ColumnName), 	Help = (SELECT e.Help FROM AD_ELEMENT e 			WHERE e.ColumnName=f.ColumnName), 	Updated = SYSDATE WHERE f.IsCentrallyMaintained='Y' AND f.IsActive='Y' AND EXISTS (SELECT 1 FROM AD_ELEMENT e 		WHERE e.ColumnName=f.ColumnName 		  AND (f.Name <> e.Name OR NVL(f.Description,' ') <> NVL(e.Description,' ') OR NVL(f.Help,' ') <> NVL(e.Help,' ')))
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PROCESS_PARA_TRL trl SET Name = (SELECT et.Name FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_PROCESS_PARA f 			WHERE et.AD_LANGUAGE=trl.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID 			  AND e.ColumnName=f.ColumnName AND f.AD_Process_Para_ID=trl.AD_Process_Para_ID), 	Description = (SELECT et.Description FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_PROCESS_PARA f 			WHERE et.AD_LANGUAGE=trl.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID 			  AND e.ColumnName=f.ColumnName AND f.AD_Process_Para_ID=trl.AD_Process_Para_ID), 	Help = (SELECT et.Help FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_PROCESS_PARA f 			WHERE et.AD_LANGUAGE=trl.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID 			  AND e.ColumnName=f.ColumnName AND f.AD_Process_Para_ID=trl.AD_Process_Para_ID), 	IsTranslated = (SELECT et.IsTranslated FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_PROCESS_PARA f 			WHERE et.AD_LANGUAGE=trl.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID 			  AND e.ColumnName=f.ColumnName AND f.AD_Process_Para_ID=trl.AD_Process_Para_ID), 	Updated = SYSDATE WHERE EXISTS (SELECT 1 FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_PROCESS_PARA f 			WHERE et.AD_LANGUAGE=trl.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID 			  AND e.ColumnName=f.ColumnName AND f.AD_Process_Para_ID=trl.AD_Process_Para_ID 			  AND f.IsCentrallyMaintained='Y' AND f.IsActive='Y' 			  AND (trl.Name <> et.Name OR NVL(trl.Description,' ') <> NVL(et.Description,' ') OR NVL(trl.Help,' ') <> NVL(et.Help,' ')))
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_NODE n SET Name = (SELECT w.Name FROM AD_WINDOW w 			WHERE w.AD_Window_ID=n.AD_Window_ID), 	Description = (SELECT w.Description FROM AD_WINDOW w 			WHERE w.AD_Window_ID=n.AD_Window_ID), 	Help = (SELECT w.Help FROM AD_WINDOW w 			WHERE w.AD_Window_ID=n.AD_Window_ID) WHERE n.IsCentrallyMaintained = 'Y'  AND EXISTS  (SELECT 1 FROM AD_WINDOW w 		WHERE w.AD_Window_ID=n.AD_Window_ID 		  AND (w.Name <> n.Name OR NVL(w.Description,' ') <> NVL(n.Description,' ') OR NVL(w.Help,' ') <> NVL(n.Help,' ')))
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_NODE_TRL trl SET Name = (SELECT t.Name FROM AD_WINDOW_TRL t, AD_WF_NODE n 			WHERE trl.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Window_ID=t.AD_Window_ID 			  AND trl.AD_LANGUAGE=t.AD_LANGUAGE), 	Description = (SELECT t.Description FROM AD_WINDOW_TRL t, AD_WF_NODE n 			WHERE trl.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Window_ID=t.AD_Window_ID 			  AND trl.AD_LANGUAGE=t.AD_LANGUAGE), 	Help = (SELECT t.Help FROM AD_WINDOW_TRL t, AD_WF_NODE n 			WHERE trl.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Window_ID=t.AD_Window_ID 			  AND trl.AD_LANGUAGE=t.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_WINDOW_TRL t, AD_WF_NODE n 		WHERE trl.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Window_ID=t.AD_Window_ID 		  AND trl.AD_LANGUAGE=t.AD_LANGUAGE AND n.IsCentrallyMaintained='Y' AND n.IsActive='Y' 		  AND (trl.Name <> t.Name OR NVL(trl.Description,' ') <> NVL(t.Description,' ') OR NVL(trl.Help,' ') <> NVL(t.Help,' ')))
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_NODE n SET (Name, Description, Help) = (SELECT f.Name, f.Description, f.Help 		FROM AD_FORM f 		WHERE f.AD_Form_ID=n.AD_Form_ID) WHERE n.IsCentrallyMaintained = 'Y' AND EXISTS  (SELECT 1 FROM AD_FORM f 		WHERE f.AD_Form_ID=n.AD_Form_ID 		  AND (f.Name <> n.Name OR NVL(f.Description,' ') <> NVL(n.Description,' ') OR NVL(f.Help,' ') <> NVL(n.Help,' ')))
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
 UPDATE AD_WF_NODE_TRL trl SET (Name, Description, Help) = (SELECT t.Name, t.Description, t.Help 	FROM AD_FORM_TRL t, AD_WF_NODE n 	WHERE trl.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Form_ID=t.AD_Form_ID 	  AND trl.AD_LANGUAGE=t.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_FORM_TRL t, AD_WF_NODE n 		WHERE trl.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Form_ID=t.AD_Form_ID 		  AND trl.AD_LANGUAGE=t.AD_LANGUAGE AND n.IsCentrallyMaintained='Y' AND n.IsActive='Y' 		  AND (trl.Name <> t.Name OR NVL(trl.Description,' ') <> NVL(t.Description,' ') OR NVL(trl.Help,' ') <> NVL(t.Help,' ')))
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_NODE n SET (Name, Description, Help) = (SELECT f.Name, f.Description, f.Help 		FROM AD_PROCESS f 		WHERE f.AD_Process_ID=n.AD_Process_ID) WHERE n.IsCentrallyMaintained = 'Y' AND EXISTS  (SELECT 1 FROM AD_PROCESS f 		WHERE f.AD_Process_ID=n.AD_Process_ID 		  AND (f.Name <> n.Name OR NVL(f.Description,' ') <> NVL(n.Description,' ') OR NVL(f.Help,' ') <> NVL(n.Help,' ')))
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_NODE_TRL trl SET (Name, Description, Help) = (SELECT t.Name, t.Description, t.Help FROM AD_PROCESS_TRL t, AD_WF_NODE n WHERE trl.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Process_ID=t.AD_Process_ID  AND trl.AD_LANGUAGE=t.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_PROCESS_TRL t, AD_WF_NODE n WHERE trl.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Process_ID=t.AD_Process_ID  AND trl.AD_LANGUAGE=t.AD_LANGUAGE AND n.IsCentrallyMaintained='Y' AND n.IsActive='Y'  AND (trl.Name <> t.Name OR NVL(trl.Description,' ') <> NVL(t.Description,' ') OR NVL(trl.Help,' ') <> NVL(t.Help,' ')))
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PRINTFORMATITEM pfi SET Name = (SELECT e.Name  FROM AD_ELEMENT e, AD_COLUMN c WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=pfi.AD_Column_ID) WHERE pfi.IsCentrallyMaintained='Y' AND EXISTS (SELECT 1  FROM AD_ELEMENT e, AD_COLUMN c WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=pfi.AD_Column_ID AND e.Name<>pfi.Name) AND EXISTS (SELECT 1 FROM AD_CLIENT WHERE AD_Client_ID=pfi.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PRINTFORMATITEM pfi SET PrintName = (SELECT e.PrintName  FROM AD_ELEMENT e, AD_COLUMN c WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=pfi.AD_Column_ID) WHERE pfi.IsCentrallyMaintained='Y' AND EXISTS (SELECT 1  FROM AD_ELEMENT e, AD_COLUMN c, AD_PRINTFORMAT pf WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=pfi.AD_Column_ID AND LENGTH(pfi.PrintName) > 0 AND e.PrintName<>pfi.PrintName AND pf.AD_PrintFormat_ID=pfi.AD_PrintFormat_ID AND pf.IsForm='N' AND IsTableBased='Y') AND EXISTS (SELECT 1 FROM AD_CLIENT  WHERE AD_Client_ID=pfi.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PRINTFORMATITEM_TRL trl SET PrintName = (SELECT e.PrintName FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_PRINTFORMATITEM pfi WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=pfi.AD_Column_ID AND pfi.AD_PrintFormatItem_ID=trl.AD_PrintFormatItem_ID) WHERE EXISTS (SELECT 1  FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_PRINTFORMATITEM pfi, AD_PRINTFORMAT pf WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=pfi.AD_Column_ID AND pfi.AD_PrintFormatItem_ID=trl.AD_PrintFormatItem_ID AND pfi.IsCentrallyMaintained='Y' AND LENGTH(pfi.PrintName) > 0 AND (e.PrintName<>trl.PrintName OR trl.PrintName IS NULL) AND pf.AD_PrintFormat_ID=pfi.AD_PrintFormat_ID  AND pf.IsForm='N' AND IsTableBased='Y') AND EXISTS (SELECT 1 FROM AD_CLIENT  WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PRINTFORMATITEM_TRL trl SET PrintName = (SELECT pfi.PrintName FROM AD_PRINTFORMATITEM pfi WHERE pfi.AD_PrintFormatItem_ID=trl.AD_PrintFormatItem_ID) WHERE EXISTS (SELECT 1  FROM AD_PRINTFORMATITEM pfi, AD_PRINTFORMAT pf WHERE pfi.AD_PrintFormatItem_ID=trl.AD_PrintFormatItem_ID AND pfi.IsCentrallyMaintained='Y' AND LENGTH(pfi.PrintName) > 0 AND pfi.PrintName<>trl.PrintName AND pf.AD_PrintFormat_ID=pfi.AD_PrintFormat_ID  AND pf.IsForm='N' AND pf.IsTableBased='Y') AND EXISTS (SELECT 1 FROM AD_CLIENT  WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='N')
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PRINTFORMATITEM_TRL trl SET PrintName = NULL WHERE PrintName IS NOT NULL AND EXISTS (SELECT 1 FROM AD_PRINTFORMATITEM pfi WHERE pfi.AD_PrintFormatItem_ID=trl.AD_PrintFormatItem_ID AND pfi.IsCentrallyMaintained='Y' AND (LENGTH (pfi.PrintName) = 0 OR pfi.PrintName IS NULL))
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU m SET		Name = (SELECT Name FROM AD_WINDOW w WHERE m.AD_Window_ID=w.AD_Window_ID), Description = (SELECT Description FROM AD_WINDOW w WHERE m.AD_Window_ID=w.AD_Window_ID) WHERE	m.AD_Window_ID IS NOT NULL  AND m.Action = 'W'  AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y'
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU_TRL mt SET		Name = (SELECT wt.Name FROM AD_WINDOW_TRL wt, AD_MENU m  WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Window_ID=wt.AD_Window_ID  AND mt.AD_LANGUAGE=wt.AD_LANGUAGE), Description = (SELECT wt.Description FROM AD_WINDOW_TRL wt, AD_MENU m  WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Window_ID=wt.AD_Window_ID  AND mt.AD_LANGUAGE=wt.AD_LANGUAGE), IsTranslated = (SELECT wt.IsTranslated FROM AD_WINDOW_TRL wt, AD_MENU m  WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Window_ID=wt.AD_Window_ID  AND mt.AD_LANGUAGE=wt.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_WINDOW_TRL wt, AD_MENU m  WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Window_ID=wt.AD_Window_ID  AND mt.AD_LANGUAGE=wt.AD_LANGUAGE AND m.AD_Window_ID IS NOT NULL AND m.Action = 'W' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y')
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU m SET		Name = (SELECT p.Name FROM AD_PROCESS p WHERE m.AD_Process_ID=p.AD_Process_ID), Description = (SELECT p.Description FROM AD_PROCESS p WHERE m.AD_Process_ID=p.AD_Process_ID) WHERE m.AD_Process_ID IS NOT NULL AND m.Action IN ('R', 'P') AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y'
;

-- 24/09/2013 04:35:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU_TRL mt SET		Name = (SELECT pt.Name FROM AD_PROCESS_TRL pt, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Process_ID=pt.AD_Process_ID AND mt.AD_LANGUAGE=pt.AD_LANGUAGE), Description = (SELECT pt.Description FROM AD_PROCESS_TRL pt, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Process_ID=pt.AD_Process_ID AND mt.AD_LANGUAGE=pt.AD_LANGUAGE), IsTranslated = (SELECT pt.IsTranslated FROM AD_PROCESS_TRL pt, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Process_ID=pt.AD_Process_ID AND mt.AD_LANGUAGE=pt.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_PROCESS_TRL pt, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Process_ID=pt.AD_Process_ID AND mt.AD_LANGUAGE=pt.AD_LANGUAGE AND m.AD_Process_ID IS NOT NULL AND m.Action IN ('R', 'P') AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y')
;

-- 24/09/2013 04:35:47 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU m SET		Name = (SELECT Name FROM AD_FORM f WHERE m.AD_Form_ID=f.AD_Form_ID), Description = (SELECT Description FROM AD_FORM f WHERE m.AD_Form_ID=f.AD_Form_ID) WHERE m.AD_Form_ID IS NOT NULL AND m.Action = 'X' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y'
;

-- 24/09/2013 04:35:47 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU_TRL mt SET		Name = (SELECT ft.Name FROM AD_FORM_TRL ft, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Form_ID=ft.AD_Form_ID AND mt.AD_LANGUAGE=ft.AD_LANGUAGE), Description = (SELECT ft.Description FROM AD_FORM_TRL ft, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Form_ID=ft.AD_Form_ID AND mt.AD_LANGUAGE=ft.AD_LANGUAGE), IsTranslated = (SELECT ft.IsTranslated FROM AD_FORM_TRL ft, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Form_ID=ft.AD_Form_ID AND mt.AD_LANGUAGE=ft.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_FORM_TRL ft, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Form_ID=ft.AD_Form_ID AND mt.AD_LANGUAGE=ft.AD_LANGUAGE AND m.AD_Form_ID IS NOT NULL AND m.Action = 'X' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y')
;

-- 24/09/2013 04:35:47 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU m SET		Name = (SELECT p.Name FROM AD_WORKFLOW p WHERE m.AD_Workflow_ID=p.AD_Workflow_ID), Description = (SELECT p.Description FROM AD_WORKFLOW p WHERE m.AD_Workflow_ID=p.AD_Workflow_ID) WHERE m.AD_Workflow_ID IS NOT NULL AND m.Action = 'F' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y'
;

-- 24/09/2013 04:35:47 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU_TRL mt SET		Name = (SELECT pt.Name FROM AD_WORKFLOW_TRL pt, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Workflow_ID=pt.AD_Workflow_ID AND mt.AD_LANGUAGE=pt.AD_LANGUAGE), Description = (SELECT pt.Description FROM AD_WORKFLOW_TRL pt, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Workflow_ID=pt.AD_Workflow_ID AND mt.AD_LANGUAGE=pt.AD_LANGUAGE), IsTranslated = (SELECT pt.IsTranslated FROM AD_WORKFLOW_TRL pt, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Workflow_ID=pt.AD_Workflow_ID AND mt.AD_LANGUAGE=pt.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_WORKFLOW_TRL pt, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Workflow_ID=pt.AD_Workflow_ID AND mt.AD_LANGUAGE=pt.AD_LANGUAGE AND m.AD_Workflow_ID IS NOT NULL AND m.Action = 'F' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y')
;

-- 24/09/2013 04:35:47 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU m SET		Name = (SELECT Name FROM AD_TASK f WHERE m.AD_Task_ID=f.AD_Task_ID), Description = (SELECT Description FROM AD_TASK f WHERE m.AD_Task_ID=f.AD_Task_ID) WHERE m.AD_Task_ID IS NOT NULL AND m.Action = 'T' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y'
;

-- 24/09/2013 04:35:47 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU_TRL mt SET		Name = (SELECT ft.Name FROM AD_TASK_TRL ft, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Task_ID=ft.AD_Task_ID AND mt.AD_LANGUAGE=ft.AD_LANGUAGE), Description = (SELECT ft.Description FROM AD_TASK_TRL ft, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Task_ID=ft.AD_Task_ID AND mt.AD_LANGUAGE=ft.AD_LANGUAGE), IsTranslated = (SELECT ft.IsTranslated FROM AD_TASK_TRL ft, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Task_ID=ft.AD_Task_ID AND mt.AD_LANGUAGE=ft.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_TASK_TRL ft, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Task_ID=ft.AD_Task_ID AND mt.AD_LANGUAGE=ft.AD_LANGUAGE AND m.AD_Task_ID IS NOT NULL AND m.Action = 'T' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y')
;

-- 24/09/2013 04:35:47 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_COLUMN c SET (Name,Description,Help) = (SELECT e.Name,e.Description,e.Help  FROM AD_ELEMENT e WHERE c.AD_Element_ID=e.AD_Element_ID) WHERE EXISTS  (SELECT 1 FROM AD_ELEMENT e  WHERE c.AD_Element_ID=e.AD_Element_ID AND c.Name<>e.Name)
;

-- 24/09/2013 04:35:47 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_COLUMN_TRL ct SET Name = (SELECT e.Name FROM AD_COLUMN c INNER JOIN AD_ELEMENT_TRL e ON (c.AD_Element_ID=e.AD_Element_ID) WHERE ct.AD_Column_ID=c.AD_Column_ID AND ct.AD_LANGUAGE=e.AD_LANGUAGE) WHERE EXISTS  (SELECT 1 FROM AD_COLUMN c INNER JOIN AD_ELEMENT_TRL e ON (c.AD_Element_ID=e.AD_Element_ID) WHERE ct.AD_Column_ID=c.AD_Column_ID AND ct.AD_LANGUAGE=e.AD_LANGUAGE AND ct.Name<>e.Name)
;

-- 24/09/2013 04:35:47 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TABLE t SET (Name,Description) = (SELECT e.Name,e.Description FROM AD_ELEMENT e WHERE t.TableName||'_ID'=e.ColumnName) WHERE EXISTS (SELECT 1 FROM AD_ELEMENT e WHERE t.TableName||'_ID'=e.ColumnName AND t.Name<>e.Name)
;

-- 24/09/2013 04:35:47 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TABLE_TRL tt SET Name = (SELECT e.Name  FROM AD_TABLE t INNER JOIN AD_ELEMENT ex ON (t.TableName||'_ID'=ex.ColumnName) INNER JOIN AD_ELEMENT_TRL e ON (ex.AD_Element_ID=e.AD_Element_ID) WHERE tt.AD_Table_ID=t.AD_Table_ID AND tt.AD_LANGUAGE=e.AD_LANGUAGE) WHERE EXISTS (SELECT 1  FROM AD_TABLE t INNER JOIN AD_ELEMENT ex ON (t.TableName||'_ID'=ex.ColumnName) INNER JOIN AD_ELEMENT_TRL e ON (ex.AD_Element_ID=e.AD_Element_ID) WHERE tt.AD_Table_ID=t.AD_Table_ID AND tt.AD_LANGUAGE=e.AD_LANGUAGE AND tt.Name<>e.Name)
;

-- 24/09/2013 04:35:47 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TABLE t SET (Name,Description) = (SELECT e.Name||' Trl', e.Description  FROM AD_ELEMENT e  WHERE SUBSTR(t.TableName,1,LENGTH(t.TableName)-4)||'_ID'=e.ColumnName) WHERE TableName LIKE '%_Trl' AND EXISTS (SELECT 1 FROM AD_ELEMENT e  WHERE SUBSTR(t.TableName,1,LENGTH(t.TableName)-4)||'_ID'=e.ColumnName AND t.Name<>e.Name)
;

-- 24/09/2013 04:35:47 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
 UPDATE AD_TABLE_TRL tt SET Name = (SELECT e.Name || ' **' FROM AD_TABLE t INNER JOIN AD_ELEMENT ex ON (SUBSTR(t.TableName,1,LENGTH(t.TableName)-4)||'_ID'=ex.ColumnName) INNER JOIN AD_ELEMENT_TRL e ON (ex.AD_Element_ID=e.AD_Element_ID) WHERE tt.AD_Table_ID=t.AD_Table_ID AND tt.AD_LANGUAGE=e.AD_LANGUAGE) WHERE EXISTS (SELECT 1  FROM AD_TABLE t INNER JOIN AD_ELEMENT ex ON (SUBSTR(t.TableName,1,LENGTH(t.TableName)-4)||'_ID'=ex.ColumnName) INNER JOIN AD_ELEMENT_TRL e ON (ex.AD_Element_ID=e.AD_Element_ID) WHERE tt.AD_Table_ID=t.AD_Table_ID AND tt.AD_LANGUAGE=e.AD_LANGUAGE AND t.TableName LIKE '%_Trl' AND tt.Name<>e.Name)
;

-- 24/09/2013 04:38:20 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Attachment (AD_Attachment_ID,AD_Client_ID,AD_Org_ID,AD_Table_ID,Created,CreatedBy,IsActive,Record_ID,TextMsg,Title,Updated,UpdatedBy) VALUES (1500008,0,0,284,TO_DATE('2013-09-24 16:37:49','YYYY-MM-DD HH24:MI:SS'),100,'Y',53442,NULL,'zip',TO_DATE('2013-09-24 16:37:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/09/2013 04:46:04 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52213,'HR_Process.DocStatus <> ''VO''',TO_DATE('2013-09-24 16:46:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','HR_Process not Anuled','S',TO_DATE('2013-09-24 16:46:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/09/2013 04:46:21 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52213,Updated=TO_DATE('2013-09-24 16:46:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53963
;

