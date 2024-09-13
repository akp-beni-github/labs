# Basic deploy application in kubernetes

We have prerequisite on this exam, so you should provision `Kind` Kubernetes with [How to provision lab cluster](#how-to-provision-lab-cluster)

1. Please create `deployment.yaml` with:
   1. Container name is `httpd-alpine`
   2. You should create `labels` in deployment manifest.
   3. You should create web server with default configuration.
   4. Your container must lean as possible as you can.
   5. Container port should not use default HTTP port.
2. Please create service.yaml with:
   1. Type of service is `NodePort`
3. Plase deploy this application in `demo-http` namespace.
4. Capture browser screen that you can access to your application.

*** You should at least 2 files in this exam

1. deployment-nginx.yaml
2. service-nginx.yaml
3. (Optional) namespace.yaml

## How to provision lab cluster

You can follow up step to create mini cluster of Kubernetes in docker engine on your machine.

```bash
terraform init
terraform apply [-auto-approve]
```
