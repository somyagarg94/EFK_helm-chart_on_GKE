# EFK stack running on GKE #

The following repository will create you a Kubernetes cluster using:

1. [GKE](https://console.cloud.google.com) for the underlying infrastructure.

## What is setup? ##
 
 This repository setup the following:
 
 - 5 Worker nodes

## Prerequisites ##

A list of prerequisities for Mac can be found [here](docs/1-mac-prerequisites.md)

A list of prerequisities for Windows can be found [here](docs/2-windows-prerequisites.md)

## Cluster creation ##

A list of steps to build the Kubernetes cluster can be found [here](docs/3-build-cluster.md)

## Cleanup

To clean up your local machine and remove all the nodes from GKE execute the following:

```
$ make destroy-cluster
```