#!/bin/bash -l

set -e

if [[ ! "$(groups)" == *"docker"* ]]; then
    sudo groupadd --force docker
    sudo usermod --append --groups docker $USER
    newgrp docker
    systemctl enable docker.service
    systemctl enable containerd.service
fi
