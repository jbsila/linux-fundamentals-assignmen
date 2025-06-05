#!/bin/bash
sudo find /opt/logmanager -type f -mtime +7 -exec mv {} /opt/archive_logs \;
sudo find /opt/logmanager/ -type f -mtime +30 -exec rm {} \;
   df -h | awk 'NR>1 {print $5 " " $6}' | while read usage mount; do
     percent=$(echo "$usage" | sed 's/%//')
     if [ "$percent" -gt 80 ]; then
      echo "$(date) - WARNING: Disk usage for $mount is at $usage" >> sudo /var/tmp/log_alerts.log
     fi
   done
sudo var/tmp/log_alerts.log
