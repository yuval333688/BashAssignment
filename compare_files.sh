#!/bin/bash

# צבעים
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # ללא צבע

# בדוק אם יש בדיוק שני קבצים
if [ $# -ne 2 ]; then
    echo -e "${RED}❌ שימוש: $0 <קובץ1> <קובץ2>${NC}"
    exit 1
fi

FILE1="$1"
FILE2="$2"

# בדוק אם הקבצים קיימים
if [ ! -f "$FILE1" ] || [ ! -f "$FILE2" ]; then
    echo -e "${RED}❌ אחד מהקבצים לא קיים.${NC}"
    exit 1
fi

# השוואה שקטה
if cmp -s "$FILE1" "$FILE2"; then
    echo -e "${GREEN}✅ הקבצים זהים.${NC}"
else
    echo -e "${RED}❌ הקבצים שונים. מציג הבדלים:${NC}"
    diff --color=always "$FILE1" "$FILE2"
fi
