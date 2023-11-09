#!/bin/bash -l
set -e

########################################

if [[ ! "$(pacman -Qe paru)" == *"paru"* ]]; then
    sudo --user=$USER git clone https://aur.archlinux.org/paru.git
    (cd paru && sudo --user=$USER makepkg --install --syncdeps --needed --noconfirm)
    rm -rf paru
fi

paru --sync --quiet --needed --noconfirm \
    "aws-cli-v2" \
    "base-devel" \
    "bitwarden-cli" \
    "calibre" \
    "dbeaver" \
    "docker" \
    "docker-compose" \
    "fzf" \
    "git" \
    "git-lfs" \
    "github-cli" \
    "man-db" \
    "man-pages" \
    "neovim" \
    "pgcli" \
    "postgresql" \
    "redis" \
    "telegram-desktop" \
    "terraform" \
    "terragrunt" \
    "tldr"

paru --sync --quiet --needed --noconfirm \
    "asdf-vm" \
    "google-chrome" \
    "insomnia-bin" \
    "stremio" \
    "visual-studio-code-bin" \
    "zotero-bin"

########################################

git config --global core.editor nvim
git config --global credential.helper store
git config --global user.name Vinicius Aguiar
git config --global user.email vncsna@gmail.com

########################################

sudo cp --backup --recursive ./root/etc/* /etc
sudo cp --backup --recursive ./root/home/* /home

########################################

install() {
    if [[ ! "$(which $1)" == *"asdf"* ]]; then
        asdf plugin add $2 || :
        asdf install $2 $3
        asdf global $2 $3
        asdf reshim $2
    fi
}
source $ASDF_DIR/asdf.sh

install node nodejs 16.15.0
install python python 3.10.5
install python python 3.11.16
install kubectl kubectl 1.22.0

########################################

if [[ ! "$(groups)" == *"docker"* ]]; then
    sudo groupadd --force docker
    sudo usermod --append --groups docker $USER
    newgrp docker
    systemctl enable docker.service
    systemctl enable containerd.service
fi
