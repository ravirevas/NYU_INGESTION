drop view  Charges.bed_charge_table;
create view Charges.bed_charge_table AS 
select 
cast(TABLE_ID               as	        BIGINT       )as	TABLE_ID                    , 
cast(CONTACT_DATE_REAL      as	        DOUBLE       )as	CONTACT_DATE_REAL           , 
cast(LINE                   as	        BIGINT		 )as	LINE                        , 
cast(CONTACT_DATE           as	        TIMESTAMP    )as	CONTACT_DATE                , 
cast(LINE_ID                as	        VARCHAR(254) )as	LINE_ID                     , 
cast(PATIENT_CLASS_C        as	        VARCHAR(66)  )as	PATIENT_CLASS_C             , 
cast(ACCOM_CODE_C           as	        VARCHAR(66)  )as	ACCOM_CODE_C                , 
cast(ACCOM_REASON_C         as	        BIGINT       )as	ACCOM_REASON_C              , 
cast(SERVICE_C              as	        VARCHAR(66)  )as	SERVICE_C                   , 
cast(DEPARTMENT_ID          as	        BIGINT		 )as	DEPARTMENT_ID               , 
cast(COST_CENTER_ID         as	        BIGINT       )as	COST_CENTER_ID              , 
cast(PROC_ID                as	        BIGINT       )as	PROC_ID                     , 
cast(LEVEL_OF_CARE_C        as	        VARCHAR(66)  )as	LEVEL_OF_CARE_C             , 
cast(ALLOW_STOP_BILL_YN     as	        VARCHAR(1)   )as	ALLOW_STOP_BILL_YN          , 
cast(LPP_ID                 as	        BIGINT       )as	LPP_ID                      , 
cast(CM_PHY_OWNER_ID        as          VARCHAR(25)  )as    CM_PHY_OWNER_ID             ,
cast(CM_LOG_OWNER_ID        as          VARCHAR(25)  )as    CM_LOG_OWNER_ID             ,
cast(LOA_REASON_C           as          BIGINT       )as    LOA_REASON_C   from staging_clarity.bed_charge_table;




drop view  Orders.IP_ORDER_REC ;
create view Orders.IP_ORDER_REC AS select 
cast(EVENT_ID             as   	     VARCHAR(18) ) as   EVENT_ID              ,
cast(LINE                 as   	     BIGINT      ) as	LINE                  ,
cast(CM_PHY_OWNER_ID      as   	     VARCHAR(25) ) as	CM_PHY_OWNER_ID       ,
cast(CM_LOG_OWNER_ID      as   	     VARCHAR(25) ) as   CM_LOG_OWNER_ID       ,
cast(RECON_ORD_ID         as   	     BIGINT      ) as	RECON_ORD_ID          ,
cast(EVENT_LINE_NUM       as   	     BIGINT      ) as	EVENT_LINE_NUM        ,
cast(REC_ACTION_C         as   	     BIGINT      ) as	REC_ACTION_C          ,
cast(REC_REORDER_ID       as   	     BIGINT      ) as	REC_REORDER_ID        ,
cast(REC_COMMENT          as   	     VARCHAR(254)) as	REC_COMMENT           ,
cast(REC_LAST_DOSE_C      as   	     BIGINT      ) as	REC_LAST_DOSE_C       ,
cast(REC_LAST_DOSE_TIME   as   	     VARCHAR(254)) as	REC_LAST_DOSE_TIME    ,
cast(DISCONTINUE_RSN_C    as   	     BIGINT      ) as	DISCONTINUE_RSN_C     ,
cast(RESUME_REASON_C      as   	     BIGINT      ) as	RESUME_REASON_C       ,
cast(STOP_TAKING_RSN_C    as   	     BIGINT	     ) as   STOP_TAKING_RSN_C     ,
cast(REMOVE_REASON_C      as   	     BIGINT	     ) as   REMOVE_REASON_C       ,
cast(CANCEL_REASON_C      as   	     BIGINT	     ) as   CANCEL_REASON_C       ,
cast(SUSPEND_RSN_C        as   	     BIGINT      ) as	SUSPEND_RSN_C         ,
cast(TAKING_BEF_ADM_C     as   	     BIGINT      ) as	TAKING_BEF_ADM_C      ,
cast(ORDREC_SORT_POC_C    as   	     BIGINT      ) as	ORDREC_SORT_POC_C     ,
cast(IP_ORDREC_REV_HRS    as   	     DOUBLE	     ) as   IP_ORDREC_REV_HRS     ,
cast(IP_ORDREC_REV_EXP_DTTM  as   	 TIMESTAMP	 ) as   IP_ORDREC_REV_EXP_DTTM  from staging_clarity.IP_ORDER_REC;




drop view  Medication.CLARITY_MEDICATION;
create view Medication.CLARITY_MEDICATION AS 
select 
cast(MEDICATION_ID          as	        BIGINT       )as	MEDICATION_ID          , 
cast(NAME                   as	        VARCHAR(255) )as	NAME                   , 
cast(THERA_CLASS_C          as	        BIGINT		 )as	THERA_CLASS_C          , 
cast(PHARM_CLASS_C          as	        BIGINT       )as	PHARM_CLASS_C          , 
cast(PHARM_SUBCLASS_C       as	        BIGINT       )as	PHARM_SUBCLASS_C       , 
cast(SIMPLE_GENERIC_C       as	        VARCHAR(66)  )as	SIMPLE_GENERIC_C       , 
cast(COST                   as	        VARCHAR(254) )as	COST                   , 
cast(GENERIC_NAME           as	        VARCHAR(200) )as	GENERIC_NAME           , 
cast(GPI                    as	        VARCHAR(192) )as	GPI                    , 
cast(STRENGTH               as	        VARCHAR(254) )as	STRENGTH               , 
cast(FORM                   as	        VARCHAR(50)  )as	FORM                   , 
cast(ROUTE                  as	        VARCHAR(50)  )as	ROUTE                  , 
cast(CONTROLLED_MED_YN      as	        VARCHAR(1)   )as	CONTROLLED_MED_YN      , 
cast(DEA_CLASS_CODE_C       as	        BIGINT       )as	DEA_CLASS_CODE_C       , 
cast(RECORD_STATE           as	        VARCHAR(50)  )as	RECORD_STATE           , 
cast(CM_PHY_OWNER_ID        as	        VARCHAR(25)  )as    CM_PHY_OWNER_ID        ,
cast(CM_LOG_OWNER_ID        as	        VARCHAR(25)  )as    CM_LOG_OWNER_ID        ,
cast(INVESTIGATL_MED_YN     as	        VARCHAR(1)   )as    INVESTIGATL_MED_YN     ,
cast(DAY_SUP_ENABLE_YN      as	        VARCHAR(1)   )as    DAY_SUP_ENABLE_YN      ,
cast(EQUIP_STATUS_YN        as	        VARCHAR(1)   )as    EQUIP_STATUS_YN        ,
cast(MED_IS_CONFIGURED_C    as	        BIGINT       )as    MED_IS_CONFIGURED_C  from staging_clarity.CLARITY_MEDICATION;




drop view  Medication.ORDER_MED;
create view Medication.ORDER_MED AS select 
cast(ORDER_MED_ID            as   	     BIGINT	     ) as  ORDER_MED_ID       ,
cast(PAT_ID                  as   	     VARCHAR(18) ) as	PAT_ID            ,
cast(PAT_ENC_DATE_REAL       as   	     DOUBLE      ) as	PAT_ENC_DATE_REAL ,
cast(PAT_ENC_CSN_ID          as   	     BIGINT      ) as	PAT_ENC_CSN_ID    ,
cast(ORDERING_DATE           as   	     TIMESTAMP   ) as	ORDERING_DATE     ,
cast(ORDER_CLASS_C           as   	     BIGINT      ) as	ORDER_CLASS_C     ,
cast(PHARMACY_ID             as   	     BIGINT      ) as	PHARMACY_ID       ,
cast(COSIGNER_USER_ID        as   	     VARCHAR(18) ) as	COSIGNER_USER_ID  ,
cast(ORD_CREATR_USER_ID      as   	     VARCHAR(18) ) as	ORD_CREATR_USER_ID    ,
cast(MEDICATION_ID           as   	     BIGINT      ) as	MEDICATION_ID         ,
cast(DESCRIPTION             as   	     VARCHAR(255)) as	DESCRIPTION           ,
cast(SIG                     as   	     VARCHAR(450)) as	SIG                   ,
cast(DOSAGE                  as   	     VARCHAR(255)) as	DOSAGE                ,
cast(QUANTITY                as   	     VARCHAR(50) ) as	QUANTITY              ,
cast(REFILLS                 as   	     VARCHAR(20) )as   REFILLS               ,
cast(START_DATE              as   	     TIMESTAMP	 ) as   START_DATE            ,
cast(END_DATE                as   	     TIMESTAMP	 ) as   END_DATE              ,
cast(DISP_AS_WRITTEN_YN      as   	     VARCHAR(1)  ) as	DISP_AS_WRITTEN_YN     ,
cast(RSN_FOR_DISCON_C        as   	     BIGINT      ) as	RSN_FOR_DISCON_C       ,
cast(MED_PRESC_PROV_ID       as   	     VARCHAR(30)  ) as	MED_PRESC_PROV_ID      ,
cast(NONFRM_XCPT_CD_C        as   	     BIGINT	      ) as   NONFRM_XCPT_CD_C       ,
cast(PANEL_MED_ID            as   	     BIGINT	      ) as   PANEL_MED_ID           ,
cast(SERV_AREA_ID            as   	     BIGINT	      ) as   SERV_AREA_ID           ,
cast(UPDATE_DATE             as   	     TIMESTAMP    ) as	UPDATE_DATE            ,
cast(ORDER_INST              as   	     TIMESTAMP	  ) as   ORDER_INST             ,
cast(DISPLAY_NAME            as   	     VARCHAR(510) ) as	DISPLAY_NAME           ,
cast(AS_MEDICATION_ID        as   	     BIGINT       ) as	AS_MEDICATION_ID       ,
cast(HV_HOSPITALIST_YN       as   	     VARCHAR(1)   ) as	HV_HOSPITALIST_YN      ,
cast(PROV_STATUS             as   	     VARCHAR(255) ) as	PROV_STATUS            ,
cast(ORDER_PRIORITY_C        as   	     BIGINT       ) as	ORDER_PRIORITY_C       ,
cast(COSIGN_AUTH_TIME        as   	     TIMESTAMP    ) as	COSIGN_AUTH_TIME       ,
cast(COSIGN_USER_ID          as   	     VARCHAR(18)  ) as	COSIGN_USER_ID         ,
cast(MED_ROUTE_C             as   	     BIGINT       ) as	MED_ROUTE_C            ,
cast(DISCON_USER_ID          as   	     VARCHAR(18)  ) as	DISCON_USER_ID         ,
cast(DISCON_TIME             as   	     TIMESTAMP    ) as	DISCON_TIME            ,
cast(CHNG_ORDER_MED_ID       as   	     BIGINT       ) as	CHNG_ORDER_MED_ID      ,
cast(PEND_APPR_USER_ID       as   	     VARCHAR(18)  ) as	PEND_APPR_USER_ID      ,
cast(PEND_APPR_FLAG          as   	     VARCHAR(255) ) as	PEND_APPR_FLAG         ,
cast(PEND_REF_REAS_C         as   	     BIGINT       ) as	PEND_REF_REAS_C        ,
cast(HV_DISCR_FREQ_ID        as   	     VARCHAR(18)  ) as	HV_DISCR_FREQ_ID        ,
cast(HV_DISCRETE_DOSE        as   	     VARCHAR(254) ) as	HV_DISCRETE_DOSE        ,
cast(HV_DOSE_UNIT_C          as   	     BIGINT       ) as	HV_DOSE_UNIT_C              ,
cast(ORDERING_MODE           as   	     VARCHAR(255)) as	ORDERING_MODE           ,
cast(HV_IS_SELF_ADM_YN       as   	     VARCHAR(1)  ) as	HV_IS_SELF_ADM_YN       ,
cast(ORDER_START_TIME        as   	     TIMESTAMP   ) as	ORDER_START_TIME        ,
cast(ORDER_END_TIME          as   	     TIMESTAMP   ) as	ORDER_END_TIME          ,
cast(HV_VERBAL_YN            as   	     VARCHAR(1)  ) as	HV_VERBAL_YN            ,
cast(HV_VERBAL_PROV_ID       as   	     VARCHAR(18) ) as	HV_VERBAL_PROV_ID        ,
cast(HV_VBL_CSG_USER_ID      as   	     VARCHAR(18) ) as	HV_VBL_CSG_USER_ID       ,
cast(HV_VBL_MSG_USER_ID      as   	     VARCHAR(18) ) as	HV_VBL_MSG_USER_ID       ,
cast(VERB_CSGN_TIME          as   	     TIMESTAMP   ) as	VERB_CSGN_TIME           ,
cast(NON_FORMULARY_YN        as   	     VARCHAR(1)  ) as	NON_FORMULARY_YN         ,
cast(CM_PHY_OWNER_ID         as   	     VARCHAR(25) ) as	CM_PHY_OWNER_ID          ,
cast(CM_LOG_OWNER_ID         as   	     VARCHAR(25) ) as	CM_LOG_OWNER_ID          ,
cast(ORDER_STATUS_C          as   	     BIGINT      ) as	ORDER_STATUS_C           ,
cast(WORKSTATION_ID          as   	     VARCHAR(18) ) as	WORKSTATION_ID           ,
cast(AUTHRZING_PROV_ID       as   	     VARCHAR(18)  ) as	AUTHRZING_PROV_ID        ,
cast(ORD_PROV_ID             as   	     VARCHAR(18)  ) as	ORD_PROV_ID              ,
cast(RX_SESSRPT_DONE_YN      as   	     VARCHAR(254) ) as	RX_SESSRPT_DONE_YN       ,
cast(MIN_DISCRETE_DOSE       as   	     DOUBLE       ) as	MIN_DISCRETE_DOSE        ,
cast(MAX_DISCRETE_DOSE       as   	     DOUBLE       ) as	MAX_DISCRETE_DOSE        ,
cast(DOSE_UNIT_C             as   	     BIGINT       ) as	DOSE_UNIT_C              ,
cast(IS_PENDING_ORD_YN       as   	     VARCHAR(254) ) as	IS_PENDING_ORD_YN        ,
cast(BULK_DISP_YN            as   	     VARCHAR(254) ) as	BULK_DISP_YN             ,
cast(PROVIDER_TYPE_C         as   	     BIGINT       ) as	PROVIDER_TYPE_C          ,
cast(PAT_LOC_ID              as   	     BIGINT       ) as	PAT_LOC_ID               ,
cast(MODIFY_TRACK_C          as   	     VARCHAR(1)   ) as	MODIFY_TRACK_C           ,
cast(SPECIFIED_FIRST_TM      as   	     TIMESTAMP    ) as	SPECIFIED_FIRST_TM       ,
cast(SCHED_START_TM          as   	     TIMESTAMP    ) as	SCHED_START_TM           ,
cast(ACT_ORDER_C             as   	     BIGINT       ) as	ACT_ORDER_C              ,
cast(PAT_CSN_ID              as   	     BIGINT       ) as	PAT_CSN_ID               ,
cast(EXP_AFT_START_DATE      as   	     TIMESTAMP    ) as	EXP_AFT_START_DATE       ,
cast(EXP_BEF_END_DATE        as   	     TIMESTAMP    ) as	EXP_BEF_END_DATE         ,
cast(MED_COMMENTS            as   	     VARCHAR(1000)) as	MED_COMMENTS              ,
cast(USER_SEL_MED_ID         as   	     BIGINT       ) as	USER_SEL_MED_ID           ,
cast(USER_SEL_ERX_DAT        as   	     TIMESTAMP    ) as	USER_SEL_ERX_DAT          ,
cast(REQ_RNVERIFY_YN         as   	     VARCHAR(1)   ) as	REQ_RNVERIFY_YN           ,
cast(MDL_ID                  as   	     BIGINT       ) as	MDL_ID                    ,
cast(LASTDOSE                as   	     VARCHAR(128) ) as	LASTDOSE                  ,
cast(INFORMANT_C             as   	     BIGINT       ) as	INFORMANT_C               ,
cast(AMB_MED_DISP_NAME       as   	     VARCHAR(254) ) as	AMB_MED_DISP_NAME          ,
cast(MRU_EVAL_RXDISP_ID      as   	     BIGINT       ) as	MRU_EVAL_RXDISP_ID         ,
cast(MRCA_EVAL_RXDISP_ID     as   	     BIGINT       ) as	MRCA_EVAL_RXDISP_ID        ,
cast(CALC_RATE_FRM_VD_YN     as   	     VARCHAR(1)   ) as	CALC_RATE_FRM_VD_YN        ,
cast(WEIGHT_BASED_YN         as   	     VARCHAR(1)   ) as	WEIGHT_BASED_YN            ,
cast(WEIGHT_REVIEW_YN        as   	     VARCHAR(1)   ) as	WEIGHT_REVIEW_YN         ,
cast(ORD_TM_WEIGHT           as   	     DOUBLE       ) as	ORD_TM_WEIGHT             ,
cast(ORDER_TIME_WT_INST      as   	     TIMESTAMP    ) as	ORDER_TIME_WT_INST         ,
cast(REVIEW_WEIGHT           as   	     DOUBLE       ) as	REVIEW_WEIGHT             ,
cast(REVIEW_WEIGHT_INST      as   	     TIMESTAMP    ) as	REVIEW_WEIGHT_INST         ,
cast(REFILLS_REMAINING       as   	     BIGINT       ) as	REFILLS_REMAINING          ,
cast(MED_REFILL_PROV_ID      as   	     VARCHAR(18)  ) as	MED_REFILL_PROV_ID         ,
cast(OLD_ORDER_ID            as   	     BIGINT       ) as	OLD_ORDER_ID               ,
cast(OLD_ORDER_DAT           as   	     VARCHAR(12)  ) as	OLD_ORDER_DAT              ,
cast(RULE_BASED_ORD_T_YN     as   	     VARCHAR(1)   ) as	RULE_BASED_ORD_T_YN        ,
cast(RESUME_STATUS_C         as   	     BIGINT       ) as	RESUME_STATUS_C            ,
cast(USER_ID_OF_PROV         as   	     VARCHAR(254) ) as	USER_ID_OF_PROV            , 
cast(LOGIN_DEP_ID            as   	     BIGINT       ) as	LOGIN_DEP_ID               ,
cast(SESSION_KEY             as   	     VARCHAR(254) ) as	SESSION_KEY                ,
cast(ORDERING_MODE_C         as   	     BIGINT       ) as	ORDERING_MODE_C            ,
cast(PEND_APPROVE_FLAG_C     as   	     BIGINT       ) as	PEND_APPROVE_FLAG_C        ,
cast(PROV_STATUS_C           as   	     BIGINT       ) as	PROV_STATUS_C              ,
cast(NF_POST_VERIF_YN        as   	     VARCHAR(1)   ) as	NF_POST_VERIF_YN           ,
cast(EXT_ELG_SOURCE_ID       as   	     VARCHAR(254) ) as	EXT_ELG_SOURCE_ID          ,
cast(EXT_ELG_MEMBER_ID       as   	     VARCHAR(254) ) as	EXT_ELG_MEMBER_ID          ,
cast(EXT_FORMULARY_ID        as   	     VARCHAR(254) ) as	EXT_FORMULARY_ID           ,
cast(EXT_COVERAGE_ID         as   	     VARCHAR(254) ) as	EXT_COVERAGE_ID            ,
cast(EXT_COPAY_ID            as   	     VARCHAR(254) ) as	EXT_COPAY_ID               ,
cast(EXT_PHARMACY_TYPE_C     as   	     BIGINT       ) as	EXT_PHARMACY_TYPE_C        ,
cast(EXT_FORMULARY_STAT      as   	     VARCHAR(10)  ) as	EXT_FORMULARY_STAT          ,
cast(EXT_COV_AGE_LMT_YN      as   	     VARCHAR(1)   ) as	EXT_COV_AGE_LMT_YN          ,
cast(EXT_COV_EXCLUS_YN       as   	     VARCHAR(1)   ) as	EXT_COV_EXCLUS_YN           ,
cast(EXT_COV_SEX_LMT_YN      as   	     VARCHAR(1)   ) as	EXT_COV_SEX_LMT_YN          ,
cast(EXT_COV_MED_NCST_YN     as   	     VARCHAR(1)   ) as	EXT_COV_MED_NCST_YN         ,
cast(EXT_COV_PRI_AUTH_YN     as   	     VARCHAR(1)   ) as	EXT_COV_PRI_AUTH_YN         ,
cast(EXT_COV_QNTY_LMT_YN     as   	     VARCHAR(1)   ) as	EXT_COV_QNTY_LMT_YN         ,
cast(EXT_COV_LNK_DRUG_YN     as   	     VARCHAR(1)   ) as	EXT_COV_LNK_DRUG_YN          ,
cast(EXT_COV_LNK_SMRY_YN     as   	     VARCHAR(1)   ) as	EXT_COV_LNK_SMRY_YN          ,
cast(EXT_COV_STEP_MED_YN     as   	     VARCHAR(1)   ) as	EXT_COV_STEP_MED_YN          ,
cast(EXT_COV_STEP_THR_YN     as   	     VARCHAR(1)   ) as	EXT_COV_STEP_THR_YN          ,
cast(EXT_COV_TEXT_MSG_YN     as   	     VARCHAR(1)   ) as	EXT_COV_TEXT_MSG_YN          ,
cast(USR_SEL_IMS_YN          as   	     VARCHAR(1)   ) as	USR_SEL_IMS_YN               ,
cast(INDICATION_COMMENTS     as   	     VARCHAR(300) ) as	INDICATION_COMMENTS          ,
cast(DOSE_ADJ_TYPE_C         as   	     BIGINT       ) as	DOSE_ADJ_TYPE_C              ,
cast(DOSE_ADJ_OVERRID_YN     as   	     VARCHAR(1)   ) as	DOSE_ADJ_OVERRID_YN          ,
cast(MAX_DOSE                as   	     DOUBLE       ) as	MAX_DOSE                     ,
cast(MAX_DOSE_UNIT_C         as   	     BIGINT       ) as	MAX_DOSE_UNIT_C              ,
cast(PRN_COMMENT             as   	     VARCHAR(450) ) as	PRN_COMMENT                  ,
cast(INST_OF_UPDATE_TM       as   	     TIMESTAMP    ) as	INST_OF_UPDATE_TM            ,
cast(PEND_ACTION_C           as   	     BIGINT       ) as	PEND_ACTION_C                ,
cast(MED_DIS_DISP_QTY        as   	     DOUBLE       ) as	MED_DIS_DISP_QTY            ,
cast(MED_DIS_DISP_UNIT_C     as   	     BIGINT       ) as	MED_DIS_DISP_UNIT_C         ,
cast(END_BEFORE_CMP_INST     as   	     TIMESTAMP    ) as	END_BEFORE_CMP_INST         ,
cast(LAST_DOSE_TIME          as   	     VARCHAR(254) ) as	LAST_DOSE_TIME              ,
cast(BSA_BASED_YN            as   	     VARCHAR(1)   ) as	BSA_BASED_YN                ,
cast(BSA_REVIEW_YN           as   	     VARCHAR(1)   ) as	BSA_REVIEW_YN               ,
cast(ORD_TM_BSA              as   	     DOUBLE       ) as	ORD_TM_BSA                  ,
cast(REVIEW_BSA              as   	     DOUBLE       ) as	REVIEW_BSA              from staging_clarity.ORDER_MED;




drop view  Emergency_Room.ED_IEV_PAT_INFO;
create view Emergency_Room.ED_IEV_PAT_INFO AS select 

cast(EVENT_ID                     as   	     VARCHAR(18)   ) as  EVENT_ID      ,
cast(RECORD_STATE_NAME            as   	     VARCHAR(8)    ) as	RECORD_STATE_NAME ,
cast(PAT_ID                       as   	     VARCHAR(18)   ) as	PAT_ID  ,
cast(EPT_DAT                      as   	     DOUBLE        ) as	EPT_DAT ,
cast(ITEMS_EDITED_TIME            as   	     TIMESTAMP     ) as	ITEMS_EDITED_TIME ,
cast(UPDATE_DATE                  as   	     TIMESTAMP     ) as	UPDATE_DATE    ,
cast(PAT_DATE_REAL                as   	     DOUBLE        ) as	PAT_DATE_REAL  ,
cast(DTE_EXTERNAL                 as   	     TIMESTAMP     ) as	DTE_EXTERNAL ,
cast(CM_PHY_OWNER_ID              as   	     VARCHAR(25)   ) as	CM_PHY_OWNER_ID ,
cast(CM_LOG_OWNER_ID              as   	     VARCHAR(25)   ) as	CM_LOG_OWNER_ID ,
cast(PAT_ENC_CSN_ID               as   	     BIGINT        ) as	PAT_ENC_CSN_ID  ,
cast(PAT_ENC_DATE_REAL            as   	     DOUBLE        ) as	PAT_ENC_DATE_REAL ,
cast(CONTACT_DATE                 as   	     TIMESTAMP     ) as	CONTACT_DATE ,
cast(DEPT_EVENT_DEP_ID            as   	     BIGINT        ) as	DEPT_EVENT_DEP_ID ,
cast(RECORD_STATE_C               as   	     BIGINT        ) as RECORD_STATE_C  ,
cast(TRANSFER_STATUS_C            as   	     BIGINT	       ) as TRANSFER_STATUS_C ,
cast(TYPE_ID                      as   	     VARCHAR(18)   ) as TYPE_ID         ,
cast(CREATE_DTTM                  as   	     TIMESTAMP     ) as	CREATE_DTTM     ,
cast(CREATE_USER_ID               as   	     VARCHAR(18)   ) as	CREATE_USER_ID  ,
cast(EVENT_DATE                   as   	     TIMESTAMP     ) as	EVENT_DATE ,
cast(PAT_CSN                      as   	     BIGINT	       ) as PAT_CSN  ,
cast(ADT_TRANSFER_LINK            as   	     BIGINT	       ) as ADT_TRANSFER_LINK          ,
cast(REG_CLIP_FREETEXT            as   	     VARCHAR(508)  ) as REG_CLIP_FREETEXT          ,
cast(REG_CLIP_LWS_ID              as   	     VARCHAR(18)   ) as	REG_CLIP_LWS_ID            ,
cast(REG_CLIP_COMMENTS            as   	     VARCHAR(508)  ) as REG_CLIP_COMMENTS          ,
cast(IP_ORDREC_SORT_DTTM          as   	     TIMESTAMP     ) as	IP_ORDREC_SORT_DTTM        ,
cast(ORD_REC_ADT_EVENT_ID         as   	     BIGINT        ) as	ORD_REC_ADT_EVENT_ID       ,
cast(ORD_REC_SUMMARY_UPDT_DTTM    as   	     TIMESTAMP     ) as	ORD_REC_SUMMARY_UPDT_DTTM  ,
cast(REG_WAIT_STATE_C             as   	     BIGINT        ) as	REG_WAIT_STATE_C    ,
cast(REG_WAIT_PAT_NAME            as   	     VARCHAR(160)  ) as	REG_WAIT_PAT_NAME   ,
cast(REG_WAIT_IS_PRI_YN           as   	     VARCHAR(1)    ) as	REG_WAIT_IS_PRI_YN  ,
cast(REG_WAIT_PAGER_ID            as   	     VARCHAR(40)   ) as	REG_WAIT_PAGER_ID   ,
cast(REG_WAIT_PAGER_NUM           as   	     VARCHAR(40)   ) as	REG_WAIT_PAGER_NUM  ,
cast(REG_WAIT_ARRV_DTTM           as   	     TIMESTAMP     ) as	REG_WAIT_ARRV_DTTM  ,
cast(ORD_REC_DISCHARGE_DISP_C     as   	     VARCHAR(66)   ) as	ORD_REC_DISCHARGE_DISP_C      from staging_clarity.ED_IEV_PAT_INFO;





drop view  Emergency_Room.ED_IEV_EVENT_INFO;
create view Emergency_Room.ED_IEV_EVENT_INFO AS select 
cast(EVENT_ID                     as   	     VARCHAR(18)   ) as  EVENT_ID      ,
cast(LINE                         as   	     BIGINT        ) as	LINE           ,
cast(EVENT_TYPE                   as   	     VARCHAR(18)   ) as	EVENT_TYPE     ,
cast(EVENT_STATUS_NAME            as   	     VARCHAR(8)    ) as	EVENT_STATUS_NAME ,
cast(EVENT_DISPLAY_NAME           as   	     VARCHAR(100)  ) as	EVENT_DISPLAY_NAME ,
cast(EVENT_TIME                   as   	     TIMESTAMP     ) as	EVENT_TIME         ,
cast(EVENT_RECORD_TIME            as   	     TIMESTAMP     ) as	EVENT_RECORD_TIME  ,
cast(EVENT_USER_ID                as   	     VARCHAR(18)   ) as	EVENT_USER_ID      ,
cast(EVENT_CMT                    as   	     VARCHAR(2000) ) as	EVENT_CMT          ,
cast(CM_PHY_OWNER_ID              as   	     VARCHAR(25)   ) as	CM_PHY_OWNER_ID    ,
cast(CM_LOG_OWNER_ID              as   	     VARCHAR(25)   ) as	CM_LOG_OWNER_ID    ,
cast(EVENT_DEPT_ID                as   	     BIGINT        ) as	EVENT_DEPT_ID      ,
cast(ADT_EVENT_ID                 as   	     BIGINT        ) as	ADT_EVENT_ID       ,
cast(STAFFED_BEDS                 as   	     BIGINT        ) as	STAFFED_BEDS       ,
cast(EVENT_KEY                    as   	     VARCHAR(254)  ) as	EVENT_KEY          ,
cast(EVENT_NOTE_ID                as   	     VARCHAR(254)  ) as EVENT_NOTE_ID      ,
cast(EVENT_FINDING_ID             as   	     BIGINT	       ) as EVENT_FINDING_ID   ,
cast(EVENT_IMPLANT_ID             as   	     VARCHAR(18)   ) as EVENT_IMPLANT_ID         ,
cast(EVENT_LINE_DATA_ID           as   	     VARCHAR(18)   ) as	EVENT_LINE_DATA_ID       ,
cast(EVENT_PROV_ID                as   	     VARCHAR(18)   ) as	EVENT_PROV_ID            ,
cast(LOCATION_ID                  as   	     BIGINT        ) as	LOCATION_ID              ,
cast(REC_PAT_LOC_ID               as   	     BIGINT	       ) as REC_PAT_LOC_ID           ,
cast(EVENT_STATUS_C               as   	     BIGINT	       ) as EVENT_STATUS_C           ,
cast(REC_VERB_ORD_TYPE_C          as   	     BIGINT        ) as REC_VERB_ORD_TYPE_C      ,
cast(REC_VRB_ORD_COMM_ID          as   	     VARCHAR(18)   ) as	REC_VRB_ORD_COMM_ID      ,
cast(REC_VRB_SIGNER_ID            as   	     VARCHAR(18)   ) as REC_VRB_SIGNER_ID        ,
cast(REC_VRB_ORD_MODE_C           as   	     BIGINT        ) as	REC_VRB_ORD_MODE_C       ,
cast(REC_ORD_PROV_ID              as   	     VARCHAR(18)   ) as	REC_ORD_PROV_ID       ,
cast(REC_PROC_AUTH_ID             as   	     VARCHAR(18)   ) as	REC_PROC_AUTH_ID    ,
cast(REC_MED_AUTH_ID              as   	     VARCHAR(18)   ) as	REC_MED_AUTH_ID     ,
cast(REC_PROC_MSG_RCP_ID          as   	     VARCHAR(18)   ) as	REC_PROC_MSG_RCP_ID  ,
cast(REC_MED_MSG_RCP_ID           as   	     VARCHAR(18)   ) as	REC_MED_MSG_RCP_ID   ,
cast(REC_IS_PROC_HOSP_YN          as   	     VARCHAR(1)    ) as	REC_IS_PROC_HOSP_YN  ,
cast(REC_IS_MED_HOSP_YN           as   	     VARCHAR(1)    ) as	REC_IS_MED_HOSP_YN  ,
cast(REC_VERB_ORD_CMT             as   	     VARCHAR(508)  ) as	REC_VERB_ORD_CMT    ,
cast(REC_ADMIT_STATUS_C           as   	     BIGINT        ) as	REC_ADMIT_STATUS_C     ,
cast(IP_REC_NOTE_ID               as   	     VARCHAR(254)  ) as	IP_REC_NOTE_ID         ,
cast(EVENT_LOG_ID                 as   	     VARCHAR(18)   ) as	EVENT_LOG_ID           ,
cast(EVENT_SUPPLY_ID              as   	     VARCHAR(18)   ) as	EVENT_SUPPLY_ID        ,
cast(EVENT_INI_RECORD_ID          as   	     VARCHAR(254)  ) as	EVENT_INI_RECORD_ID    ,
cast(EVENT_CONTEXT                as   	     VARCHAR(254)  ) as	EVENT_CONTEXT          , 
cast(SOURCE_PX_ID                 as   	     BIGINT        ) as	SOURCE_PX_ID           ,
cast(SOURCE_PX_INFO               as   	     VARCHAR(254)  ) as	SOURCE_PX_INFO         ,
cast(MATCH_PX_ID                  as   	     BIGINT        ) as	MATCH_PX_ID      ,
cast(MATCH_PX_INFO                as   	     VARCHAR(254)  ) as	MATCH_PX_INFO          ,
cast(EVENT_SIGN_OFF_ID            as   	     BIGINT        ) as	EVENT_SIGN_OFF_ID      ,
cast(EVENT_TYPE_VERSION           as   	     DOUBLE        ) as	EVENT_TYPE_VERSION     ,
cast(OB_DEL_RECORD_ID             as   	     BIGINT        ) as	OB_DEL_RECORD_ID       ,
cast(DEPT_SCORE                   as   	     DOUBLE        ) as	DEPT_SCORE      ,
cast(STAFF_ROLE_C                 as   	     VARCHAR(66)   ) as	STAFF_ROLE_C     ,
cast(STAFF_IS_ATTN_YN             as   	     VARCHAR(1)    ) as	STAFF_IS_ATTN_YN     ,
cast(LINKED_IEV_REC_ID            as   	     VARCHAR(18)   ) as	LINKED_IEV_REC_ID    ,
cast(LINKED_IEV_LINE              as   	     BIGINT        ) as	LINKED_IEV_LINE      ,
cast(EVENT_OWNER_ID               as   	     VARCHAR(18)   ) as	EVENT_OWNER_ID    ,
cast(PEND_ACTIVE_C                as   	     BIGINT        ) as	PEND_ACTIVE_C     ,
cast(PEND_STATUS_C                as   	     BIGINT        ) as	PEND_STATUS_C     ,
cast(PEND_RESTORED_BY_ID          as   	     VARCHAR(18)   ) as	PEND_RESTORED_BY_ID    ,
cast(PEND_RESTORED_DTTM           as   	     TIMESTAMP     ) as	PEND_RESTORED_DTTM     ,
cast(PEND_DELETED_BY_ID           as   	     VARCHAR(18)   ) as	PEND_DELETED_BY_ID     ,
cast(PEND_DELETED_I_DTTM          as   	     TIMESTAMP     ) as	PEND_DELETED_I_DTTM  ,
cast(PEND_COMMENT                 as   	     VARCHAR(255)  ) as	PEND_COMMENT         ,
cast(PEND_CHANGE_COUNT            as   	     BIGINT        ) as	PEND_CHANGE_COUNT    ,
cast(PEND_INSTANT_DTTM            as   	     TIMESTAMP     ) as	PEND_INSTANT_DTTM    ,
cast(EVENT_OVRIDE_RSN_C           as   	     BIGINT        ) as	EVENT_OVRIDE_RSN_C    ,
cast(PEND_CREATE_TYPE_C           as   	     BIGINT        ) as	PEND_CREATE_TYPE_C    ,
cast(EVENT_SOURCE_CSN_ID          as   	     BIGINT        ) as	EVENT_SOURCE_CSN_ID   ,
cast(EVENT_LABEL                  as   	     VARCHAR(500)  ) as	EVENT_LABEL           ,
cast(EVENT_VALUE                  as   	     VARCHAR(500)  ) as	EVENT_VALUE           ,
cast(NOTIFY_STATUS_C              as   	     BIGINT        ) as	NOTIFY_STATUS_C       ,
cast(NOTIFY_PND_STATUS_C          as   	     BIGINT        ) as	NOTIFY_PND_STATUS_C    ,
cast(FULLY_STAFF_YN               as   	     VARCHAR(1)    ) as	FULLY_STAFF_YN         ,
cast(AN_LINKED_EVENT_ID           as   	     VARCHAR(18)   ) as	AN_LINKED_EVENT_ID     ,
cast(AN_LINKED_EVENT_LINE         as   	     BIGINT        ) as AN_LINKED_EVENT_LINE     from staging_clarity.ED_IEV_EVENT_INFO;






drop view  Medication.MAR_ADMIN_INFO;
create view Medication.MAR_ADMIN_INFO AS select 
cast(ORDER_MED_ID                as 	        BIGINT      ) as 	ORDER_MED_ID        ,
cast(LINE                        as 	        BIGINT      ) as 	LINE                ,
cast(CM_PHY_OWNER_ID             as 	        VARCHAR(25) ) as 	CM_PHY_OWNER_ID     ,
cast(CM_LOG_OWNER_ID             as 	        VARCHAR(25) ) as 	CM_LOG_OWNER_ID     ,
cast(TAKEN_TIME                  as 	        TIMESTAMP   ) as 	TAKEN_TIME          ,
cast(MAR_ORIG_DUE_TM             as 	        TIMESTAMP   ) as 	MAR_ORIG_DUE_TM     ,
cast(EDITED_LINE                 as 	        BIGINT      ) as 	EDITED_LINE         ,
cast(SCHEDULED_TIME              as 	        TIMESTAMP   ) as 	SCHEDULED_TIME      ,
cast(SAVED_TIME                  as 	        TIMESTAMP   ) as 	SAVED_TIME          ,
cast(MAR_SCHD_DTTM               as 	        TIMESTAMP   ) as 	MAR_SCHD_DTTM       ,
cast(MAR_TIME_SOURCE_C           as 	        BIGINT      ) as 	MAR_TIME_SOURCE_C   ,
cast(MAR_ACTION_C                as 	        BIGINT      ) as 	MAR_ACTION_C        ,
cast(MAR_ENC_CSN                 as 	        BIGINT      ) as 	MAR_ENC_CSN         ,
cast(MAR_UNIT_NUM                as 	        VARCHAR(184)) as 	MAR_UNIT_NUM        ,
cast(USER_ID                     as 	        VARCHAR(18) ) as 	USER_ID             ,
cast(SEC_USER_ID                 as 	        VARCHAR(18) ) as 	SEC_USER_ID         ,
cast(MAR_DOC_USER_ID             as 	        VARCHAR(18) ) as 	MAR_DOC_USER_ID     ,
cast(SIG                         as 	        VARCHAR(184)) as 	SIG                 ,
cast(ROUTE_C                     as 	        BIGINT      ) as 	ROUTE_C             ,
cast(COMMENTS                    as 	        VARCHAR(1000))as 	COMMENTS            ,
cast(REASON_C                    as 	        BIGINT      ) as 	REASON_C            ,
cast(SITE_C                      as 	        BIGINT      ) as 	SITE_C              ,
cast(INFUSION_RATE               as 	        VARCHAR(184)) as 	INFUSION_RATE       ,
cast(MAR_INF_RATE_UNIT_C         as 	        BIGINT      ) as 	MAR_INF_RATE_UNIT_C ,
cast(DOSE_UNIT_C                 as 	        BIGINT      ) as 	DOSE_UNIT_C         ,
cast(MAR_DURATION                as 	        VARCHAR(184)) as 	MAR_DURATION         ,
cast(MAR_DURATION_UNIT_C         as 	        BIGINT      ) as 	MAR_DURATION_UNIT_C  ,
cast(DEVICE_ID                   as 	        VARCHAR(40) ) as 	DEVICE_ID            ,
cast(DEV_RECV_TIME               as 	        TIMESTAMP   ) as 	DEV_RECV_TIME        ,
cast(IDFY_DEV_DATA_C             as 	        BIGINT		) as    IDFY_DEV_DATA_C        ,
cast(MAR_IMM_LINK_ID             as 	        BIGINT      ) as 	MAR_IMM_LINK_ID      ,
cast(REQ_FLO_REASON_C            as 	        BIGINT      ) as 	REQ_FLO_REASON_C     ,
cast(OVRD_LINK_STATUS_C          as 	        BIGINT      ) as 	OVRD_LINK_STATUS_C   ,
cast(MAR_OVRD_LNK_USR_ID         as 	        VARCHAR(18) ) as 	MAR_OVRD_LNK_USR_ID  ,
cast(FLO_DOC_MISSING_YN          as 	        VARCHAR(1)  ) as 	FLO_DOC_MISSING_YN   ,
cast(CHART_CORR_ID               as 	        BIGINT      ) as 	CHART_CORR_ID        ,
cast(MAR_ADMIN_DEPT_ID           as 	        BIGINT      ) as 	MAR_ADMIN_DEPT_ID     ,
cast(MAR_COSIGN_COMPL_YN         as 	        VARCHAR(1)  ) as 	MAR_COSIGN_COMPL_YN   ,
cast(MAR_ORD_DAT  	             as             DOUBLE      ) as 	MAR_ORD_DAT            ,
cast(SCAN_MODE_YN                as 	        VARCHAR(1)  ) as 	SCAN_MODE_YN           ,
cast(DUE_ACTION_C                as 	        BIGINT      ) as  	DUE_ACTION_C           ,
cast(MAR_BILLING_PROV_ID         as 	        VARCHAR(18) ) as 	MAR_BILLING_PROV_ID    ,
cast(PAT_SUPPLIED_YN             as 	        VARCHAR(1)  ) as 	PAT_SUPPLIED_YN        ,
cast(MED_OVRIDE_ALERT_ID         as 	        BIGINT      ) as 	MED_OVRIDE_ALERT_ID    ,
cast(PAT_OVRIDE_ALERT_ID         as 	        BIGINT      ) as 	PAT_OVRIDE_ALERT_ID    ,
cast(PENDING_TYPE_C              as 	        BIGINT      ) as 	PENDING_TYPE_C         ,
cast(MED_OVERRIDE_COUNT          as 	        BIGINT      ) as 	MED_OVERRIDE_COUNT     ,
cast(PAT_OVERRIDE_COUNT          as 	        BIGINT      ) as 	PAT_OVERRIDE_COUNT     ,
cast(PAT_SCANCOMP_C              as 	        BIGINT      ) as 	PAT_SCANCOMP_C          ,
cast(MED_SCANCOMP_C              as 	        BIGINT      ) as  	MED_SCANCOMP_C      ,
cast(BCMA_PAT_SCANCOMP_C         as 	        BIGINT      ) as 	BCMA_PAT_SCANCOMP_C    ,
cast(BCMA_MED_SCANCOMP_C         as 	        BIGINT      ) as 	BCMA_MED_SCANCOMP_C    ,
cast(MAR_BLOOD_INFO_LN           as 	        BIGINT      ) as  	MAR_BLOOD_INFO_LN      ,
cast(WAS_TIMELY_ADMIN_C          as 	        BIGINT		) as    WAS_TIMELY_ADMIN_C      ,
cast(CLIENT_SRC_C                as 	        BIGINT      ) as 	CLIENT_SRC_C           ,
cast(SUBSEQUENT_PARENT           as 	        BIGINT      ) as 	SUBSEQUENT_PARENT       ,
cast(SUBSEQUENT_CHILDREN         as 	        BIGINT      ) as  	SUBSEQUENT_CHILDREN     ,
cast(SUBSEQUENT_INFO_DAT         as 	        BIGINT      ) as  	SUBSEQUENT_INFO_DAT     from staging_clarity.MAR_ADMIN_INFO;





































 







