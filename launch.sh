#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
SHELL=$(which zsh) polybar -c ~/.config/config_files/polybar.conf mybar &

echo "Polybar launched..."
