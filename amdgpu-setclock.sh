#!/bin/bash

cat /sys/class/drm/card0/device/pp_dpm_sclk

echo manual > /sys/class/drm/card0/device/power_dpm_force_performance_level
read -e -p "Please input new clockspeed: " -i "0" SETCLOCK
echo $SETCLOCK > /sys/class/drm/card0/device/pp_dpm_sclk
cat /sys/class/drm/card0/device/pp_dpm_sclk

exit
