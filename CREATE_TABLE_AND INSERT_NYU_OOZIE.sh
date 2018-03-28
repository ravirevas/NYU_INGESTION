#!/bin/sh
 

for part_id in {BED_CHARGE_TABLE,IP_ORDER_REC,CLARITY_MEDICATION,ORDER_MED,ED_IEV_PAT_INFO,ED_IEV_EVENT_INFO,MAR_ADMIN_INFO};
do
  PART_ID=$part_id
  ENDS='_TEXT'
  db_name='staging_clarity'
  echo "########################creating for table :#############################" $PART_ID
  hive -hiveconf DB_NAME=$db_name -hiveconf TABLE_NAME=$PART_ID -hiveconf TABLE_NAME_TEXT=$PART_ID$ENDS -f /home/cloudera/Desktop/NYU_CREATE_TABLE_INSERT.hql  
  #create TABLE $PART_ID like bed_charge_table_text stored as parquet; 
  #insert into table bed_charge_table select * from $PART_ID$ENDS;
 if [[ $? -ne 0 ]]; then
 echo "########################################insert command  failed for table ###################################################"$PART_ID 
 fi
    
done
