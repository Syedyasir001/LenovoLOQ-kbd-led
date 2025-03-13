#!/bin/bash
LED_PATH="/sys/class/leds/input3::kbd_backlight/brightness"  # Change if needed

while true; do
    for i in {0..3}; do
        echo $i | sudo tee $LED_PATH
        sleep 0.2
    done
    for i in {3..0}; do
        echo $i | sudo tee $LED_PATH
        sleep 0.2
    done
done
