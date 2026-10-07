#!/bin/bash -l

set -e

install() {
    if ! asdf where $1 $2 >/dev/null 2>&1; then
        asdf plugin add $1 || :
        asdf install $1 $2
        asdf reshim $1
    fi
    asdf set --home $1 $2
}

install golang 1.24.1
install helm 3.16.0
install kubectl 1.22.0
install nodejs 25.0.0
install pnpm 11.7.0
install python 3.13.11

# Language servers distributed via npm (node is installed above)
"$HOME/.asdf/shims/npm" install --global pyright typescript typescript-language-server
asdf reshim nodejs
