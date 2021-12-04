#!/bin/bash -l
set -euxo pipefail

systemctl enable docker.service
systemctl enable containerd.service

groupadd docker || echo "groupadd: success"
usermod -aG docker $USER
newgrp docker
