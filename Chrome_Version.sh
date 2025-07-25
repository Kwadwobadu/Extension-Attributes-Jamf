#!/bin/bash

# Get installed Chrome version
if [ -e "/Applications/Google Chrome.app/Contents/Info.plist" ]; then
    installed_version=$(/usr/libexec/PlistBuddy -c "Print :CFBundleShortVersionString" "/Applications/Google Chrome.app/Contents/Info.plist")
else
    echo "Chrome is not installed"
    exit 1
fi


# Get latest Chrome version for Mac from Chromium Dash API
latest_version=$(curl -s "https://chromiumdash.appspot.com/fetch_releases?channel=Stable&platform=Mac" | \
  grep -o '"version":"[0-9.]*"' | head -1 | cut -d':' -f2 | tr -d '"')

# Compare versions
if [ "$installed_version" != "$latest_version" ]; then
    echo "<result> Chrome is old (Installed: $installed_version, Latest: $latest_version)</result>"
else
    echo "<result> Chrome is on the latest version ($installed_version)</result>"
fi