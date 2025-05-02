#!/bin/bash

# Atualiza o sistema
echo "Atualizando o sistema..."
sudo pacman -Syu --noconfirm

# Instala pacotes principais via pacman
echo -e "\n\nInstalando pacotes principais..."
sudo pacman -S --noconfirm $(cat << EOF
hyprland
blueman
git
nano
brightnessctl
hyprpaper
waybar
hypridle
flatpak
noto-fonts-cjk
adobe-source-han-sans-otc-fonts
otf-ipafont
otf-font-awesome
ttf-arimo-nerd
noto-fonts
python-pillow
python-conda
hyprlock
firefox
ranger
grim
slurp
wl-clipboard
EOF
)

# Instala oh-my-bash
echo -e "\n\nInstalando Oh-My-Bash..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" "" --unattended

echo -e "\n\nInstalação concluída!"
