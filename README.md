# autobackup_dhis2
Description
It is recommended to use this <a href="https://github.com/bobjolliffe/dhis2-tools-ng">tool</a> for production DHIS2 systems<br>
However manually installed dhis2 can benefit from this.<br>
1. Script will backup the postgresql database<br>
2. Store daily backup in a specified directory with current date<br>
3. Copy backup to remote server (Recommended PP Key Athentication more secure instead of sshpass )<br>
   <bold>Extended</bold> <a href="https://github.com/bobjolliffe/dhis2-tools-ng/blob/master/docs/securing_base.md">Secure your server Setup Key Athentication</a><br>
4. Remove backup older than 3 days<br>
5. Change the access permission of files to user accordingly.
6. Edit crontab 54 23 * * * bash /path/of/script.sh
