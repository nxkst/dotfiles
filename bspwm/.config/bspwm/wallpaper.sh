#!/bin/sh

WALLPAPER_DIR="$HOME/.config/bspwm/wallpapers"
LAST_FILE="$HOME/.cache/last_wallpaper"

wallpapers=("$WALLPAPER_DIR"/*)

if [ ${#wallpapers[@]} -le 1 ]; then
    feh --no-fehbg --bg-fill "${wallpapers[0]}"
    echo "${wallpapers[0]}" > "$LAST_FILE"
    exit 0
fi

if [ -f "$LAST_FILE" ]; then
    last=$(cat "$LAST_FILE")
else
    last=""
fi

for i in $(seq 1 20); do
    new="${wallpapers[RANDOM % ${#wallpapers[@]}]}"
    if [ "$new" != "$last" ]; then
        feh --no-fehbg --bg-fill "$new"
        echo "$new" > "$LAST_FILE"
        exit 0
    fi
done

new="${wallpapers[RANDOM % ${#wallpapers[@]}]}"
feh --no-fehbg --bg-fill "$new"
echo "$new" > "$LAST_FILE"
