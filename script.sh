#!/bin/bash
# backup_postgresql_database
# store_specified_directory

# var
BACKUP_DIRECTORY="/dir/dir/backup"

# only_for_name
DATABASE="dhis2_version"

# Date stamp (formated YYYYMMDD)
CURRENT_DATE=$(date "+%Y%m%d")

# pg_dump exclude_analytics
pg_dump <dbname> -U <user> -T "analytics*" -T "_*" | gzip > $BACKUP_DIRECTORY/$DATABASE\_$CURRENT_DATE.sql.gz

# sshpass not recommended use public private key Authentication
sshpass -p 'remote_password' scp -p 22 $BACKUP_DIRECTORY/$DATABASE\_$CURRENT_DATE.sql.gz remote_user@1.2.3.4:/dir/dir/remotstorage/

# Alternative for SSH key authentication Pre-requisite Configure SSH  (PassswordAuthentication no)
scp $BACKUP_DIRECTORY/$DATABASE\_$CURRENT_DATE.sql.gz REMOTE_USER@remote_host:/dir/dir/remotstorage/

# rm old backups older than 3 days
find $BACKUP_DIRECTORY/* -mtime +3 -exec rm {} \;
