#!/usr/bin/env bash

# Terminate already running bar instances
pkill -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# launch
polybar mainbar
