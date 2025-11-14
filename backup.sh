#!bin/bash

#script to automate backups - logs , config files. 
SOURCE="/home/user/project"
DEST="/home/user/backup_$(date +%F_%T)"

mkdir -p "$DEST"
cp -r "$source"/* "$DEST"

echo "Backup completed at $DEST" 
