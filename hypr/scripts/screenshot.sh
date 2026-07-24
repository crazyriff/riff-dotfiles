!#/bin/zsh
mkdir -p ~/Pictures/Screenshots
grim -g "$(slurp)" ~/Pictures/Screenshots/$(date +"%Y%m%d_%Hh%Mm%s").png &
