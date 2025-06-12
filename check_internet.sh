#!/bin/bash

# For Git Bash on Windows – simple ping check (no Linux-style options)

TARGET="8.8.8.8"
ping -n 1 "$TARGET" > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "[INFO] Internet is reachable ✅"
else
    echo "[ERROR] No internet connection ❌"
fi
