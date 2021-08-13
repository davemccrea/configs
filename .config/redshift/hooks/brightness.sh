#!/bin/sh
# Set brightness of external display via ddcutil when redshift status changes

brightness_day=90
brightness_transition=50
brightness_night=40

set_brightness() {
	ddcutil setvcp 10 $1
}

if [ "$1" = period-changed ]; then
	case $3 in
		night)
			set_brightness $brightness_night 
			;;
		transition)
			set_brightness $brightness_transition
			;;
		daytime)
			set_brightness $brightness_day
			;;
	esac
fi