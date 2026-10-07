#!/bin/bash -l

set -e

git config --global core.editor nvim
git config --global core.compression 0
git config --global credential.helper store
git config --global user.name Vinicius
git config --global user.email vncsna@gmail.com
