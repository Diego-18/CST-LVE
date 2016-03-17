-- Nov 27, 2014 10:00:08 PM VET
-- LVE EFT
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53292,0,TO_TIMESTAMP('2014-11-27 22:00:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Exceded Open Amt','I',TO_TIMESTAMP('2014-11-27 22:00:03','YYYY-MM-DD HH24:MI:SS'),100,'ExcededOpenAmt')
;

-- Nov 27, 2014 10:00:08 PM VET
-- LVE EFT
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53292 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Nov 27, 2014 10:00:27 PM VET
-- LVE EFT
UPDATE AD_Message_Trl SET MsgTip='Monto Abierto Excedido',Updated=TO_TIMESTAMP('2014-11-27 22:00:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53292 AND AD_Language='es_MX'
;

-- Nov 27, 2014 10:07:56 PM VET
-- LVE EFT
UPDATE AD_Message_Trl SET MsgText='Monto Abierto Excedido',MsgTip=NULL,Updated=TO_TIMESTAMP('2014-11-27 22:07:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53292 AND AD_Language='es_MX'
;

