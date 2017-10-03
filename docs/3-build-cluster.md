# Build the Kubernetes cluster

## 1. Create Infrastructure

To create our infrastructure execute the following commands:

```
$ make cluster
```

## 2. Check if Helm is running

```
$ helm version
```

You should see:

```
Client: &version.Version{SemVer:"v2.6.1", GitCommit:"bbc1f71dc03afc5f00c6ac84b9308f8ecb4f39ac", GitTreeState:"clean"}
Server: &version.Version{SemVer:"v2.6.1", GitCommit:"bbc1f71dc03afc5f00c6ac84b9308f8ecb4f39ac", GitTreeState:"clean"}
```

## 3. Deploy EFK ##

To deploy EFK follow the steps [here](4-deploy-efk.md)