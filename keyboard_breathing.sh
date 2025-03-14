#!/bin/bash


while true; do
    for i in {0..3}; do
        echo $i | sudo tee $LED_PATH       #this is for keyboards with three brightness levels.
        sleep 0.2
    done
    for i in {3..0}; do
        echo $i | sudo tee $LED_PATH
        sleep 0.2
    done
done
