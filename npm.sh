#!/bin/bash -l
set -euxo pipefail

npm config set //npm.pkg.github.com/:_authToken=$1
