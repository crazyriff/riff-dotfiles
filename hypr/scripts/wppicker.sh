#!/bin/bash

# === CONFIG ===
WALLPAPER_DIR="$HOME/wallpapers"
SYMLINK_PATH="$HOME/.config/hypr/current_wallpaper"

cd "$WALLPAPER_DIR" || exit 1

# === handle spaces in names
IFS=$'\n'

# === ICON-PREVIEW SELECTION WITH ROFI, SORTED BY NEWEST ===
SELECTED_WALL=$(for a in $(ls -1t ./*.jpg ./*.png ./*.gif ./*.jpeg 2>/dev/null | sed 's|^\./||'); do echo -en "$a\0icon\x1f$a\n"; done | rofi -dmenu -p "" -i -show-icons)
[ -z "$SELECTED_WALL" ] && exit 1
SELECTED_PATH="$WALLPAPER_DIR/$SELECTED_WALL"

# === SET WALLPAPER ===
awww img "$SELECTED_PATH" --transition-type any --transition-fps 60 --transition-duration 2
matugen image "$SELECTED_PATH" --prefer=saturation 2>&1
# === CREATE SYMLINK ===
mkdir -p "$(dirname "$SYMLINK_PATH")"
ln -sf "$SELECTED_PATH" "$SYMLINK_PATH"
