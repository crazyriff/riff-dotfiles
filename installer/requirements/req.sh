#!/usr/bin/env bash

echo "Installing official packages..."
grep -v '^#' packages.txt | xargs sudo pacman -S --needed

if command -v yay >/dev/null 2>&1; then
  echo "yay alredy installed."
else
  echo "yay not found."
  echo "Installing yay..."

  sudo pacman -S --needed git base-devel

  git clone https://aur.archlinux.org/yay.git
  cd yay

  makepkg -si --noconfirm

  cd ..
  rm -rf yay

  echo "yay installed!"
fi

echo "Installing AUR packages using yay... "
grep -v '^#' aur-packages.txt | xargs yay -S --needed
