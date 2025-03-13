#!/bin/bash
while true; do
  for brightness in 0 1 2 1 0; do
    echo $brightness | sudo tee /sys/class/leds/platform::kbd_backlight/brightness > /dev/null
    sleep 0.1  # Adjust speed of wave
  done
  sleep 1  # Pause between waves
done
