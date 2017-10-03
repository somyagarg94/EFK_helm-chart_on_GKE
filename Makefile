
# ################################################
# Commands to execute from your local machine
# ################################################

cluster:
	gcloud container clusters create efk-helm-chart \
    --zone us-east1-c \
    --machine-type n1-standard-1 \
    --num-nodes 5

	kubectl get nodes
	curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > get_helm.sh
	chmod 700 get_helm.sh
	./get_helm.sh


destroy-cluster:
	gcloud container clusters delete efk-helm-chart \
    --zone us-east1-c 
	

deploy-efk:
	helm upgrade --install efk charts/efk
	kubectl get pods 

