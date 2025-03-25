#!/bin/bash

DEVICE_ID=$(xinput list | grep -i 'touchpad' | awk '{print $6}' | cut -d'=' -f2)
PROP_ID=$(xinput list-props "$DEVICE_ID" | grep "Tapping Enabled (" | awk -F'(' '{print $2}' | cut -d '(' -f 2 | cut -d ')' -f 1)

if [ -z "$PROP_ID" ]; then
    notify-send -t 3000 "Error: Could not find 'Tapping Enabled' property."
    exit 1
fi

xinput set-prop "$DEVICE_ID" "$PROP_ID" 1
notify-send -t 3000 "Tapping enabled successfully."
