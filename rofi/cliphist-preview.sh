#!/bin/bash
# Clipboard history with image previews
selected=$(cliphist list | rofi -dmenu -config ~/.config/rofi/config.rasi -p "Clipboard" \
    -theme-str 'listview { lines: 10; }' \
    -display-columns 2 -separator " ")

[ -z "$selected" ] && exit 0

# Check if it's an image file
if echo "$selected" | grep -qE '\.(png|jpg|jpeg|gif|bmp|webp|svg)$'; then
    # Show preview and copy
    filepath=$(echo "$selected" | awk '{print $NF}')
    if [ -f "$filepath" ]; then
        wl-copy < "$filepath"
        notify-send "Clipboard" "Image copied" -i "$filepath"
    fi
else
    echo "$selected" | cliphist decode | wl-copy
    notify-send "Clipboard" "Text copied"
fi
