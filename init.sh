#!/bin/bash -l
# set -euxo pipefail

# INSTALL MANJARO SWAY --------------------------
# https://github.com/Manjaro-Sway/manjaro-sway

# INSTALL APPS ----------------------------------
# pacman -S base-devel
# pacman -S calibre-git
# pacman -S discord_arch_electron
# pacman -S docker
# pacman -S docker-compose
# pacman -S emacs
# pacman -S google-chrome
# pacman -S noto-fonts # add cjk and extras
# pacman -S noto-fonts-emoji
# pacman -S okular
# pacman -S ranger
# pacman -S slack-wayland
# pacman -S stremio
# pacman -S telegram-desktop
# pacman -S xarchiver
# pacman -S zotero

# INSTALL OH-MY-ZSH -----------------------------
# https://github.com/ohmyzsh/ohmyzsh

# INSTALL ZSH-SYNTAX-HIGHLIGHTNING --------------
# https://github.com/zsh-users/zsh-syntax-highlighting

# INSTALL ASDF ----------------------------------
# https://asdf-vm.com/#/core-manage-asdf
# https://asdf-vm.com/#/core-manage-plugins

# INSTALL EB CLI --------------------------------
# pip install awsebcli --upgrade --user

# SETUP BLUETOOTH DEVICES -----------------------

# SETUP NEOVIM ----------------------------------
# Install Neovim Nightly from
# https://github.com/neovim/neovim/actions/workflows/release.yml

# SETUP SPACEMACS -------------------------------
# git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# SETUP GIT TO STORE CREDENTIALS ----------------
# git config --global credential.helper store

# SETUP NPM PKG REGISTRY AUTH TOKEN -------------
# npm config set //npm.pkg.github.com/:_authToken=${NPM_TOKEN}

# SETUP DOCKER TO START ON BOOT -----------------
# sudo systemctl enable docker.service
# sudo systemctl enable containerd.service

# COPY SETUP FILES ------------------------------
