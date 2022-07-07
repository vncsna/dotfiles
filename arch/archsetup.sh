#!/bin/bash -l

install() {
    for pkg in \
        "aws-cli" \
        "base-devel" \
        "bitwarden-cli" \
        "blueberry" \
        "bluez" \
        "bluez-utils" \
        "brightnessctl" \
        "calibre" \
        "ctags" \
        "docker" \
        "docker-compose" \
        "flatpak" \
        "file-roller" \
        "firefox" \
        "fzf" \
        "git" \
        "git-lfs" \
        "github-cli" \
        "k9s" \
        "lazygit" \
        "libnma" \
        "mako" \
        "man-db" \
        "man-pages" \
        "neovim" \
        "okular" \
        "oniguruma" \
        "papirus-icon-theme" \
        "pcmanfm" \
        "pgadmin4" \
        "pgcli" \
        "playerctl" \
        "postgresql" \
        "ranger" \
        "re2c" \
        "redis" \
        "sof-firmware" \
        "swappy" \
        "swaylock" \
        "telegram-desktop" \
        "terraform" \
        "terragrunt" \
        "tldr" \
        "wf-recorder" \
        "xdg-desktop-portal" \
        "xdg-desktop-portal-wlr" \
        "xorg-xlsclients" \
        "xorg-xwayland" \
        "zsh" \
        "zsh-syntax-highlighting"
    do
        sudo --user=vncsna pacman --sync --needed --noconfirm $pgk || true
    done
}

install_aur() {
    for pkg in \
        "1password-cli" \
        "beekeeper-studio" \
        "clipman" \
        "fzf-tab-bin-git" \
        "grimshot" \
        "google-chrome" \
        "insomnia-bin" \
        "navi" \
        "nerd-fonts-complete" \
        "nordic-theme-git" \
        "notion-app-enhanced" \
        "oh-my-zsh-git" \
        "qt5-styleplugins" \
        "stremio" \
        "visual-studio-code-bin" \
        "wlsunset" \
        "wl-clipboard" \
        "yay" \
        "zotero"
    do
        sudo --user=vncsna git clone https://aur.archlinux.org/$pkg.git || true
        (cd $pkg && sudo --user=vncsna makepkg --install --syncdeps --needed --noconfirm) || true
        rm -rf $pkg || true
    done
}

install_flatpak() {
    for pkg in \
        "com.discordapp.Discord" \
        "com.slack.Slack"
    do
        flatpak install --noninteractive flathub $pkg || true
    done
}

setup_git() {
    git config --global core.editor nvim
    git config --global credential.helper store
    git config --global user.name Vinicius Aguiar
    git config --global user.email vncsna@gmail.com
}

setup_zsh() {
    chsh -s $(which zsh) $USER
    git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
}

setup_config() {
    cp --recursive ./root/etc/* /etc
    cp --recursive ./root/home/* /home
}

setup_theme() {
    gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
    gsettings set org.gnome.desktop.wm.preferences theme "Nordic"
    gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"
}

setup_docker() {
    groupadd docker || echo "groupadd: success"
    usermod -aG docker vncsna
    newgrp docker
    systemctl enable docker.service
    systemctl enable containerd.service
}

setup_asdf() {
    ASDFV=v0.10.0
    NODEV=16.15.0
    PYTHONV=3.10.0
    KUBECTLV=1.22.0

    if [ ! -d "$HOME/.asdf" ]; then
        git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch $ASDFV
    fi

    source $HOME/.asdf/asdf.sh

    asdf plugin add nodejs || :
    asdf install nodejs $NODEV
    asdf global nodejs $NODEV

    asdf plugin add python || :
    asdf install python $PYTHONV
    asdf global python $PYTHONV

    asdf plugin add kubectl || :
    asdf install kubectl $KUBECTLV
    asdf global kubectl $KUBECTLV
}
