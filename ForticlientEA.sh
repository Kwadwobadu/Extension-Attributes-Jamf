#!/bin/bash
# filepath: untitled:Untitled-3

# Check for FortiClient VPN installation
if [ -d "/Applications/FortiClient.app" ]; then
    echo "<result>Installed</result>"
else
    echo "<result>Not Installed</result>"
fi
