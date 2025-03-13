#!/bin/bash
while true; do
    for i in {0..2} {2..0}; do
        echo $i | sudo tee /sys/class/leds/platform::kbd_backlight/brightness > /dev/null
        sleep 0.1  # Adjust speed of the breathing effect
    done
done
