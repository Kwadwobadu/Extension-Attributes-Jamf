#!/bin/bash
# Extension script to check if Sophos is installed

if command -v savd >/dev/null 2>&1 || [ -d "/Library/Sophos Anti-Virus" ] || [ -d "/opt/sophos-av" ]; then
    echo "<result>Installed</result>"
    exit 0
else
    echo "<result>Not installed</result>"
    exit 1
fi