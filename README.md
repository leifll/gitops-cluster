# Cluster using GitOps

A kubernetes cluster with flux and flagger for continous deployment.

## Cluster Start

The cluster start scripts below assumes kind, istio, kubectl and flux are already installed.

To start the cluster first set env vars with your github user and RabbitMQ login, the latter can be any string. Then go to the `cluster/boot-cluster` directory and execute the script `create-cluster.sh`.
1. `export GITHUB_USER=<your github username>`
1. `export GITHUB_TOKEN=<your github personal access token>`
1. `export RABBITMQ_ADMIN_USER=<invent a username for the RabbitMq admin>`
1. `export RABBITMQ_ADMIN_PASS=<invent a password for the RabbitMq admin>`
1. `cd cluster/boot-cluster`
1. `./create-cluster.sh`
