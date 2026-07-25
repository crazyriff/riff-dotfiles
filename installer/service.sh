#!/usr/bin/env bash

echo "Enabling services..."

# Network
sudo systemctl enable NetworkManager

# Bluetooth
sudo systemctl enable bluetooth

# Power Profiles
sudo systemctl enable power-profiles-daemon

echo "Done!"
