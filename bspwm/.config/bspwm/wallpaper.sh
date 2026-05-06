#!/bin/sh

WALLPAPER_DIR="$HOME/.config/bspwm/wallpapers"

if [ ! -d "$WALLPAPER_DIR" ]; then
    echo "Error: Wallpaper directory not found: $WALLPAPER_DIR" >&2
    exit 1
fi

wallpaper=$(find "$WALLPAPER_DIR" -type f \
    \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \
       -o -iname "*.webp" -o -iname "*.gif" \) 2>/dev/null \
    | shuf -n 1)

if [ -n "$wallpaper" ]; then
    feh --bg-fill "$wallpaper"
    echo "✓ Wallpaper set: $(basename "$wallpaper")"
else
    echo "⚠ No supported wallpapers found in $WALLPAPER_DIR" >&2
fi
