#!/bin/bash

echo "[+] Installing packages..."
bash packages.sh

echo "[+] Installing yay..."
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..

echo "[+] Installing AUR packages..."
yay -S --noconfirm \
    zsh-theme-powerlevel10k-git

echo "[+] Stowing configs..."
cd .dotfiles
stow .

echo "[+] Done."
echo "[+] Reboot please."
