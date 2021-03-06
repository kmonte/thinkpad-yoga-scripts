#!/bin/bash
# Simple script to toggle on/off the ThinkPad Yoga's Trackpoint and Clickpad
# and kill/launch. To be binded with switches when switching between tablet/laptop
# modes.
#
# Must be run as user running X11.
#
# https://github.com/admiralakber/thinkpad-yoga-scripts
# Author: AdmiralAkber

case "$1" in
    off)
	xinput --set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 0
	xinput --set-prop "TPPS/2 IBM TrackPoint" "Device Enabled" 0
	sudo -b -u \#1000 onboard
	;;
    on)
	xinput --set-prop "SynPS/2 Synaptics TouchPad" "Device Enabled" 1
	xinput --set-prop "TPPS/2 IBM TrackPoint" "Device Enabled" 1
	killall onboard
	;;
esac

