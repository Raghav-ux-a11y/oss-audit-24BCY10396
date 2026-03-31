#!/bin/bash
# Script 4: Log Analyzer

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "File not found!"
    exit 1
fi

while read LINE
do
    if echo "$LINE" | grep -i "$KEYWORD" > /dev/null
    then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Total '$KEYWORD' found: $COUNT"

echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5