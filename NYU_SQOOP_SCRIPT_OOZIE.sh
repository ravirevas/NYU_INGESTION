#!/bin/sh
 

for part_id in {BED_CHARGE_TABLE,IP_ORDER_REC,CLARITY_MEDICATION,ORDER_MED,ED_IEV_PAT_INFO,ED_IEV_EVENT_INFO,MAR_ADMIN_INFO};
do
  PART_ID=$part_id
  ENDS='_TXT'
  echo "########################Starting sqoop job for table :#############################" $PART_ID  
  sqoop import --connect jdbc:oracle:thin:@excr1prac-scan.nyumc.org:1521/clarprd_c --username epar_read --password EiEIreZ7 --table CLARITY.$PART_ID --hive-import --hive-overwrite --hive-database staging_clarity --hive-table $PART_ID$ENDS 2>&1 | tee /tmp/$PART_ID.log
 if [[ $? -ne 0 ]]; then
 echo "########################################sqoop job failed for table ###################################################"$PART_ID 
 fi
    
done
