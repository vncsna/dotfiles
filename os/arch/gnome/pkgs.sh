#!/bin/bash -l

set -e

paru --sync --quiet --needed --noconfirm \
    "aws-cli-v2" \
    "aws-vault" \
    "base-devel" \
    "bitwarden-cli" \
    "bluez" \
    "bluez-utils" \
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
    "sqlite" \
    "terraform" \
    "terragrunt" \
    "tldr" \
    "zsh"

paru --sync --quiet --needed --noconfirm \
    "asdf-vm" \
    "cursor-bin" \
    "google-chrome" \
    "oh-my-zsh-git" \
    "slack-desktop" \
    "visual-studio-code-bin" \
    "zotero-bin"
