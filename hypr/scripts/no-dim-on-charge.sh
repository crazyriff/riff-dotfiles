#!/bin/bash

is_charging() {
    for bat in /sys/class/power_supply/BAT*; do
        [ -d "$bat" ] || continue
        status=$(cat "$bat/status" 2>/dev/null)
        if [ "$status" = "Charging" ] || [ "$status" = "Full" ]; then
            return 0
        fi
    done
    return 1
}

TARGET_USER="cat"

if is_charging; then
    pkill -u "$TARGET_USER" hypridle 2>/dev/null
else
    if ! pgrep -u "$TARGET_USER" -x hypridle >/dev/null 2>&1; then
        HYPRLAND_PID=$(pgrep -u "$TARGET_USER" -x Hyprland | head -1)
        if [ -n "$HYPRLAND_PID" ]; then
            HIS=$(cat /proc/$HYPRLAND_PID/environ 2>/dev/null | tr '\0' '\n' | grep '^HYPRLAND_INSTANCE_SIGNATURE=' | cut -d= -f2-)
            su "$TARGET_USER" -c "HYPRLAND_INSTANCE_SIGNATURE='$HIS' XDG_RUNTIME_DIR='/run/user/$(id -u $TARGET_USER)' hypridle &"
        fi
    fi
fi
