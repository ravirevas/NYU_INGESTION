#!/bin/sh
 

for part_id in {BED_CHARGE_TABLE,IP_ORDER_REC,CLARITY_MEDICATION,ORDER_MED,ED_IEV_PAT_INFO,ED_IEV_EVENT_INFO,MAR_ADMIN_INFO};
do
  PART_ID=$part_id
  ENDS='_TEXT'
  db_name='staging_clarity'
  echo "########################DROPPING TABLE :#############################" $PART_ID
  hive -hiveconf DB_NAME=$db_name -hiveconf TABLE_NAME=$PART_ID -f /home/ranjar03/NYU_DROP_TABLE_BEFORE_INSERT.hql  
  #DROP TABLE IF EXISTS $PART_ID
 if [[ $? -ne 0 ]]; then
 echo "########################################DROP  command  failed for table ###################################################"$PART_ID 
 fi
    
done
