#!/bin/bash

# עבור כל תת-תיקייה בתיקייה הנוכחית
for dir in */; do
  if [ -d "$dir/.git" ]; then
    echo "====== status: $dir ======"
    git -C "$dir" status
    echo ""
  fi
done
