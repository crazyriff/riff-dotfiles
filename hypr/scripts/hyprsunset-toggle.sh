#!/bin/bash

if pgrep -x "hyprsunset" > /dev/null; then
    pkill hyprsunset
    notify-send "hyprsunset" "Night mode OFF"
else
    hyprsunset -t 4500 &
    notify-send "hyprsunset" "Night mode ON (4500K)"
fi
