#!/usr/bin/env bash

cat <<"EOF"

████   ███  █████ █████ ███ █     █████  ████ 
█   █ █   █   █   █      █  █     █     █     
█   █ █   █   █   ████   █  █     ████   ███  
█   █ █   █   █   █      █  █     █         █ 
████   ███    █   █     ███ █████ █████ ████  

─────────────────────────────────────────────────────
EOF

read -rp "Proceed with the Installation? (Y/n): " ans
ans=${ans,,}

if [[ -n "$ans" && "$ans" != "y" ]]; then
  echo -e "\033[0;31m[!]\033[0m Installation cancelled."
  exit 0
fi

#Install nessary pakages
cd requirements/
bash req.sh
cd ..

#Configs
bash config.sh

#Enable Services
bash service.sh

cd ~/.config/hypr/scripts
chmod +x *.sh
cd ~

echo -e "\033[0;32m[OK]\033[0m Done!"
echo -e "\033[0;34m[INFO]\033[0m You may need to log out and log back in."
echo -e "\033[0;34m[INFO]\033[0m Hint: You can press SUPER + H to see all keybinds!"
echo -e "\033[0;34m[INFO]\033[0m Hint: To start hyprland type start-hyprland"

