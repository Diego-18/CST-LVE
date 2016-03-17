-- DROP FUNCTION dependentConcept(NUMERIC, NUMERIC, TEXT, TIMESTAMP, TIMESTAMP);
CREATE OR REPLACE FUNCTION dependentConcept(HR_Process_ID NUMERIC, C_BPartner_ID NUMERIC, ConceptValue TEXT, _From TIMESTAMP, _To TIMESTAMP)
  RETURNS text AS
$BODY$
DECLARE
	p_HR_Process_ID		NUMERIC		:= $1;
	p_C_BPartner_ID		NUMERIC		:= $2;
	p_ConceptValue		TEXT		:= $3;
	p_ValidFrom		TIMESTAMP	:= $4;
	p_ValidTo		TIMESTAMP	:= $5;
	v_Description		TEXT;
	ds			RECORD;
BEGIN
	FOR ds IN
		SELECT dc.Prefix, 
			CASE 
				WHEN COALESCE(dc.ColumnType, m.ColumnType) = 'Q' THEN CAST(ROUND(m.Qty, 2) AS TEXT) 
				WHEN COALESCE(dc.ColumnType, m.ColumnType) = 'A' THEN CAST(ROUND(m.Amount, 2) AS TEXT) 
				WHEN COALESCE(dc.ColumnType, m.ColumnType) = 'D' THEN TO_CHAR(COALESCE(m.ServiceDate, m.ValidFrom), COALESCE(dc.FormatPattern, 'DD/MM/YYYY'))
				WHEN COALESCE(dc.ColumnType, m.ColumnType) = 'T' THEN COALESCE(m.Description, '')
			END MovementValue,
			dc.Suffix
		FROM HR_Concept c
		INNER JOIN LVE_HR_DependentConcept dc ON(dc.HR_Concept_ID = c.HR_Concept_ID)
		INNER JOIN HR_Movement m ON(m.HR_Concept_ID = dc.DependentConcept_ID)
		WHERE c.Value = p_ConceptValue
		AND m.HR_Process_ID = p_HR_Process_ID
		AND (m.C_BPartner_ID = p_C_BPartner_ID OR p_C_BPartner_ID = 0)
		AND m.ValidFrom BETWEEN p_ValidFrom AND p_ValidTo
		ORDER BY dc.SeqNo, m.ValidFrom
	LOOP
		v_Description := COALESCE(v_Description, '') 
					|| COALESCE(ds.Prefix, '') 
					|| COALESCE(ds.MovementValue, '')
					|| COALESCE(ds.Suffix, '');
	END LOOP;
	RETURN v_Description;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;