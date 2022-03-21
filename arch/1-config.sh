#!/bin/bash -l
set -euxo pipefail

cp -r ./root/home/* /home
cp -r ./root/etc/* /etc
