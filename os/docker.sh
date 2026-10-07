#!/bin/bash -l

set -e

sudo groupadd --force docker
sudo usermod --append --groups docker $USER
systemctl enable --now docker.service
systemctl enable --now containerd.service

echo "Log out and back in for the docker group to take effect."
