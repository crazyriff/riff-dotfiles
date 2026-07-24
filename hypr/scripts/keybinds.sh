#!/bin/bash

cat << EOF | rofi -dmenu -i -p "Hyprland Keybindings"
--- WINDOW MANAGEMENT ---
SUPER + Q              Close Window
SUPER + SHIFT + Q      Kill Active Process
SUPER + SHIFT + F      Fullscreen
SUPER + Space          Toggle Floating
--- NAVIGATION & WINDOWS ---
SUPER + Arrow Keys     Move Focus
SUPER + CTRL + Arrows  Move Window
SUPER + SHIFT + Arrows Resize Window
--- WORKSPACES ---
SUPER + 1-0            Switch Workspace
SUPER + SHIFT + 1-0    Move Window to Workspace
--- APPLICATIONS ---
SUPER + Enter          Open Terminal
SUPER + SHIFT + Enter  Floating Terminal
SUPER + B              Open Browser
SUPER + E              File Manager
SUPER + D              App Launcher
Super + M              Music Player
SUPER + =              Floating Calculator
--- UTILITIES & SYSTEM ---
SUPER + V              Clipboard History  
SUPER + . (Period)     Emoji Picker       
SUPER + W              Wallpaper Picker
SUPER + C              Color Picker
SUPER + SHIFT + S      Screenshot
SUPER + prt scr        Fullscreen Screenshot
SUPER + R              Restart Waybar
SUPER + CTRL + B       Selects Waybar Styles
SUPER + ALT + B        Selects Waybar Layouts
SUPER + L              Lock Screen
CTRL + ALT + Delete    Exit Hyprland
--- MEDIA & HARDWARE ---
SUPER + ALT + Right          Next Track
SUPER + ALT + Space          Play/Pause
SUPER + ALT + Left           Previous Track
Volume Keys            Audio Control
Brightness Keys        Brightness Control
SUPER + N	       Night Light
EOF
