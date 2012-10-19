#! /bin/bash

BACKUP_FILE=prefix_`date +%a`.sql;
USER='usuario';
PASS='passwd';
DB='db_name';


# Dump
mysqldump -u$USER -p$PASS $DB > $BACKUP_FILE;

# Gzip the .sql file
gzip -f $BACKUP_FILE;
