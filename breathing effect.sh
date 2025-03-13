#!/bin/bash
while true; do
  for i in {0..2}; do
    echo $i | sudo tee /sys/class/leds/platform::kbd_backlight/brightness > /dev/null
    sleep 0.3  # Adjust speed of fade-in
  done
  for i in {2..0}; do
    echo $i | sudo tee /sys/class/leds/platform::kbd_backlight/brightness > /dev/null
    sleep 00.1  # Adjust speed of fade-out
  done
  sleep 1
done
