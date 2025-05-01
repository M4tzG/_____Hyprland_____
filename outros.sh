#!/bin/bash

# Atualiza o sistema
sudo pacman -Syu --noconfirm

# Instala pacotes principais via pacman
sudo pacman -S --noconfirm \
  hyprland blueman git nano brightnessctl hyprpaper waybar hypridle \
  flatpak noto-fonts-cjk adobe-source-han-sans-otc-fonts otf-ipafont \
  otf-font-awesome ttf-arimo-nerd noto-fonts \
  python-pillow python-conda hyprlock firefox ranger grim slurp \
  wl-clipboard

# Instala oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

echo "Instalação concluída! Reinicie e configure seu ambiente Hyprland conforme necessário."
