#!/usr/bin/env bash

echo "Installing official packages..."
#grep -v '^#' r.txt | xargs sudo pacman -S 
sudo pacman -S hyprland hyprlock hypridle hyprpicker hyprpolkitagent kitty rofi-wayland waybar swaync wlogout nautilus firefox yazi fastfetch cava grim slurp swappy wl-clipboard playerctl brightnessctl pamixer pavucontrol network-manager-applet blueman bluez bluez-utils power-profiles-daemon linux-firmware git base-devel vim ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-jetbrains-mono-nerd pipewire pipewire-pulse wireplumbercliphist util-linux xdg-utils libnotify procps-ng pacman-contrib unzip python-pip zip zsh hyprsunset 


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
grep -v '^#' r2.txt | xargs yay -S --needed
