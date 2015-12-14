#!/bin/bash
# TODO Description

# URL txt check vars
str=$1
url=$2

# Notification vars
title="MBP is available!"
msg="Go to refurbished outlet"
sound="default"

if curl -s "$url" | grep -q -i "$str"; then
	osascript -e 'display notification "'"$msg"'" with title "'"$title"'" sound name "'"$sound"'"'
else
	echo "not found"
fi

