#!/bin/bash -l

set -e

sudo groupadd --force docker
sudo usermod --append --groups docker $USER
newgrp docker
systemctl enable --now docker.service
systemctl enable --now containerd.service
