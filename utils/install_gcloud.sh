#!/bin/bash -l

set -e

GCLOUD_URL=https://dl.google.com/dl/cloudsdk/channels/rapid/downloads
GCLOUD_PACKAGE=google-cloud-cli-454.0.0-linux-x86_64.tar.gz

cd ~/.local/share
curl -O $GCLOUD_URL/$GCLOUD_PACKAGE
tar -xf $GCLOUD_PACKAGE
./google-cloud-sdk/install.sh

# Install gke plugin
# gcloud components install gke-gcloud-auth-plugin

# References
# https://cloud.google.com/sdk/docs/install
