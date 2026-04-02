#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: eliza25147

# List of directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "==========================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Get human-readable size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "DIR: $DIR | Perms: $PERMS | Size: $SIZE"
    else
        echo "DIR: $DIR does not exist on this system."
    fi
done

echo "==========================================="
# Audit for Python configuration directory
PYTHON_CONF="/usr/lib/python3"
if [ -d "$PYTHON_CONF" ]; then
    echo "Python Config Check: $PYTHON_CONF exists."
    ls -ld $PYTHON_CONF
fi
