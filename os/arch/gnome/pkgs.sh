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
    "fd" \
    "fzf" \
    "git" \
    "git-lfs" \
    "github-cli" \
    "kubectx" \
    "lazygit" \
    "lua-language-server" \
    "man-db" \
    "man-pages" \
    "neovim" \
    "pgcli" \
    "postgresql" \
    "redis" \
    "ripgrep" \
    "rust" \
    "rust-analyzer" \
    "sqlite" \
    "terraform" \
    "terragrunt" \
    "tldr" \
    "tree-sitter-cli" \
    "unzip" \
    "wl-clipboard" \
    "zsh"

paru --sync --quiet --needed --noconfirm \
    "asdf-vm" \
    "cursor-bin" \
    "google-chrome" \
    "oh-my-zsh-git" \
    "slack-desktop" \
    "visual-studio-code-bin" \
    "zotero-bin"
