#!/bin/bash

a=$1
#delete from sqoop_job_event.sqoop_event_audit_log_table where EVENT_TIMESTAMP < DATE(NOW()-INTERVAL 30 DAY);
echo $a
/mysql/5.7.21/bin/mysql -S /mysql/socket/server-19.sock -uroot -pImQpz-7Y  -e "select count(*) from sqoop_job_event.sqoop_event_audit_log_table where EVENT_TIMESTAMP < DATE(NOW()-INTERVAL '$a' DAY);"

