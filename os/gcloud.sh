#!/bin/bash -l

set -e

GCLOUD_URL=https://dl.google.com/dl/cloudsdk/channels/rapid/downloads
GCLOUD_PACKAGE=google-cloud-cli-588.0.0-linux-x86_64.tar.gz
GCLOUD_DIR="$HOME/.local/share/google-cloud-sdk"

if [[ ! -d "$GCLOUD_DIR" ]]; then
    cd "$HOME/.local/share"
    curl --remote-name $GCLOUD_URL/$GCLOUD_PACKAGE
    tar --extract --file $GCLOUD_PACKAGE
    ./google-cloud-sdk/install.sh
fi

# Dependencies
# gcloud components install gke-gcloud-auth-plugin

# Setup
# gcloud auth login
# gcloud projects list
# gcloud config set project PROJECT_ID

# Setup GKE
# gcloud container clusters list
# gcloud container clusters get-credentials CLUSTER --location=LOCATION

# References
# https://cloud.google.com/sdk/docs/install
