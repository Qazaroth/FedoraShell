#!/bin/bash

if [[ `id -u` -ne 0 ]] then
	echo "Please run the script as root or using sudo!"
	exit
fi

if [[ "$1" == "powersave" ]] then
echo "powersave" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
elif [[ "$1" == "performance" ]] then
echo "performance" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
else
echo "Invalid governor."
echo `sudo cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors`
fi
