#!/bin/bash

# Create the kind cluster.
kind create cluster --config=kind-cluster.yaml

# Install flux to the cluster and specify the github repo that flux will monitor.
flux bootstrap github \
 --owner=$GITHUB_USER \
 --repository=learn-ms \
 --branch=main \
 --path=./cluster \
 --personal \
 --private=false \
 --components-extra=image-reflector-controller,image-automation-controller

# Create secret for app repos.
flux create secret git apps-auth \
 --url=https://github.com/leifll \
 --username=$GITHUB_USER \
 --password=$GITHUB_TOKEN \
 --namespace apps
