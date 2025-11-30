if [ "$1" ]; then
	xrandr --output DP-3-1 --brightness $1 --output DP-3-3 --brightness $1
else 
	echo "Argument not recognized: accepts values in the interval: [0-1]"
fi
