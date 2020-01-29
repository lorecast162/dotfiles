#!/bin/bash

#terminate any polybar instance
killall -q polybar

#wait for all polybar processes to be down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

#have default network interface(s) available as variable
#export DEFAULT_ETHERNET=$(ip route | grep '^default' | awk '{print $5}' | grep e | uniq)
#export DEFAULT_WIFI=$(ip route | grep '^default' | awk '{print $5}' | grep w | uniq)

export DEFAULT_ETHERNET="ens5"
export DEFAULT_WIFI="wlan0"

#launch polybar with default config
#polybar vgabar1 &
polybar top &
polybar bottom &


echo "polybar running..."
