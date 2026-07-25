#!/usr/bin/env bash

echo "Backing up configs..."

backup="$HOME/.config-backup-$(date +%Y%m%d-%H%M%S)"
conf="$HOME/.config"

mkdir -p "$backup"

configs=(
  hypr
  kitty
  waybar
  rofi
  cava
  fastfetch
  matugen
  swaync
  "swaync 0.12"
  wlogout
)

for cfg in "${configs[@]}"; do
  if [[ -d "$conf/$cfg" ]]; then
    mv "$conf/$cfg" "$backup"
  fi
done

echo "Installing configs..."

for cfg in "${configs[@]}"; do
  cp -r "$cfg" "$conf"
done

echo "Done!"
