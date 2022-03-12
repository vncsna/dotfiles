#!/bin/bash -l
set -euxo pipefail

chsh -s $(which zsh) $USER

OHMYZSH=https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh
(sh -c "$(curl -fsSL $OHMYZSH)")
