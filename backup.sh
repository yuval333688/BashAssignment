#!/bin/bash

SOURCE_DIR="/"

BACKUP_FILE="/backup/backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"

tar -czvf "$BACKUP_FILE" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"

echo "גיבוי הושלם בהצלחה: $BACKUP_FILE"
