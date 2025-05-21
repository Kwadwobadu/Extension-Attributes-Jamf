#!/bin/bash

# Get the currently logged-in user
logged_in_user=$(stat -f "%Su" /dev/console)

# Output for Jamf Extension Attribute
echo "<result>$logged_in_user</result>"

