#!/bin/bash -l
set -euxo pipefail

function install() {
  pacman -S --needed --noconfirm $1
}

function install_aur() {
  sudo -u vncsna git clone https://aur.archlinux.org/$1.git
  (cd $1 && sudo -u vncsna makepkg -si --needed --noconfirm)
  rm -rf $1
}

function install_flatpak() {
  flatpak install --noninteractive flathub $1
}

export -f install
export -f install_aur
export -f install_flatpak

xargs -a pkgs/off.txt -I {} bash -c 'install "{}"'
xargs -a pkgs/aur.txt -I {} bash -c 'install_aur "{}"'
xargs -a pkgs/flatpak.txt -I {} bash -c 'install_flatpak "{}"'

# Reference
# https://stackoverflow.com/questions/11003418/calling-shell-functions-with-xargs
