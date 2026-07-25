#!/usr/bin/env bash

cat <<"EOF"
________          __    _____.__.__                  .___                 __         .__  .__
\______ \   _____/  |__/ ____\__|  |   ____   ______ |   | ____   _______/  |______  |  | |  |
 |    |  \ /  _ \   __\   __\|  |  | _/ __ \ /  ___/ |   |/    \ /  ___/\   __\__  \ |  | |  |
 |    `   (  <_> )  |  |  |  |  |  |_\  ___/ \___ \  |   |   |  \\___ \  |  |  / __ \|  |_|  |__
/_______  /\____/|__|  |__|  |__|____/\___  >____  > |___|___|  /____  > |__| (____  /____/____/
        \/                                \/     \/           \/     \/            \/

─────────────────────────────────────────────────────
EOF

read -rp "Install? (Y/n): " ans
ans=${ans,,}

if [[ -n "$ans" && "$ans" != "y" ]]; then
  echo "Installation cancelled."
  exit 0
fi

#Install nessary pakages
cd requirements/
bash req.sh
cd ..

#Configs
bash config.sh

#Enable Services
bash services.sh

echo "Done!"
echo "You may need to log out and log back in."
