#!/bin/bash -l
set -euxo pipefail

# INSTALL MANJARO SWAY --------------------------
# https://github.com/Manjaro-Sway/manjaro-sway

# TRUST BLUETOOTH DEVICES -----------------------
# COPY CONFIG FILES -----------------------------

# INSTALL APPS ----------------------------------
# pacman -S calibre
# pacman -S discord_arch_electron
# pacman -S docker
# pacman -S docker-compose
# pacman -S google-chrome
# pacman -S okular
# pacman -S redshift
# pacman -S slack-wayland
# pacman -S stremio
# pacman -S telegram-desktop
# pacman -S visual-studio-code-bin
# pacman -S xarchiver
# pacman -S zotero

# INSTALL OH-MY-ZSH -----------------------------
# https://github.com/ohmyzsh/ohmyzsh

# INSTALL ZSH-SYNTAX-HIGHLIGHTNING --------------
# https://github.com/zsh-users/zsh-syntax-highlighting

# INSTALL ASDF ----------------------------------
# https://asdf-vm.com/#/core-manage-asdf
# https://asdf-vm.com/#/core-manage-plugins

# CONFIGURE GIT TO STORE CREDENTIALS ------------
# git config --global credential.helper store

# CONFIGURE GITHUB NPM REGISTRY -----------------
# create a .npmrc file with
# //npm.pkg.github.com/:_authToken={{TOKEN}}

# CONFIGURE DOCKER TO START ON BOOT -------------
# sudo systemctl enable docker.service
# sudo systemctl enable containerd.service
