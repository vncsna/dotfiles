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
    "blueberry" \
    "bluez" \
    "bluez-utils" \
    "brightnessctl" \
    "calibre" \
    "ctags" \
    "dbeaver" \
    "docker" \
    "docker-compose" \
    "fzf" \
    "git" \
    "git-lfs" \
    "github-cli" \
    "mako" \
    "man-db" \
    "man-pages" \
    "neovim" \
    "okular" \
    "oniguruma" \
    "pcmanfm" \
    "pgcli" \
    "playerctl" \
    "postgresql" \
    "ranger" \
    "redis" \
    "sof-firmware" \
    "swappy" \
    "swaylock" \
    "telegram-desktop" \
    "terraform" \
    "terragrunt" \
    "tldr" \
    "wf-recorder" \
    "xorg-xwayland" \
    "zsh"

paru --sync --quiet --needed --noconfirm \
    "asdf-vm" \
    "beekeeper-studio-bin" \
    "clipman" \
    "fzf-tab-bin-git" \
    "grimshot" \
    "google-chrome" \
    "insomnia-bin" \
    "navi" \
    "notion-app-enhanced" \
    "oh-my-zsh-git" \
    "qt5-styleplugins" \
    "stremio" \
    "visual-studio-code-bin" \
    "wlsunset" \
    "wl-clipboard" \
    "zotero-bin"

########################################

ZSH_CUSTOM=/usr/share/oh-my-zsh/custom

if [[ ! "$SHELL" == *"zsh"* ]]; then
    chsh -s $(which zsh) $USER
fi

if [[ ! -d $ZSH_CUSTOM/plugins/zsh-syntax-highlighting ]]; then
    sudo git clone \
        https://github.com/zsh-users/zsh-syntax-highlighting.git \
        $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi

########################################

git config --global core.editor nvim
git config --global credential.helper store
git config --global user.name Vinicius Aguiar
git config --global user.email vncsna@gmail.com

########################################

[ -d "./root/etc" ] && sudo cp --backup --recursive ./root/etc/* /etc
[ -d "./root/home" ] && sudo cp --backup --recursive ./root/home/* /home

########################################

gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
gsettings set org.gnome.desktop.wm.preferences theme "Nordic"
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"

########################################

install() {
    if [[ ! "$(which $1)" == *"asdf"* ]]; then
        asdf plugin add $2 || :
        asdf install $2 $3
        asdf global $2 $3
        asdf reshim $2
    fi
}
source /opt/asdf-vm/asdf.sh

install node nodejs 16.15.0
install python python 3.10.5
install python python 3.11.6
install kubectl kubectl 1.22.0
install kubectl kubectl 1.24.16

########################################

if [[ ! "$(groups)" == *"docker"* ]]; then
    sudo groupadd --force docker
    sudo usermod --append --groups docker $USER
    newgrp docker
    systemctl enable docker.service
    systemctl enable containerd.service
fi
