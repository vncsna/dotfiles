#!/bin/bash -l
set -euxo pipefail

###################
# Install
###################
if [ -d "~/.asdf" ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1
fi

. ~/.asdf/asdf.sh

###################
# Node
###################
NODEV=16.13.1
asdf plugin add nodejs || :
asdf install nodejs $NODEV
asdf global nodejs $NODEV

###################
# Python
###################
PYTHONV=3.10.0
asdf plugin add python || :
asdf install python $PYTHONV
asdf global python $PYTHONV

