#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/home" "/usr" "/tmp")

echo "===== Directory Audit ====="

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        PERM=$(ls -ld $DIR | awk '{print $1, $3}')
        echo "$DIR -> Size: $SIZE | Permissions: $PERM"
    else
        echo "$DIR not found"
    fi
done

# Python config check
PYTHON_PATH="/usr/bin/python3"

if [ -f "$PYTHON_PATH" ]; then
    echo "Python exists at $PYTHON_PATH"
    ls -l $PYTHON_PATH
else
    echo "Python not found in /usr/bin"
fi