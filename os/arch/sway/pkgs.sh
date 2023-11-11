#!/bin/bash -l

set -e

paru --sync --quiet --needed --noconfirm \
    "aws-cli-v2" \
    "aws-vault" \
    "base-devel" \
    "bitwarden-cli" \
    "blueberry" \
    "bluez" \
    "bluez-utils" \
    "brightnessctl" \
    "calibre" \
    "ctags" \
    "dbeaver" \
    "discord" \
    "docker" \
    "docker-compose" \
    "fzf" \
    "git" \
    "git-lfs" \
    "github-cli" \
    "kubectx" \
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
    "clipman" \
    "fzf-tab-bin-git" \
    "grimshot" \
    "google-chrome" \
    "insomnia-bin" \
    "navi" \
    "oh-my-zsh-git" \
    "qt5-styleplugins" \
    "slack-desktop" \
    "stremio" \
    "visual-studio-code-bin" \
    "wlsunset" \
    "wl-clipboard" \
    "zotero-bin"
