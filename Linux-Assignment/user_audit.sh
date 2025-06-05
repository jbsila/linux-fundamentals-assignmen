#!/bin/bash
awk -F: '$3 >= 1000 {print $1}' /etc/passwd
getent group sudo | awk -F: '{print $4}' | tr ',' '\n' | while read user; do
     if [[ -n "$user" ]]; then
       echo "$user has sudo access"
     fi
   done
last -s "$(date -d '24 hours ago' '+%Y-%m-%d %H:%M:%S')"
