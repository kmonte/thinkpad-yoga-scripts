#!/bin/bash
# 
# https://github.com/admiralakber/thinkpad-yoga-scripts
#
# Set tablet/laptop scancodes on ThinkPad Yoga S1 to NoSymbol
# keycodes then run xbindkeys as the appropriate user with
# a custom configuration file.
# 
# USAGE: tablet-mode.sh username

config='/opt/thinkpad-yoga-scripts/tablet/xbindkeysrc'
user="$(who -u | grep -F \(${DISPLAY}\) | head -n 1 | awk '{print $1}')"

# Set scancode to keycodes
setkeycodes e058 85 # Tablet mode
setkeycodes e059 89 # Laptop mode

# Start xbindkeys with configuration file
su $user -c "xbindkeys -f $config -n"
