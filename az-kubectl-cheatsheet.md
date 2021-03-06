# Az and kubectl cheatsheet

Az login to Azure

```bash
az login
```

If you have multiple subscription, you can set the desired one using:

```bash
az account set --subscription mbr_mvp
```

Install kubectl

```bash
az aks install-cli
```

Set the kubectl context to a specifc aks:

```bash
az aks get-credentials --resource-group=$KUBE_GROUP --name=$KUBE_NAME
```

Set permissions for the dashboard

```bash
kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard
```

launch the dashboard

```bash
az aks browse --resource-group $KUBE_GROUP --name $KUBE_NAME
```

Get information about the current cluster

```bash
kubectl cluster-info
```

Delete all pods

```bash
kubectl delete --all pods
```

Delete a pod by specifying a label

```bash
kubectl delete pod -l app-mssql
```

Edit the specification of a an entity e. g. service:

```bash
kubectl edit svc <myservice>
```

Get all certificates

```bash
kubectl get certificates --all-namespaces
```

Check certificate state:

```bash
kubectl describe certificate <mycert> --namespace <mynamespace>
```

Set the default namespace for all requests:

```bash
kubectl config set-context $(kubectl config current-context) --namespace=<mynamespace>
```

Get Enviornment variables for a pod

```bash
# connect tot he pod
kubectl exec -it <mypodname> -- /bin/bash
# print environment variablers
printenv
```