#!/bin/bash -l
set -euxo pipefail

# install manjaro i3 full
# https://manjaro.org/downloads/community/i3/

# set zsh as default shell
chsh -s /bin/zsh

# install apps with yay
yay calibre
yay discord
yay docker
yay docker-compose
yay google-chrome
yay okular
yay redshift
yay slack-desktop
yay steam-manjaro
yay stremio
yay telegram-desktop
yay virtualbox # community
yay virtualbox-ext-oracle
yay virtualbox-guest-iso
yay zotero

# install asdf manager
# https://asdf-vm.com/#/core-manage-asdf

# install onivim2
# https://onivim.io/early-access-portal

# configure asdf
# https://asdf-vm.com/#/core-manage-plugins

# configure redshift
# https://wiki.archlinux.org/title/redshift

# copy config files
