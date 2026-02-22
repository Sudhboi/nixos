#!/bin/bash

old_val="None"

while true; do
    new_val=$(cat /sys/class/power_supply/BAT0/status)
    if [[ "$new_val" != "$old_val" ]]; then
        if [[ "$old_val" == "None" ]]; then
            if [[ "$new_val" == "Discharging" ]]; then
                notify-send "󰚦  Not Plugged In"
            elif [[ "$new_val" == "Charging" ]]; then
                notify-send "󰚥  Plugged In and Charging"
            elif [[ "$new_val" == "Not charging" ]]; then
                notify-send "  Charged to Capacity"
            fi
        elif [[ "$old_val" == "Charging" ]]; then
            if [[ "$new_val" == "Discharging" ]]; then
                notify-send "󱐤  Charger Removed"
            elif [[ "$new_val" == "Not charging" ]]; then
                notify-send "  Finished Charging"
            fi
        elif [[ "$old_val" == "Discharging" ]]; then
            if [[ "$new_val" == "Charging" ]]; then
                notify-send "󰚥  Plugged In and Charging"
            elif [[ "$new_val" == "Not charging" ]]; then
                notify-send "  Already Charged to Capacity"
            fi
        elif [[ "$old_val" == "Not charging" ]]; then
            if [[ "$new_val" == "Charging" ]]; then
                notify-send "󰚥  Charging"
            elif [[ "$new_val" == "Discharging" ]]; then
                notify-send "󰚦  Charger Removed at Capacity"
            fi
        fi
    fi
    old_val=$new_val
    sleep 10
done
