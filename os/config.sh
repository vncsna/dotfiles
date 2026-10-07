#!/bin/bash -l

set -e

# One of: arch/gnome

if [[ $# -eq 1 ]]; then
  [ -d "./$1/root/etc" ] && sudo cp --backup --recursive ./$1/root/etc/* /etc
  [ -d "./$1/root/home" ] && sudo cp --backup --recursive ./$1/root/home/* /home
  [ -d "./$1/root/home" ] && sudo chown --recursive vncsna:vncsna /home/vncsna
fi
