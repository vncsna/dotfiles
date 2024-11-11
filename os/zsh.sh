#!/bin/bash -l

set -e

ZSH_CUSTOM=/usr/share/oh-my-zsh/custom

if [[ ! "$SHELL" == *"zsh"* ]]; then
    chsh -s $(which zsh) $USER
fi

if [[ ! -d $ZSH_CUSTOM/plugins/zsh-autosuggestions ]]; then
    sudo git clone \
        https://github.com/zsh-users/zsh-autosuggestions \
        ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

if [[ ! -d $ZSH_CUSTOM/plugins/zsh-syntax-highlighting ]]; then
    sudo git clone \
        https://github.com/zsh-users/zsh-syntax-highlighting.git \
        $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi
