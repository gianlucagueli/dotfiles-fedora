#!/bin/bash

bright="$(brightnessctl g)"
percentage=$((bright / 1200))

killall notify-send
notify-send -t 3000 -h int:value:$percentage "Brightness"
