#!/usr/bin/bash
counter=$(( 0 ))
for file in grep CRON /var/log/syslog 
do 
counter=$(( $counter+1 ))
done
echo $counter
