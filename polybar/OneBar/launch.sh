#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -rq ws &
polybar -rq music &
polybar -rq tray &

echo "Polybar launched..."
