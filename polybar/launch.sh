#!/bin/bash

killall -q polybar
killall volctl
killall nm-applet
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar -r main &
polybar -r second &
volctl &
nm-applet &

#if type "xrandr"; then
  #for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    #MONITOR=$m polybar --reload main &
  #done
#else
  #polybar --reload main &
#fi
