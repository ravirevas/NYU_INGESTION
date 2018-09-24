#!/bin/bash
PROCESS_FOUND1=$(ps -ef|grep airflow|grep scheduler)
PROCESS_FOUND2=$(ps -ef|grep airflow|grep master|grep webserver)
PROCESS_FOUND3=$(ps -ef|grep airflow|grep kerberos)
PROCESS_FOUND4=$(ps -ef|grep celery)
PROCESS_FOUND5=$(ps -ef|grep kariba)
sentence=""
sentence1=airflow_scheduler,
sentence2=airflow_webserver,
sentence3=airflow_kerberos,
sentence4=airflow_celery,
sentence5=kogni
schedule=$1
if [[ ! -z "$PROCESS_FOUND1" ]];then

   sentence1=""
   
fi



if [[ ! -z "$PROCESS_FOUND2" ]];then
   
    sentence2=""

fi



if [[ ! -z "$PROCESS_FOUND3" ]];then
   
    sentence3=""

fi

if [[ ! -z "$PROCESS_FOUND4" ]];then
   
    sentence4=""

fi



if [[ ! -z "$PROCESS_FOUND5" ]];then

    sentence5=""

fi


space=" "
sentence=$sentence1$space$sentence2$space$sentence3$space$sentence4$space$sentence5


echo $sentence


if [[ ! -z "$PROCESS_FOUND5" ]];then
   sentence=$(echo $sentence | rev | sed 's/,/ /' | rev)

fi

if [  -z "$PROCESS_FOUND1" ]  || [ -z "$PROCESS_FOUND2" ] || [ -z "$PROCESS_FOUND3" ]  || [ -z "$PROCESS_FOUND4" ] ||  [ -z "$PROCESS_FOUND5" ];
then
     
    
     echo " $sentence is down" | mail -s"hey something went wrong please contact sachin"  ravi.ranjan@clairvoyantsoft.com sachin.ghalme@clairvoyantsoft.com
else
   
   echo "Environement is Good as  both  kogni and airflow are running fine " | mail -s" $schedule ingestion is about to start " ravi.ranjan@clairvoyantsoft.com sachin.ghalme@clairvoyantsoft.com

fi
 
