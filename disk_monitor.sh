#!/bin/bash

# Monitoring free disk space and logging usage

LOGFILE="$HOME/disk_monitor.log"  # Change log file location to home directory
THRESHOLD=10
TO="samikshagariya09@gmail.com"

# Get disk usage percentage of /dev/sda1
FU=$(df -H | grep "sda1" | awk '{print $5}' | tr -d '%')

# Check if 'mail' is installed
if ! command -v mail &> /dev/null; then
    echo "Missing mail command, install it first"
fi

# If usage is greater than threshold, send an alert
if [[ $FU -ge $THRESHOLD ]]; then
    echo "Warning, disk space is low - $FU%" | mail -s "Disk Space Alert!" $TO
else
    echo "All good" | mail -s "Testing" $TO
fi

# Log current disk usage
echo "$(date): Disk Usage - $(df --output=pcent / | tail -1 | tr -d ' %')%" >> $LOGFILE

