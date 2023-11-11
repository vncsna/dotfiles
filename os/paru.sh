#!/bin/bash -l

set -e

if [[ ! "$(pacman -Qe paru)" == *"paru"* ]]; then
    sudo --user=$USER git clone https://aur.archlinux.org/paru.git
    (cd paru && sudo --user=$USER makepkg --install --syncdeps --needed --noconfirm)
    rm -rf paru
fi
