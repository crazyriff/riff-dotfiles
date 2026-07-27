#!/usr/bin/env bash

echo "\033[0;34m[INFO]\033[0m Enabling services..."
sleep 2

# Network
sudo systemctl enable NetworkManager

# Bluetooth
sudo systemctl enable bluetooth

# Power Profiles
sudo systemctl enable power-profiles-daemon

echo "\033[0;32m[OK]\033[0m Done!"
sleep 2
