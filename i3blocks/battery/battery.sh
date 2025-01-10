#!/bin/bash
actual_brightness=$(cat /sys/class/backlight/intel_backlight/actual_brightness)
max=120000
brightness_dec=$(bc <<< "scale=2;$actual_brightness/$max")
brightness=$(bc <<< "scale=0;$brightness_dec * 100")

awk '{printf "%d\n", $brightness}'
echo $brightness
