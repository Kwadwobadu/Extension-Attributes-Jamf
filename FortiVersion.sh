#!/bin/bash

# This script checks the version of FortiClient installed on a macOS system.


FORTI="/Applications/FortiClient.app"

if [ -d "$FORTI" ]; then
    # Get the version of FortiClient
    VERSION=$(defaults read "$FORTI/Contents/Info.plist" CFBundleShortVersionString 2>/dev/null)

    echo "<result>$VERSION</result>"

fi