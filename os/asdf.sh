#!/bin/bash -l

set -e

install() {
    if [[ ! "$(which $1)" == *"asdf"* ]]; then
        asdf plugin add $2 || :
        asdf install $2 $3
        asdf set --home $2 $3
        asdf reshim $2
    fi
}

install golang golang 1.24.1
install helm helm 3.16.0
install kubectl kubectl 1.22.0
install node nodejs 25.0.0
install python python 3.13.11
