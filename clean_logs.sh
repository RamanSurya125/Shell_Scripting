#!/bin/bash

#simple log cleaner to clean the old logs automatically
LOG_DIR="var/log/myapp"
DAYS=7

find "$LOG_DIR" -type f -mtime +$DAYS -exec rm -f {} \;

echo "Logs older than $DAYS days are deleted."

