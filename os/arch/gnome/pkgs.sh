#!/bin/bash -l

set -e

paru --sync --quiet --needed --noconfirm \
    "argocd" \
    "aws-cli-v2" \
    "aws-vault" \
    "base-devel" \
    "bitwarden-cli" \
    "bluez" \
    "bluez-utils" \
    "dbeaver" \
    "discord" \
    "docker" \
    "docker-buildx" \
    "docker-compose" \
    "fd" \
    "fzf" \
    "git" \
    "git-lfs" \
    "github-cli" \
    "jq" \
    "just" \
    "k9s" \
    "kubectx" \
    "lazygit" \
    "lua-language-server" \
    "man-db" \
    "man-pages" \
    "minikube" \
    "neovim" \
    "opencode" \
    "pgcli" \
    "postgresql" \
    "ripgrep" \
    "rust" \
    "rust-analyzer" \
    "sqlite" \
    "terraform" \
    "terragrunt" \
    "tldr" \
    "tmux" \
    "tree-sitter-cli" \
    "unzip" \
    "uv" \
    "wl-clipboard" \
    "yq" \
    "zsh"

paru --sync --quiet --needed --noconfirm \
    "asdf-vm" \
    "cursor-bin" \
    "google-chrome" \
    "natscli-bin" \
    "oh-my-zsh-git" \
    "opentofu-bin" \
    "redis" \
    "slack-desktop" \
    "visual-studio-code-bin" \
    "zotero-bin"
