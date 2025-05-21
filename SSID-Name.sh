#!/bin/sh
# Jamf Extension attribute to return SSID

SSID=`/usr/sbin/networksetup -getairportnetwork en0 | cut -c 24-56`
echo "<result>$SSID</result>"

exit 0
