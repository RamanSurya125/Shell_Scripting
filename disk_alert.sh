#!/bin/bash

THRESHOLD=80 

USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')    #Disk usage alert script. 

if [ "$USAGE" -gt "$THRESHOLD"]; then
echo "Warning! Disk usage is above $THRESHOLD%. Current: $USAGE%"
else
echo "Disk usage is normal: $USAGE%"
fi 

