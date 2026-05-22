#!/bin/sh

"$HOME/src/dwm/dwm/wallpaper.sh" &
dwmblocks &
picom &
dunst &

while true; do
    dwm 2> ~/.dwm.log
done
