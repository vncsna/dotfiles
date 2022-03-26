#!/bin/bash -l
set -euxo pipefail

install_aur() {
    for pkg in \
        "android-studio" \
        "clipman" \
        "grimshot" \
        "google-chrome" \
        "insomnia-bin" \
        "nerd-fonts-complete" \
        "nordic-theme-git" \
        "oh-my-zsh-git" \
        "qt5-styleplugins" \
        "stremio" \
        "visual-studio-code-bin" \
        "wlsunset" \
        "wl-clipboard" \
        "yay" \
        "zotero"
    do
        sudo -u vncsna git clone https://aur.archlinux.org/$pkg.git  || true
        (cd $pkg && sudo -u vncsna makepkg -si --needed --noconfirm) || true
        rm -rf $pkg                                                  || true
    done
}

install_flatpak() {
    for pkg in \
        "com.discordapp.Discord" \
        "com.slack.Slack"
    do
        flatpak install --noninteractive flathub $pkg                || true
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
    OHMYZSH=https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh
    (sh -c "$(curl -fsSL $OHMYZSH)")
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

setup_config() {
    cp -r ./root/home/* /home
    cp -r ./root/etc/* /etc
}

setup_asdf() {
    ASDFV=v0.9.0
    NODEV=16.14.2
    PYTHONV=3.9.10

    if [ ! -d "$HOME/.asdf" ]; then
        git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch $ASDFV
    fi

    . $HOME/.asdf/asdf.sh

    asdf plugin add nodejs || :
    asdf install nodejs $NODEV
    asdf global nodejs $NODEV

    asdf plugin add python || :
    asdf install python $PYTHONV
    asdf global python $PYTHONV
}

install_aur
install_flatpak
setup_git
setup_zsh
setup_theme
setup_docker
setup_config
setup_asdf
