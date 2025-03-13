#!/bin/bash
while true; do
    brightness=$(( RANDOM % 3 ))  # Random value between 0 and 2
    echo $brightness | sudo tee /sys/class/leds/platform::kbd_backlight/brightness > /dev/null
    sleep 0.2  # Adjust blinking speed
done
