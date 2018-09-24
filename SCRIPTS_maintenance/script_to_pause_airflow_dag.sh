#!/bin/sh
airflow list_dags > someFile.txt
#save3="$(egrep 'testprofilelimit-1-' output.txt)"
#save3="$(egrep '^[A-Z]+' someFile.txt)"
#save2=$1
save3="$(egrep "$1" someFile.txt)"
#save3="$(egrep 'test' someFile.txt)"
echo $save3
arr=$(echo $save3 | tr " " "\n")
counter=1
for x in $arr
do
    echo "++++++++++++++++++++++airflow+++++++++++++++++++++++++++++++"
    echo $counter
    ((counter++))
    save4=\"$x\"
    echo "${save4//\"}"
    #airflow pause "${save4//\"}"
    echo "airflow+++++++++++++++++++++++++++++++++++++++++++++end++++"

done


# of dags from sprint1 -

