#!/bin/bash

# Create the kind cluster.
kind create cluster --config=kind-cluster.yaml

#export GITHUB_TOKEN=<your-token>
#export GITHUB_USER=<your-username>

# Install flux to the cluster and create a github repo that flux will monitor. Note
# that the repository created here contains only the flux system.
flux bootstrap github \
 --owner=$GITHUB_USER \
 --repository=gitops-Kubernetes-demo \
 --branch=main \
 --path=./clusters/demo-cluster \
 --personal \
 --private=false
