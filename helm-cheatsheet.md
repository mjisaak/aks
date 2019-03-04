# Helm

Install Helm client

```bash
helm init --service-account tiller
```

Install and upgrade Tiller

```bash
helm init --upgrade
```

Check the version of Helm installed

```bash
helm version
```

List all installed Helm Charts

```bash
helm ls
```

Generate a Helm Chart

```bash
helm create mychart
```

Install a helm chart

```bash
helm install --name <NAME> .\Helm\ --namespace=<MYNS>
```

upgrade a helm chart
```bash
helm upgrade <chartname> .\Helm\ --namespace <MYNS>
```

helm delete --purge