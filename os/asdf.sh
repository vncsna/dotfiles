#!/bin/bash -l

set -e

install() {
    if [[ ! "$(which $1)" == *"asdf"* ]]; then
        asdf plugin add $2 || :
        asdf install $2 $3
        asdf global $2 $3
        asdf reshim $2
    fi
}
source /opt/asdf-vm/asdf.sh

install node nodejs 16.15.0
install node nodejs 18.20.0
install python python 3.10.5
install python python 3.11.6
install python python 3.11.7
install kubectl kubectl 1.22.0
install kubectl kubectl 1.24.16
