#!/usr/bin/env bash

set -o nounset
set -o errexit
set -o pipefail

# Run s2i build to create base images
make s2i_build_base_images

export KUBECONFIG="$(kind get kubeconfig-path)"
make kind_setup