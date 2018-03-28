use ${hiveconf:DB_NAME};
create TABLE ${hiveconf:TABLE_NAME} like ${hiveconf:DB_NAME}.${hiveconf:TABLE_NAME_TEXT} stored as parquet;
insert into table ${hiveconf:TABLE_NAME} select * from ${hiveconf:DB_NAME}.${hiveconf:TABLE_NAME_TEXT}; 