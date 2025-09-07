
---

## 3) **helm-weatherapp-chart/README.md**

```markdown
# Helm: WeatherApp Chart

This repository contains the **Helm chart** used to deploy the WeatherApp into Kubernetes.  
It defines the Deployment, Service, and Ingress with AWS ALB annotations.  

ArgoCD (bootstrapped via [gitops-argocd](https://github.com/your-org/gitops-argocd)) continuously watches this chart and applies updates automatically.

---

## Usage

To test locally with Helm:

```bash
helm install weatherapp ./weatherapp-chart -f examples/values-dev.yaml
```
In GitOps mode:

-Push changes to this repo (templates or values).

-ArgoCD detects changes and syncs them into the cluster automatically.

Project Flow:

1.The weatherapp pipeline pushes a new Docker image to Docker Hub.

2.The Helm chart values (image tag) are updated here.

3.ArgoCD detects the chart update and deploys the new version to the EKS cluster.

4.The ALB ingress exposes the application to users.
