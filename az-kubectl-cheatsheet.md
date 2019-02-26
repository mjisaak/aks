### Az and kubectl cheatsheet

Az login to Azure
```
az login
```

If you have multiple subscription, you can set the desired one using:
```
az account set --subscription mbr_mvp
```

Install kubectl
```
az aks install-cli 
```

Set the kubectl context to a specifc aks:
```
az aks get-credentials --resource-group=$KUBE_GROUP --name=$KUBE_NAME
```

Set permissions for the dashboard
```
kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard
```

launch the dashboard
```
az aks browse --resource-group $KUBE_GROUP --name $KUBE_NAME
```


Get information about the current cluster
```
kubectl cluster-info
```

Delete all pods
```
kubectl delete --all pods 
```