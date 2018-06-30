#!/bin/bash

printf "Setting Profile to AUTO\n"
echo auto > /sys/class/drm/card0/device/power_dpm_force_performance_level
sleep 1
printf "Available and currently selected clock speed:\n"
cat /sys/class/drm/card0/device/pp_dpm_sclk

exit
