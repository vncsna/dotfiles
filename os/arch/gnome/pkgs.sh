#!/bin/bash -l

set -e

paru --sync --quiet --needed --noconfirm \
    "aws-cli-v2" \
    "aws-vault" \
    "base-devel" \
    "bitwarden-cli" \
    "bluez" \
    "bluez-utils" \
    "calibre" \
    "dbeaver" \
    "discord" \
    "docker" \
    "docker-compose" \
    "fzf" \
    "git" \
    "git-lfs" \
    "github-cli" \
    "kubectx" \
    "man-db" \
    "man-pages" \
    "neovim" \
    "pgcli" \
    "postgresql" \
    "redis" \
    "telegram-desktop" \
    "terraform" \
    "terragrunt" \
    "tldr" \
    "zsh"

paru --sync --quiet --needed --noconfirm \
    "asdf-vm" \
    "google-chrome" \
    "insomnia-bin" \
    "oh-my-zsh-git" \
    "slack-desktop" \
    "stremio" \
    "visual-studio-code-bin" \
    "zotero-bin"
