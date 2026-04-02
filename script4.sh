#!/bin/bash
# Script 4: Log File Analyzer
# Author: eliza25147

# Input file from command line argument, default to bootstrap.log if empty
LOGFILE=${1:-"/var/log/bootstrap.log"}
KEYWORD="error"
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

echo "Analyzing $LOGFILE for the keyword: '$KEYWORD'..."

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Summary: Found '$KEYWORD' $COUNT times."
echo "-------------------------------------------"
echo "Last 3 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 3
