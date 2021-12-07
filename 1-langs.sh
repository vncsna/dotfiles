#!/bin/bash -l
set -euxo pipefail

ASDFV=0.8.1
NODEV=16.13.1
PYTHONV=3.10.0

if [ -d "~/.asdf" ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch $ASDFV
fi

. ~/.asdf/asdf.sh

asdf plugin add nodejs || :
asdf install nodejs $NODEV
asdf global nodejs $NODEV

asdf plugin add python || :
asdf install python $PYTHONV
asdf global python $PYTHONV
