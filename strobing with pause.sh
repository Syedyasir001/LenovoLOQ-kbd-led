#!/bin/bash
while true; do
  for i in {1..5}; do  # Number of flashes before pausing
    echo 2 | sudo tee /sys/class/leds/platform::kbd_backlight/brightness > /dev/null
    sleep 0.1
    echo 0 | sudo tee /sys/class/leds/platform::kbd_backlight/brightness > /dev/null
    sleep 0.1
  done
  sleep 1  # <-- Pause between cycles
done

