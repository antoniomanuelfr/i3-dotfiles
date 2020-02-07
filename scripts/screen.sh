#!/bin/bash

nscreens=$(xrandr --prop | grep "[^dis]connected" | cut --delimiter=" " -f1)
if [ $(echo $nscreens | wc -w) -gt 1 ]; then 
  # xrandr --output $(echo $nscreens | awk '{print $2}') --primary --mode 1920x1080
  # xrandr --auto && xrandr --output $(echo $nscreens | awk '{print $1}') --off
  autorandr --load docked
fi
