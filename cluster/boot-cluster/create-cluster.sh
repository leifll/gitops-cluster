#!/bin/bash

# Create the kind cluster.
kind create cluster --config=kind-cluster.yaml

# Install flux to the cluster and specify the github repo that flux will monitor. Note
# that the repository specified here contains only the flux system.
flux bootstrap github \
 --owner=$GITHUB_USER \
 --repository=learn-ms \
 --branch=main \
 --path=./cluster \
 --personal \
 --private=false
