#!/usr/bin/env bash

echo -e "\033[0;34m[INFO]\033[0m Installing official packages..."
#grep -v '^#' r.txt | xargs sudo pacman -S 
sleep 2
#sudo pacman -S hyprland hyprlock hypridle hyprpicker hyprpolkitagent kitty rofi-wayland waybar swaync wlogout nautilus firefox yazi fastfetch cava grim slurp swappy wl-clipboard playerctl brightnessctl pamixer pavucontrol network-manager-applet blueman bluez bluez-utils power-profiles-daemon linux-firmware git base-devel vim ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-jetbrains-mono-nerd pipewire pipewire-pulse wireplumbercliphist util-linux xdg-utils libnotify procps-ng pacman-contrib unzip python-pip zip zsh hyprsunset 
echo -e "\033[0;34m[INFO]\033[0m Installing Core Hyprland pakages...."
sleep 2
sudo pacman -S hyprland hyprlock hypridle hyprpicker hyprpolkitagent
echo -e "\033[0;34m[INFO]\033[0m Installing Apps...."
sleep 2
sudo pacman -S kitty rofi-wayland waybar swaync nautilus yazi fastfetch cava
echo -e "\033[0;34m[INFO]\033[0m Installing Wayland utilities....."
sleep 2
sudo pacman -S grim slurp swappy wl-clipboard playerctl brightnessctl pamixer pavucontrol
echo -e "\033[0;34m[INFO]\033[0m Installing System services....."
sleep 2
sudo pacman -S network-manager-applet blueman bluez bluez-utils power-profiles-daemon
echo -e "\033[0;34m[INFO]\033[0m Installing Core utils...."
sleep 2
sudo pacman -S linux-firmware git base-devel vim ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick
echo -e "\033[0;34m[INFO]\033[0m Installing Fonts....."
sudo pacman -S noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-jetbrains-mono-nerd
echo -e "\033[0;34m[INFO]\033[0m Installing Audio Backend....."
sleep 2
sudo pacman -S pipewire pipewire-pulse wireplumber
echo -e "\033[0;34m[INFO]\033[0m Installing Misc tools...."
sleep 2
sudo pacman -S cliphist util-linux xdg-utils libnotify procps-ng pacman-contrib
echo -e "\033[0;34m[INFO]\033[0m Installing extras...."
sleep 2
sudo pacman -S unzip python-pip zip zsh hyprsunset 
sleep 3
echo -e "\033[0;32m[OK]\033[0m Done!"

if command -v yay >/dev/null 2>&1; then
  echo -e "\033[0;34m[INFO]\033[0m yay alredy installed."
else
  echo -e "\033[1;33m[WARNING]\033[0m yay not found."
  echo -e "\033[0;34m[INFO]\033[0m Installing yay..."
  sleep 2

  git clone https://aur.archlinux.org/yay.git
  cd yay

  makepkg -si --noconfirm

  cd ..
  rm -rf yay

  echo -e "\033[0;32m[OK]\033[0m yay installed!"
fi

echo -e "\033[0;34m[INFO]\033[0m Installing AUR packages using yay... "
#grep -v '^#' r2.txt | xargs yay -S 
sleep 2
yay -S awww matugen-bin rofimoji wtype ttf-font-awesome ttf-nerd-fonts-symbols-common zen-browser-bin spotify wlogout

echo -e "\033[0;32m[OK]\033[0m Done!"
sleep 2