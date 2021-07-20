#!/bin/bash -l
set -euxo pipefail

# INSTALL MANJARO I3 MINIMAL ---------------------
# https://manjaro.org/downloads/community/i3/

# INSTALL APPS -----------------------------------
# pacman -S calibre
# pacman -S discord
# pacman -S docker
# pacman -S docker-compose
# pacman -S google-chrome
# pacman -S noto-fonts-emoji
# pacman -S okular
# pacman -S redshift
# pacman -S slack-desktop
# pacman -S steam-manjaro
# pacman -S stremio
# pacman -S telegram-desktop
# pacman -S virtualbox # community
# pacman -S virtualbox-ext-oracle
# pacman -S virtualbox-guest-iso
# pacman -S xarchiver
# pacman -S zotero

# INSTALL ASDF MANAGER ---------------------------
# https://asdf-vm.com/#/core-manage-asdf
# https://asdf-vm.com/#/core-manage-plugins

# SET ZSH AS DEFAULT SHELL -----------------------
# chsh -s /bin/zsh

# COPY CONFIG FILES ------------------------------

# CONFIGURE DOCKER TO START ON BOOT --------------
# sudo systemctl enable docker.service
# sudo systemctl enable containerd.service

# CONFIGURE BLUETOOTH TO START ON BOOT -----------
# sudo systemctl enable bluetooth.service

# CONFIGURE GIT TO STORE CREDENTIALS -------------
# git config --global credential.helper store
