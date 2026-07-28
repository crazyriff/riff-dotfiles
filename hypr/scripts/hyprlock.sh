#!/bin/zsh

WALLPAPER=$(readlink -f ~/.config/hypr/current_wallpaper)

if [[ "$WALLPAPER" == *.gif ]]; then
    TMP_WALL=/tmp/hyprlock-frame.png
    ffmpeg -y -i "$WALLPAPER" -vframes 1 "$TMP_WALL" 2>/dev/null
    ORIG_TARGET=$(readlink ~/.config/hypr/current_wallpaper)
    ln -sf "$TMP_WALL" ~/.config/hypr/current_wallpaper
    hyprlock
    ln -sf "$ORIG_TARGET" ~/.config/hypr/current_wallpaper
else
    hyprlock
fi
