--Clarity Import:

--Tables:

--CL_ICD_PX
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.CL_ICD_PX --hive-import --hive-overwrite --hive-database staging_clarity --hive-table CL_ICD_PX_TEXT > CL_ICD_PX.log 2>&1 &

--CLARITY_DEP
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.CLARITY_DEP --hive-import --hive-overwrite --hive-database staging_clarity --hive-table CLARITY_DEP_TEXT > CLARITY_DEP.log 2>&1 &

--CLARITY_EDG
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.CLARITY_EDG --hive-import --hive-overwrite --hive-database staging_clarity --hive-table CLARITY_EDG_TEXT > CLARITY_EDG.log 2>&1 &

--CLARITY_EPM_2
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.CLARITY_EPM_2 --hive-import --hive-overwrite --hive-database staging_clarity --hive-table CLARITY_EPM_2_TEXT > CLARITY_EPM_2.log 2>&1 &

--CLARITY_EPP
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.CLARITY_EPP --hive-import --hive-overwrite --hive-database staging_clarity --hive-table CLARITY_EPP_TEXT > CLARITY_EPP.log 2>&1 &

--CLARITY_SER
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.CLARITY_SER --hive-import --hive-overwrite --hive-database staging_clarity --hive-table CLARITY_SER_TEXT > CLARITY_SER_TEXT.log 2>&1 &

--CLARITY_SER_SPEC
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.CLARITY_SER_SPEC --hive-import --hive-overwrite --hive-database staging_clarity --hive-table CLARITY_SER_SPEC_TEXT > CLARITY_SER_SPEC.log 2>&1 &

--ETHNIC_BACKGROUND
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ETHNIC_BACKGROUND --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ETHNIC_BACKGROUND_TEXT > ETHNIC_BACKGROUND.log 2>&1 &

--HSP_ACCT_CVG_LIST
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.HSP_ACCT_CVG_LIST --hive-import --hive-overwrite --hive-database staging_clarity --hive-table HSP_ACCT_CVG_LIST_TEXT > HSP_ACCT_CVG_LIST.log 2>&1 &

--HSP_ACCT_DX_LIST
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.HSP_ACCT_DX_LIST --hive-import --hive-overwrite --hive-database staging_clarity --hive-table HSP_ACCT_DX_LIST_TEXT > HSP_ACCT_DX_LIST.log 2>&1 &

--HSP_ACCT_PX_LIST
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.HSP_ACCT_PX_LIST --hive-import --hive-overwrite --hive-database staging_clarity --hive-table HSP_ACCT_PX_LIST_TEXT > .log 2>&1 &

--PATIENT_RACE
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.PATIENT_RACE --hive-import --hive-overwrite --hive-database staging_clarity --hive-table PATIENT_RACE_TEXT > PATIENT_RACE.log 2>&1 &

--ZC_ACCT_CLASS_HA
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_ACCT_CLASS_HA --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_ACCT_CLASS_HA_TEXT > ZC_ACCT_CLASS_HA.log 2>&1 &

--ZC_ETHNIC_BKGRND
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_ETHNIC_BKGRND --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_ETHNIC_BKGRND_TEXT > ZC_ETHNIC_BKGRND.log 2>&1 &

--ZC_ETHNIC_GROUP
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_ETHNIC_GROUP --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_ETHNIC_GROUP_TEXT > ZC_ETHNIC_GROUP.log 2>&1 &

--ZC_FINANCIAL_CLASS
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_FINANCIAL_CLASS --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_FINANCIAL_CLASS_TEXT > ZC_FINANCIAL_CLASS.log 2>&1 &

--ZC_HOSP_ADMSN_TYPE
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_HOSP_ADMSN_TYPE --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_HOSP_ADMSN_TYPE_TEXT > ZC_HOSP_ADMSN_TYPE.log 2>&1 &

--ZC_MC_ADM_SOURCE
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_MC_ADM_SOURCE --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_MC_ADM_SOURCE_TEXT > ZC_MC_ADM_SOURCE.log 2>&1 &

--ZC_PAT_SERVICE
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_PAT_SERVICE --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_PAT_SERVICE_TEXT > ZC_PAT_SERVICE.log 2>&1 &

--ZC_MC_PAT_STATUS
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_MC_PAT_STATUS --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_MC_PAT_STATUS_TEXT > ZC_MC_PAT_STATUS.log 2>&1 &

--ZC_PATIENT_RACE
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_PATIENT_RACE --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_PATIENT_RACE_TEXT > ZC_PATIENT_RACE.log 2>&1 &

--ZC_SEX
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_SEX --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_SEX_TEXT > ZC_SEX.log 2>&1 &

--ZC_SPECIALTY
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_SPECIALTY --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_SPECIALTY_TEXT > ZC_SPECIALTY.log 2>&1 &

--ZC_ACCT_BASECLS_HA
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_ACCT_BASECLS_HA --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_ACCT_BASECLS_HA_TEXT > ZC_ACCT_BASECLS_HA.log 2>&1 &

--ZC_DX_POA
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_DX_POA --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_DX_POA_TEXT > ZC_DX_POA.log 2>&1 &

-- CLARITY_EMP
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.CLARITY_EMP --hive-import --hive-overwrite --hive-database staging_clarity --hive-table CLARITY_EMP_TEXT > CLARITY_EMP.log 2>&1 &

-- CLARITY_SER_2
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.CLARITY_SER_2 --hive-import --hive-overwrite --hive-database staging_clarity --hive-table CLARITY_SER_2_TEXT > CLARITY_SER_2.log 2>&1 &

-- IDENTITY_SER_ID  
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.IDENTITY_SER_ID --hive-import --hive-overwrite --hive-database staging_clarity --hive-table IDENTITY_SER_ID_TEXT > IDENTITY_SER_ID.log 2>&1 &

-- PROBLEM_LIST
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.PROBLEM_LIST --hive-import --hive-overwrite --hive-database staging_clarity --hive-table PROBLEM_LIST_TEXT > PROBLEM_LIST.log 2>&1 &

-- PATIENT_3 
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.PATIENT_3 --hive-import --hive-overwrite --hive-database staging_clarity --hive-table PATIENT_3_TEXT > PATIENT_3.log 2>&1 &

-- ZC_NOTE_TYPE_IP
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_NOTE_TYPE_IP --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_NOTE_TYPE_IP_TEXT > ZC_NOTE_TYPE_IP.log 2>&1 &

-- ZC_NOTE_TYPE  
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_NOTE_TYPE --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_NOTE_TYPE_TEXT > ZC_NOTE_TYPE.log 2>&1 & 

-- ZC_NOTE_SOURCE
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_NOTE_SOURCE --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_NOTE_SOURCE_TEXT > ZC_NOTE_SOURCE.log 2>&1 & 

-- FIRST_LAST_SIGN
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.FIRST_LAST_SIGN --hive-import --hive-overwrite --hive-database staging_clarity --hive-table FIRST_LAST_SIGN_TEXT > FIRST_LAST_SIGN.log 2>&1 & 

--COVERAGE
sqoop import -D mapreduce.map.memory.mb=4096 --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.COVERAGE --hive-import --hive-overwrite --hive-database staging_clarity --hive-table COVERAGE_TEXT --num-mappers 20 > COVERAGE.log 2>&1 &

--HSP_ACCOUNT
sqoop import -D mapreduce.map.memory.mb=4096 --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.HSP_ACCOUNT --hive-import --hive-overwrite --hive-database staging_clarity --hive-table HSP_ACCOUNT_TEXT --num-mappers 20 > HSP_ACCOUNT.log 2>&1 &






--HSP_ACCOUNT_3
sqoop import -D mapreduce.map.memory.mb=4096 --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.HSP_ACCOUNT_3 --hive-import --hive-overwrite --hive-database staging_clarity --hive-table HSP_ACCOUNT_3_TEXT --num-mappers 20 > HSP_ACCOUNT_3.log 2>&1 &






--PAT_ENC_HSP
sqoop import -D mapreduce.map.memory.mb=4096 --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.PAT_ENC_HSP --hive-import --hive-overwrite --hive-database staging_clarity --hive-table PAT_ENC_HSP_TEXT --num-mappers 20 > PAT_ENC_HSP.log 2>&1 &





--PATIENT
sqoop import -D mapreduce.map.memory.mb=4096 --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.PATIENT --hive-import --hive-overwrite --hive-database staging_clarity --hive-table PATIENT_TEXT --num-mappers 20 > PATIENT.log 2>&1 &

--PAT_ENC
sqoop import -D mapreduce.map.memory.mb=4096 --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.PAT_ENC --hive-import --hive-overwrite --hive-database staging_clarity --hive-table PAT_ENC_TEXT --num-mappers 20 > PAT_ENC.log 2>&1 &





-- NOTE_EDIT_TRAIL 
sqoop import -D mapreduce.map.memory.mb=4096 --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.NOTE_EDIT_TRAIL --hive-import --hive-overwrite --hive-database staging_clarity --hive-table NOTE_EDIT_TRAIL_TEXT --num-mappers 20 > NOTE_EDIT_TRAIL.log 2>&1 &






-- NYU_SCPM_PHYSICIAN_DEPT
sqoop import -D mapreduce.map.memory.mb=4096 --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.NYU_SCPM_PHYSICIAN_DEPT --hive-import --hive-overwrite --hive-database staging_clarity --hive-table NYU_SCPM_PHYSICIAN_DEPT_TEXT --num-mappers 20 > NYU_SCPM_PHYSICIAN_DEPT.log 2>&1

-- FAILED Table not found

-- HNO_NOTE_TEXT
sqoop import -D mapreduce.map.memory.mb=4096 --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.HNO_NOTE_TEXT --hive-import --hive-overwrite --hive-database staging_clarity --hive-table HNO_NOTE_TEXT_TEXT --num-mappers 20 > HNO_NOTE_TEXT.log 2>&1 &

-- WAITING AT 95% 

-- NOTE_ENC_INFO
sqoop import -D mapreduce.map.memory.mb=4096 --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.NOTE_ENC_INFO --hive-import --hive-overwrite --hive-database staging_clarity --hive-table NOTE_ENC_INFO_TEXT --num-mappers 20 > NOTE_ENC_INFO.log 2>&1 & 

-- HNO_INFO 
sqoop import -D mapreduce.map.memory.mb=4096 --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.HNO_INFO --hive-import --hive-overwrite --hive-database staging_clarity --hive-table HNO_INFO_TEXT --num-mappers 20 > HNO_INFO.log 2>&1 &

--INTERFACE_TBL_VALS
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.INTERFACE_TBL_VALS --hive-import --hive-overwrite --hive-database staging_clarity --hive-table INTERFACE_TBL_VALS_TEXT > INTERFACE_TBL_VALS.log 2>&1

--CLARITY_EPM
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.CLARITY_EPM --hive-import --hive-overwrite --hive-database staging_clarity --hive-table CLARITY_EPM_TEXT > CLARITY_EPM.log 2>&1

--ZC_COUNTRY
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_COUNTRY --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_COUNTRY_TEXT > ZC_COUNTRY.log 2>&1

--HSP_ACCT_EPTSTADDR
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.HSP_ACCT_EPTSTADDR --hive-import --hive-overwrite --hive-database staging_clarity --hive-table HSP_ACCT_EPTSTADDR_TEXT > HSP_ACCT_EPTSTADDR.log 2>&1

--ZC_ACCT_BILLSTS_HA
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_ACCT_BILLSTS_HA --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_ACCT_BILLSTS_HA_TEXT > ZC_ACCT_BILLSTS_HA.log 2>&1

--ZC_HCD_CODE_SET
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.ZC_HCD_CODE_SET --hive-import --hive-overwrite --hive-database staging_clarity --hive-table ZC_HCD_CODE_SET_TEXT > ZC_HCD_CODE_SET.log 2>&1

--HSP_TRANSACTIONS
sqoop import -D mapreduce.map.memory.mb=4096 --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.HSP_TRANSACTIONS --hive-import --hive-overwrite --hive-database staging_clarity --hive-table HSP_TRANSACTIONS_TEXT --num-mappers 20 > HSP_TRANSACTIONS.log 2>&1

--CL_UB_REV_CODE
sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.CL_UB_REV_CODE --hive-import --hive-overwrite --hive-database staging_clarity --hive-table CL_UB_REV_CODE_TEXT > CL_UB_REV_CODE.log 2>&1

--Creating parquet format tables


--HSP_TRANSACTIONS
create TABLE HSP_TRANSACTIONS like HSP_TRANSACTIONS_TEXT stored as parquet; 

insert into table HSP_TRANSACTIONS select * from ZC_HCD_CODE_SET_TEXT;

--CL_UB_REV_CODE
create TABLE CL_UB_REV_CODE like CL_UB_REV_CODE_TEXT stored as parquet; 

insert into table CL_UB_REV_CODE select * from CL_UB_REV_CODE_TEXT;

--ZC_HCD_CODE_SET
create TABLE ZC_HCD_CODE_SET like ZC_HCD_CODE_SET_TEXT stored as parquet; 

insert into table ZC_HCD_CODE_SET select * from ZC_HCD_CODE_SET_TEXT;

--INTERFACE_TBL_VALS
create TABLE INTERFACE_TBL_VALS like INTERFACE_TBL_VALS_TEXT stored as parquet; 

insert into table INTERFACE_TBL_VALS select * from INTERFACE_TBL_VALS_TEXT;

--CLARITY_EPM
create TABLE CLARITY_EPM like CLARITY_EPM_TEXT stored as parquet; 

insert into table CLARITY_EPM select * from CLARITY_EPM_TEXT;

--ZC_COUNTRY
create TABLE ZC_COUNTRY like ZC_COUNTRY_TEXT stored as parquet; 

insert into table ZC_COUNTRY select * from ZC_COUNTRY_TEXT;

--HSP_ACCT_EPTSTADDR
create TABLE HSP_ACCT_EPTSTADDR like HSP_ACCT_EPTSTADDR_TEXT stored as parquet; 

insert into table HSP_ACCT_EPTSTADDR select * from HSP_ACCT_EPTSTADDR_TEXT;

--ZC_ACCT_BILLSTS_HA
create TABLE ZC_ACCT_BILLSTS_HA like ZC_ACCT_BILLSTS_HA_TEXT stored as parquet; 

insert into table ZC_ACCT_BILLSTS_HA select * from ZC_ACCT_BILLSTS_HA_TEXT;


--CL_ICD_PX
create TABLE CL_ICD_PX like CL_ICD_PX_TEXT stored as parquet; 

insert into table CL_ICD_PX select * from CL_ICD_PX_TEXT; 

--CLARITY_DEP
create TABLE CLARITY_DEP like CLARITY_DEP_TEXT stored as parquet; 

insert into table CLARITY_DEP select * from CLARITY_DEP_TEXT; 

--CLARITY_EDG
create TABLE CLARITY_EDG like CLARITY_EDG_TEXT stored as parquet; 

insert into table CLARITY_EDG select * from CLARITY_EDG_TEXT; 

--CLARITY_EPM_2
create TABLE CLARITY_EPM_2 like CLARITY_EPM_2_TEXT stored as parquet; 

insert into table CLARITY_EPM_2 select * from CLARITY_EPM_2_TEXT; 

--CLARITY_EPP
create TABLE CLARITY_EPP like CLARITY_EPP_TEXT stored as parquet; 

insert into table CLARITY_EPP select * from CLARITY_EPP_TEXT; 

--CLARITY_SER
create TABLE CLARITY_SER like CLARITY_SER_TEXT stored as parquet; 

insert into table CLARITY_SER select * from CLARITY_SER_TEXT; 

--CLARITY_SER_SPEC
create TABLE CLARITY_SER_SPEC like CLARITY_SER_SPEC_TEXT stored as parquet; 

insert into table CLARITY_SER_SPEC select * from CLARITY_SER_SPEC_TEXT; 

--ETHNIC_BACKGROUND
create TABLE ETHNIC_BACKGROUND like ETHNIC_BACKGROUND_TEXT stored as parquet; 

insert into table ETHNIC_BACKGROUND select * from ETHNIC_BACKGROUND_TEXT; 

--HSP_ACCT_CVG_LIST
create TABLE HSP_ACCT_CVG_LIST like HSP_ACCT_CVG_LIST_TEXT stored as parquet; 

insert into table HSP_ACCT_CVG_LIST select * from HSP_ACCT_CVG_LIST_TEXT; 

--HSP_ACCT_DX_LIST
create TABLE HSP_ACCT_DX_LIST like HSP_ACCT_DX_LIST_TEXT stored as parquet; 

insert into table HSP_ACCT_DX_LIST select * from HSP_ACCT_DX_LIST_TEXT; 

--HSP_ACCT_PX_LIST
create TABLE HSP_ACCT_PX_LIST like HSP_ACCT_PX_LIST_TEXT stored as parquet; 

insert into table HSP_ACCT_PX_LIST select * from HSP_ACCT_PX_LIST_TEXT; 

--PATIENT_RACE
create TABLE PATIENT_RACE like PATIENT_RACE_TEXT stored as parquet; 

insert into table PATIENT_RACE select * from PATIENT_RACE_TEXT; 

--ZC_ACCT_CLASS_HA
create TABLE ZC_ACCT_CLASS_HA like ZC_ACCT_CLASS_HA_TEXT stored as parquet; 

insert into table ZC_ACCT_CLASS_HA select * from ZC_ACCT_CLASS_HA_TEXT; 

--ZC_ETHNIC_BKGRND
create TABLE ZC_ETHNIC_BKGRND like ZC_ETHNIC_BKGRND_TEXT stored as parquet; 

insert into table ZC_ETHNIC_BKGRND select * from ZC_ETHNIC_BKGRND_TEXT; 

--ZC_ETHNIC_GROUP
create TABLE ZC_ETHNIC_GROUP like ZC_ETHNIC_GROUP_TEXT stored as parquet; 

insert into table ZC_ETHNIC_GROUP select * from ZC_ETHNIC_GROUP_TEXT; 


--ZC_FINANCIAL_CLASS
create TABLE ZC_FINANCIAL_CLASS like ZC_FINANCIAL_CLASS_TEXT stored as parquet; 

insert into table ZC_FINANCIAL_CLASS select * from ZC_FINANCIAL_CLASS_TEXT; 


--ZC_HOSP_ADMSN_TYPE
create TABLE ZC_HOSP_ADMSN_TYPE like ZC_HOSP_ADMSN_TYPE_TEXT stored as parquet; 

insert into table ZC_HOSP_ADMSN_TYPE select * from ZC_HOSP_ADMSN_TYPE_TEXT; 


--ZC_MC_ADM_SOURCE
create TABLE ZC_MC_ADM_SOURCE like ZC_MC_ADM_SOURCE_TEXT stored as parquet; 

insert into table ZC_MC_ADM_SOURCE select * from ZC_MC_ADM_SOURCE_TEXT; 


--ZC_PAT_SERVICE
create TABLE ZC_PAT_SERVICE like ZC_PAT_SERVICE_TEXT stored as parquet; 

insert into table ZC_PAT_SERVICE select * from ZC_PAT_SERVICE_TEXT; 

--ZC_MC_PAT_STATUS
create TABLE ZC_MC_PAT_STATUS like ZC_MC_PAT_STATUS_TEXT stored as parquet; 

insert into table ZC_MC_PAT_STATUS select * from ZC_MC_PAT_STATUS_TEXT; 

--ZC_PATIENT_RACE
create TABLE ZC_PATIENT_RACE like ZC_PATIENT_RACE_TEXT stored as parquet; 

insert into table ZC_PATIENT_RACE select * from ZC_PATIENT_RACE_TEXT;

--ZC_SEX
create TABLE ZC_SEX like ZC_SEX_TEXT stored as parquet; 

insert into table ZC_SEX select * from ZC_SEX_TEXT;

--ZC_SPECIALTY
create TABLE ZC_SPECIALTY like ZC_SPECIALTY_TEXT stored as parquet; 

insert into table ZC_SPECIALTY select * from ZC_SPECIALTY_TEXT;

--ZC_ACCT_BASECLS_HA
create TABLE ZC_ACCT_BASECLS_HA like ZC_ACCT_BASECLS_HA_TEXT stored as parquet; 

insert into table ZC_ACCT_BASECLS_HA select * from ZC_ACCT_BASECLS_HA_TEXT;

--ZC_DX_POA
create TABLE ZC_DX_POA like ZC_DX_POA_TEXT stored as parquet; 

insert into table ZC_DX_POA select * from ZC_DX_POA_TEXT;

-- CLARITY_EMP
create TABLE CLARITY_EMP like CLARITY_EMP_TEXT stored as parquet; 

insert into table CLARITY_EMP select * from CLARITY_EMP_TEXT;

-- CLARITY_SER_2
create TABLE CLARITY_SER_2 like CLARITY_SER_2_TEXT stored as parquet; 

insert into table CLARITY_SER_2 select * from CLARITY_SER_2_TEXT;

-- IDENTITY_SER_ID
create TABLE IDENTITY_SER_ID like IDENTITY_SER_ID_TEXT stored as parquet; 

insert into table IDENTITY_SER_ID select * from IDENTITY_SER_ID_TEXT;

-- PROBLEM_LIST
create TABLE PROBLEM_LIST like PROBLEM_LIST_TEXT stored as parquet; 

insert into table PROBLEM_LIST select * from PROBLEM_LIST_TEXT;
        
-- PATIENT_3
create TABLE PATIENT_3 like PATIENT_3_TEXT stored as parquet; 

insert into table PATIENT_3 select * from PATIENT_3_TEXT;

-- ZC_NOTE_TYPE_IP
create TABLE ZC_NOTE_TYPE_IP like ZC_NOTE_TYPE_IP_TEXT stored as parquet; 

insert into table ZC_NOTE_TYPE_IP select * from ZC_NOTE_TYPE_IP_TEXT;

-- ZC_NOTE_TYPE
create TABLE ZC_NOTE_TYPE like ZC_NOTE_TYPE_TEXT stored as parquet; 

insert into table ZC_NOTE_TYPE select * from ZC_NOTE_TYPE_TEXT;

-- ZC_NOTE_SOURCE
create TABLE ZC_NOTE_SOURCE like ZC_NOTE_SOURCE_TEXT stored as parquet; 

insert into table ZC_NOTE_SOURCE select * from ZC_NOTE_SOURCE_TEXT;

-- FIRST_LAST_SIGN
create TABLE FIRST_LAST_SIGN like FIRST_LAST_SIGN_TEXT stored as parquet; 

insert into table FIRST_LAST_SIGN select * from FIRST_LAST_SIGN_TEXT;

--COVERAGE
create TABLE COVERAGE like COVERAGE_TEXT stored as parquet; 

insert into table COVERAGE select * from COVERAGE_TEXT;

--HSP_ACCOUNT
create TABLE HSP_ACCOUNT like HSP_ACCOUNT_TEXT stored as parquet; 

insert into table HSP_ACCOUNT select * from HSP_ACCOUNT_TEXT;

--HSP_ACCOUNT_3
create TABLE HSP_ACCOUNT_3 like HSP_ACCOUNT_3_TEXT stored as parquet; 

insert into table HSP_ACCOUNT_3 select * from HSP_ACCOUNT_3_TEXT;

--PAT_ENC_HSP
create TABLE PAT_ENC_HSP like PAT_ENC_HSP_TEXT stored as parquet; 

insert into table PAT_ENC_HSP select * from PAT_ENC_HSP_TEXT;

--PATIENT
create TABLE PATIENT like PATIENT_TEXT stored as parquet; 

insert into table PATIENT select * from PATIENT_TEXT;

--PAT_ENC
create TABLE PAT_ENC like PAT_ENC_TEXT stored as parquet; 

insert into table PAT_ENC select * from PAT_ENC_TEXT;

-- NOTE_EDIT_TRAIL
create TABLE NOTE_EDIT_TRAIL like NOTE_EDIT_TRAIL_TEXT stored as parquet; 

insert into table NOTE_EDIT_TRAIL select * from NOTE_EDIT_TRAIL_TEXT;

-- NYU_SCPM_PHYSICIAN_DEPT
create TABLE NYU_SCPM_PHYSICIAN_DEPT like NYU_SCPM_PHYSICIAN_DEPT_TEXT stored as parquet; 

insert into table NYU_SCPM_PHYSICIAN_DEPT select * from NYU_SCPM_PHYSICIAN_DEPT_TEXT;
-- FAILED Table not found
 
-- HNO_NOTE_TEXT
create TABLE HNO_NOTE_TEXT like HNO_NOTE_TEXT_TEXT stored as parquet; 

insert into table HNO_NOTE_TEXT select * from HNO_NOTE_TEXT_TEXT;
-- WAITING AT 95%
   
-- NOTE_ENC_INFO
create TABLE NOTE_ENC_INFO like NOTE_ENC_INFO_TEXT stored as parquet; 

insert into table NOTE_ENC_INFO select * from NOTE_ENC_INFO_TEXT;  

-- HNO_INFO
create TABLE HNO_INFO like HNO_INFO_TEXT stored as parquet; 

insert into table HNO_INFO select * from HNO_INFO_TEXT;

--Creating Views (follow the Success_View_Creation.txt instead):

create view procedures.CL_ICD_PX AS select * from staging_clarity.CL_ICD_PX; 
create view encounters.CLARITY_DEP AS select * from staging_clarity.CLARITY_DEP;
create view diagnoses.CLARITY_EDG AS select * from staging_clarity.CLARITY_EDG;
create view insurance.CLARITY_EPM_2 AS select * from staging_clarity.CLARITY_EPM_2;
create view insurance.CLARITY_EPP AS select * from staging_clarity.CLARITY_EPP;
create view providers.CLARITY_SER AS select * from staging_clarity.CLARITY_SER;
create view providers.CLARITY_SER_SPEC AS select * from staging_clarity.CLARITY_SER_SPEC;
create view insurance.COVERAGE AS select * from staging_clarity.COVERAGE;
create view patients.ETHNIC_BACKGROUND AS select * from staging_clarity.ETHNIC_BACKGROUND;
create view patients.HSP_ACCOUNT AS select * from staging_clarity.HSP_ACCOUNT;
create view patients.HSP_ACCOUNT_3 AS select * from staging_clarity.HSP_ACCOUNT_3;
create view insurance.HSP_ACCT_CVG_LIST AS select * from staging_clarity.HSP_ACCT_CVG_LIST;
create view diagnoses.HSP_ACCT_DX_LIST AS select * from staging_clarity.HSP_ACCT_DX_LIST;
create view procedures.HSP_ACCT_PX_LIST AS select * from staging_clarity.HSP_ACCT_PX_LIST;
create view encounters.PAT_ENC_HSP AS select * from staging_clarity.PAT_ENC_HSP;
create view patients.PATIENT AS select * from staging_clarity.PATIENT;
create view patients.PATIENT_RACE AS select * from staging_clarity.PATIENT_RACE;
create view clarity_reference.ZC_ACCT_CLASS_HA AS select * from staging_clarity.ZC_ACCT_CLASS_HA;
create view clarity_reference.ZC_ETHNIC_BKGRND AS select * from staging_clarity.ZC_ETHNIC_BKGRND;
create view clarity_reference.ZC_ETHNIC_GROUP AS select * from staging_clarity.ZC_ETHNIC_GROUP;
create view clarity_reference.ZC_FINANCIAL_CLASS AS select * from staging_clarity.ZC_FINANCIAL_CLASS;
create view clarity_reference.ZC_HOSP_ADMSN_TYPE AS select * from staging_clarity.ZC_HOSP_ADMSN_TYPE;
create view clarity_reference.ZC_MC_ADM_SOURCE AS select * from staging_clarity.ZC_MC_ADM_SOURCE;
create view clarity_reference.ZC_PAT_SERVICE AS select * from staging_clarity.ZC_PAT_SERVICE;
create view clarity_reference.ZC_MC_PAT_STATUS AS select * from staging_clarity.ZC_MC_PAT_STATUS;
create view clarity_reference.ZC_PATIENT_RACE AS select * from staging_clarity.ZC_PATIENT_RACE;
create view clarity_reference.ZC_SEX AS select * from staging_clarity.ZC_SEX;
create view clarity_reference.ZC_SPECIALTY AS select * from staging_clarity.ZC_SPECIALTY;
create view clarity_reference.ZC_ACCT_BASECLS_HA AS select * from staging_clarity.ZC_ACCT_BASECLS_HA;
create view clarity_reference.ZC_DX_POA AS select * from staging_clarity.ZC_DX_POA;
create view clarity_reference.PAT_ENC AS select * from staging_clarity.PAT_ENC;




