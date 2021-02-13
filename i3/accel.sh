#!/bin/bash

OUTPUT=$(xinput list-props 9 | grep 303)
if [ "${OUTPUT}" = '	libinput Accel Speed (303):	-1.000000' ];
then
  xinput set-prop 9 303 0
elif [ "${OUTPUT}" = '	libinput Accel Speed (303):	0.000000' ];
then
  xinput set-prop 9 303 -1
fi
