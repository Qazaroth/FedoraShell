#!/bin/bash

if [[ `id -u` -ne 0 ]] then
	echo "Please run this script as root or using sudo!"
	exit
fi

echo 1500000 | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_min_freq
echo 5500000 | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_max_freq
