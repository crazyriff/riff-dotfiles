#!/usr/bin/env bash

echo -e "\033[0;34m[INFO]\033[0m Backing up configs..."

set -e

dotfiles="$HOME/riff-dotfiles"
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
echo -e "\033[0;32m[OK]\033[0m Backup Done!"
sleep 2
echo -e "\033[0;34m[INFO]\033[0m Installing configs..."

for cfg in "${configs[@]}"; do
  if [[ -d "$dotfiles/$cfg" ]]; then
    echo -e "\033[0;34m[INFO]\033[0m Installing $cfg..."
    cp -r "$dotfiles/$cfg" "$conf/"
  else
    echo -e "\033[0;31m[ERROR]\033[0m '$dotfiles/$cfg' not found! Skipping..."
  fi
done

# Copy Wallpapers
if [[ -d "$dotfiles/wallpapers" ]]; then
  echo -e "\033[0;34m[INFO]\033[0m Copying wallpapers..."
  cp -r "$dotfiles/wallpapers" "$HOME/wallpapers"
else
  echo -e "\033[0;31m[ERROR]\033[0m '$dotfiles/wallpapers' not found! Skipping..."
fi

echo -e "\033[0;32m[OK]\033[0m Done!"
sleep 2
