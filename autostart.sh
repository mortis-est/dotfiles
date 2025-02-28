#!/bin/bash

function run {
  if ! pgrep $1; then
    $@ &
  fi
}

picom &
feh --bg-fill ~/Pictures/forest_lake.png
run slstatus &

xautolock -time 5 -locker "betterlockscreen -l --time-format '%l:%M %p'" -detectsleep -conrners ++-- -cornerdelay 10
xss-lock -- betterlockscreen -l --time-format '%l:%M %p'
