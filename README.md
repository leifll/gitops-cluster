# Learning Microservices

A first example of a cluster with microservices.

## Cluster Start

The cluster start scripts below assumes kind, istio, kubectl and flux are already installed.

To start the cluster first set env vars with your github user. Then go to the `cluster` directory and execute the script `create-cluster.sh`.
1. `export GITHUB_USER=<your github username>`
1. `export GITHUB_TOKEN=<your github personal access token>`
1. `cd cluster`
1. `./create-cluster.sh`
