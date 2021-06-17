#!/bin/bash -l
set -euxo pipefail

# ----------------------------------------
# MORE OR LESS MANUAL
# ----------------------------------------

# install manjaro i3 full
# https://manjaro.org/downloads/community/i3/

# set zsh as default shell
chsh -s /bin/zsh

# install apps with yay
yay discord
yay docker
yay docker-compose
yay google-chrome-stable
yay okular
yay redshift
yay slack-desktop
yay steam-manjaro
yay stremio
yay telegram-desktop
yay zotero

# configure (manual) redshift
# https://wiki.archlinux.org/title/redshift

# install asdf manager
# https://asdf-vm.com/#/core-manage-asdf

# install onivim2
# https://onivim.io/

# add hide bar to i3
# add onivim2 shortcut to i3

# add opacity to picom
# https://wiki.archlinux.org/title/Picom#Opacity