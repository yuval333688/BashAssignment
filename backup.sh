#!/bin/bash

BACKUP_DIR="BACKUPIR"
mkdir -p "$BACKUP_DIR"
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"




tar --exclude="$BACKUP_DIR" -czvf "$BACKUP_FILE" -C "." .


echo "גיבוי הושלם בהצלחה: $BACKUP_FILE"
