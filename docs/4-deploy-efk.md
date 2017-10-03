# Installing EFK


To install EFK execute the following command:

## 2. Deploy using Helm

To deploy EFK execute the following command:

```
$ make deploy-efk
```

You should see:

```
NAME                                    READY     STATUS              RESTARTS   AGE
elasticsearch-client-3190678438-474qm   1/1       Running             0          5m
elasticsearch-client-3190678438-ht5sg   1/1       Running             0          5m
elasticsearch-data-0                    1/1       Running             0          5m
elasticsearch-data-1                    1/1       Running             0          5m
elasticsearch-master-774701425-fmf39    1/1       Running             0          5m
elasticsearch-master-774701425-gnslr    1/1       Running             0          5m
elasticsearch-master-774701425-t0whc    1/1       Running             0          5m
fluentd-5kqpr                           1/1       Running    		  0          5m
fluentd-kfnwp                           1/1       Running             0          5m
fluentd-qhn9x                           1/1       Running             0          5m
kibana-419526880-7nwn1                  1/1       Running             0          5m
```

You can also execute:

```
$ helm list
```

You should see:

```
NAME	REVISION	UPDATED                 	STATUS  	CHART    	NAMESPACE
efk 	1       	Thu Sep 28 14:00:24 2017	DEPLOYED	efk-0.1.0	default   
```

## Update hostfile (local machine)

We need to edit our hostfile to allow access to Kibana.

Please follow the steps below to make the necessary changes.

```
$ sudo nano /etc/hosts
```

Add the following lines to the file (where 35.190.186.113  is the External IP address of your ingress node):

Note: To get External ip, execute the following:

```
kubectl get service
```

You should see:

```                  
NAME                      CLUSTER-IP      EXTERNAL-IP      PORT(S)        AGE
elasticsearch-data        None            <none>           9300/TCP       5m
elasticsearch-discovery   10.11.255.48    <none>           9300/TCP       5m
elasticsearch-master      10.11.244.195   <none>           9200/TCP       5m
kibana                    10.11.247.20    35.190.186.113   80:30640/TCP   5m
kubernetes                10.11.240.1     <none>           443/TCP        7m
```

You can copy the external IP of the kibana service, and paste down below:

```
35.190.186.113  kibana.example.com
```

## Validate installation (from your local machine)

To validate everything has been successfully installed browse to the following URL:

[kibana.example.com](http://kibana.example.com)