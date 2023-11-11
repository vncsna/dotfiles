#!/bin/bash -l

# One of: arch/gnome, arch/sway, and manjaro

set -e

if [[ $# -eq 1 ]]; then
  [ -d "./$1/root/etc" ] && sudo cp --backup --recursive ./$1/root/etc/* /etc
  [ -d "./$1/root/home" ] && sudo cp --backup --recursive ./$1/root/home/* /home
  [ -d "./$1/root/home" ] && sudo chown --recursive vncsna:vncsna /home
fi
