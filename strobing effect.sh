#!/bin/bash
while true; do
    echo 2 | sudo tee /sys/class/leds/platform::kbd_backlight/brightness > /dev/null
    sleep 0.1  # Adjust speed of flashes
    echo 0 | sudo tee /sys/class/leds/platform::kbd_backlight/brightness > /dev/null
    sleep 0.1
done

