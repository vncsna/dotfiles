#!/bin/bash -l
set -euxo pipefail

groupadd docker || echo "groupadd: success"
usermod -aG docker vncsna
newgrp docker

systemctl enable docker.service
systemctl enable containerd.service
