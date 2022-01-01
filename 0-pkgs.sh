#!/bin/zsh -l
set -euxo pipefail

######################################
# Packages
######################################

for pkg in \
    "aws-cli" \
    "base-devel" \
    "blueberry" \
    "bluez" \
    "bluez-utils" \
    "brightnessctl" \
    "calibre" \
    "ctags" \
    "docker" \
    "docker-compose" \
    "file-roller" \
    "git" \
    "lazygit" \
    "libnma" \
    "man-db" \
    "man-pages" \
    "neovim" \
    "okular" \
    "oniguruma" \
    "papirus-icon-theme" \
    "pcmanfm-gtk3" \
    "playerctl" \
    "postgresql" \
    "ranger" \
    "re2c" \
    "redis" \
    "swaylock" \
    "telegram-desktop" \
    "xorg-xwayland" \
    "zsh" \
    "zsh-syntax-highlighting"
do
    pacman -S --needed --noconfirm $pkg
done

######################################
# Packages: AUR
######################################

for pkg in \
    "grimshot" \
    "insomnia-bin" \
    "nerd-fonts-roboto-mono" \
    "nordic-theme-git" \
    "oh-my-zsh-git" \
    "qt5-styleplugins" \
    "stremio" \
    "visual-studio-code-bin" \
    "zotero"
do
  sudo -u vncsna git clone https://aur.archlinux.org/$pkg.git
  (cd $pkg && sudo -u vncsna makepkg -si --needed --noconfirm)
  rm -rf $pkg
done

######################################
# Packages: Flatpak
######################################

for pkg in \
    "com.discordapp.Discord"\
    "com.slack.Slack"
do
    flatpak install --noninteractive flathub $pkg
done
