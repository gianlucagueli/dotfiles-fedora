#!/bin/bash

CONNECTED_STATUS="connected"
SETUP_PATH="${HOME}/.screenlayout"

LEFT_MONITOR=$(xrandr | grep DP-3-3 | awk '{print $2}')
RIGHT_MONITOR=$(xrandr | grep DP-3-1 | awk '{print $2}')

if [ $LEFT_MONITOR = $CONNECTED_STATUS ] && [ $RIGHT_MONITOR = $CONNECTED_STATUS ]; then
	$SETUP_PATH/home-setup.sh
else 
	$SETUP_PATH/away-setup.sh
fi

