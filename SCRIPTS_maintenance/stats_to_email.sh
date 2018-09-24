#!/bin/bash
echo "SCRIPT TO SEND SPRINT STATS"
a=$(date +%Y-%m-%d)
echo $a
mysql --user=root --password='McitNyu88' --port=3319 --socket=/data/0/mysql/socket/server-19.sock  -e "select source_table_name,  source_row_count,stage_row_count target_count, start_time,end_time,target_table_name,TARGET_DATABASE_NAME,EVENT_TIMESTAMP,ROUND(time_to_sec((TIMEDIFF(end_time, start_time))) / 60) as mins from sqoop_job_event.sqoop_event_audit_log_table where event_timestamp >='$a' AND ( TARGET_DATABASE_NAME LIKE 'MDM%' OR TARGET_DATABASE_NAME LIKE 'co%')">/home/svc_kogni/statsfolder/cogitomdm_stats_$a.csv
if [ ! -s /home/svc_kogni/statsfolder/cogitomdm_stats_$a.csv ];
then
      echo "NO STATS TO REPORT" | mailx -s " NO STATS TO REPORT FOR MDM AND COGITO"   ravi.ranjan@clairvoyantsoft.com sachin.ghalme@clairvoyantsoft.com

else
      echo "INGESTION STATS" | mailx -s "Stats for MDM and COGITO" -a "/home/svc_kogni/statsfolder/cogitomdm_stats_$a.csv"  ravi.ranjan@clairvoyantsoft.com  sachin.ghalme@clairvoyantsoft.com


fi
