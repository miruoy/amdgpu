#!/bin/bash

printf "Available and currently selected clock speed:\n"
cat /sys/class/drm/card0/device/pp_dpm_sclk
prinft "Current Power Profile:\n"
cat /sys/class/drm/card0/device/power_dpm_force_performance_level
printf "Setting Profile to Manual\n"
echo manual > /sys/class/drm/card0/device/power_dpm_force_performance_level
read -e -p "Please input new clockspeed: " -i "" SETCLOCK
echo $SETCLOCK > /sys/class/drm/card0/device/pp_dpm_sclk
sleep 1
printf "Available and currently selected clock speed:\n"
cat /sys/class/drm/card0/device/pp_dpm_sclk

exit
