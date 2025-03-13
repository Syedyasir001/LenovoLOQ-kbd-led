#!/bin/bash
  for i in 0 1 2 1 0; do
    echo $i | sudo tee /sys/class/leds/platform::kbd_backlight/brightness > /dev/null
    sleep 0.5  # Adjust this for speed of breathing
  done
  sleep 2  # <-- This adds a pause before the next cycle
done

