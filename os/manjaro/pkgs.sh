#!/bin/bash -l

set -e

paru --sync --quiet --needed --noconfirm \
    "aws-cli-v2" \
    "aws-vault" \
    "base-devel" \
    "bitwarden-cli" \
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
    "sqlite" \
    "telegram-desktop" \
    "terraform" \
    "terragrunt" \
    "tldr"

paru --sync --quiet --needed --noconfirm \
    "asdf-vm" \
    "google-chrome" \
    "insomnia-bin" \
    "litecli" \
    "slack-desktop" \
    "stremio" \
    "visual-studio-code-bin" \
    "zotero-bin"
