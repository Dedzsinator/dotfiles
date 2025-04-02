#/bin/bash
#check if the first argument is 15 or lower it sends a notification that the battery is low
if [ $1 -le 15 ]; then
    swaync-client -s  battery-low "Battery low" "Battery level is ${1}%!"
fi
