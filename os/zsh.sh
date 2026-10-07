#!/bin/bash -l

set -e

ZSH_CUSTOM="$HOME/.config/zsh/oh-my-zsh-custom"

if [[ ! "$SHELL" == *"zsh"* ]]; then
    chsh --shell $(which zsh) $USER
fi

if [[ ! -d $ZSH_CUSTOM/plugins/zsh-autosuggestions ]]; then
    git clone \
        https://github.com/zsh-users/zsh-autosuggestions \
        $ZSH_CUSTOM/plugins/zsh-autosuggestions
fi

if [[ ! -d $ZSH_CUSTOM/plugins/zsh-syntax-highlighting ]]; then
    git clone \
        https://github.com/zsh-users/zsh-syntax-highlighting.git \
        $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi
