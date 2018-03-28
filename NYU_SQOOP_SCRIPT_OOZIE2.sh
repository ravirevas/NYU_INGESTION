#!/bin/sh
 

for part_id in {COVERAGE,HSP_ACCOUNT,HSP_ACCOUNT_3,PAT_ENC_HSP,PATIENT,PAT_ENC,NOTE_EDIT_TRAIL,NYU_SCPM_PHYSICIAN_DEPT,HNO_NOTE_TEXT,NOTE_ENC_INFO,HNO_INFO,HSP_TRANSACTIONS};
do
  PART_ID=$part_id
  ENDS='_TXT'
  echo "########################Starting sqoop job for table :#############################" $PART_ID  
  sqoop import -D mapreduce.map.memory.mb=4096 --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.$PART_ID --hive-import --hive-overwrite --hive-database staging_clarity --hive-table $PART_ID$ENDS 2>&1 | tee /tmp/$PART_ID.log
 if [[ $? -ne 0 ]]; then
 echo "########################################sqoop job failed for table ###################################################"$PART_ID 
 fi
    
done
