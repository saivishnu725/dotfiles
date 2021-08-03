#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)
setxkbmap us &
while true; do
	if $( cat /sys/class/power_supply/BAT0/status ) == "Charging"; do 
		setroot -name "$(cat /sys/class/power_supply/BAT0/capacity)% | $(cat /sys/class/power_supply/BAT0/status )% | $( date +%F %R) "
	else
		xsetroot -name "$(cat /sys/class/power_supply/BAT0/capacity)% | $( date "+%F %R")"
	sleep 1M
done &

# invoke global X session script
. /etc/X11/Xsession

exec sxhkd &
exec dwm
