#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/syslog

LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0

# Do-while style retry if the file is empty or missing
while true; do
    if [ -s "$LOGFILE" ]; then
        break # Exit loop if file exists and is not empty
    else
        echo "Warning: File '$LOGFILE' is empty or not found."
        read -p "Please enter a valid log file path: " LOGFILE
    fi
done

# Read file and count occurrences
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "------------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "------------------------------------------------"

# Print the last 5 matching lines
if [ $COUNT -gt 0 ]; then
    echo "Last 5 occurrences:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi