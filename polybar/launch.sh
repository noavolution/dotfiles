#!/bin/bash

killall -q polybar
killall volctl
killall nm-applet
polybar -r main &
polybar -r second &
volctl &
nm-applet &
