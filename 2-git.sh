#!/bin/bash -l
set -euxo pipefail

git config --global core.editor nvim
git config --global credential.helper store
git config --global user.name Vinicius Aguiar
git config --global user.email vncsna@gmail.com
