#!/bin/bash -l
set -euxo pipefail

ASDFV=0.9.0
NODEV=16.14.0
PYTHONV=3.10.2

if [ ! -d "$HOME/.asdf" ]; then
  git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch $ASDFV
fi

. ~/.asdf/asdf.sh

asdf plugin add nodejs || :
asdf install nodejs $NODEV
asdf global nodejs $NODEV

asdf plugin add python || :
asdf install python $PYTHONV
asdf global python $PYTHONV
