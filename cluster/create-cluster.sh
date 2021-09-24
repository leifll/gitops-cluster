#!/bin/bash

# Create the kind cluster.
kind create cluster --config=kind-cluster.yaml

# Install istio.
istioctl install -f istio-for-knative.yam -y

# Install flux to the cluster and create a github repo that flux will monitor. Note
# that the repository created here contains only the flux system.
flux bootstrap github \
 --owner=$GITHUB_USER \
 --repository=gitops-Kubernetes-demo \
 --branch=main \
 --path=./clusters/demo-cluster \
 --personal \
 --private=false
