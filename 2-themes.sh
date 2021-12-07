#!/bin/bash -l
set -euxo pipefail

gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark-solid"
gsettings set org.gnome.desktop.wm.preferences theme "Arc-Dark-solid"
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"
