# My Hyprland Dotfiles

![Desktop Screenshot 1](screenshots/1.png)

![Desktop Screenshot 2](screenshots/2.png)

## Installation

You can install the dotfiles automatically using the included installer.

> **Note:** The automated installer currently supports **Arch Linux** only.

```bash
git clone 'https://github.com/crazyriff/riff-dotfiles.git'
cd riff-dotfiles
cd installer
chmod +x *.sh
./install.sh
```

If you're using another Linux distribution, you'll need to install the required packages and copy the configuration files manually.

## Post Installation

After installation, log out and log back in.

To start **Hyprland**, type the following **in a TTY**:

```bash
start-hyprland
```

Alternatively, you can install **SDDM** to launch Hyprland from a graphical login screen. If you prefer to keep your **system lightweight, you can skip this step.**

```bash
sudo pacman -S sddm
sudo systemctl enable sddm
```

After enabling SDDM, reboot or log out and log back in.

### First Login

When you first log into Hyprland, it may look broken—but don't worry, that's expected!

You still need to apply a **Waybar layout**, a **Waybar style**, and a wallpaper.

- **SUPER + Alt + B** → Select a Waybar layout
- **SUPER + Ctrl + B** → Select a Waybar style
- **SUPER + W** → Choose a wallpaper

Once you've done that, you're all set! 

## About

This is my first Hyprland rice! 🌾

I built this setup by customizing and learning from the excellent work of **binnewbs**. Their repository was a huge help while I was getting started with Hyprland.

If you're interested, be sure to check out their project:

- https://github.com/binnewbs/arch-hyprland
