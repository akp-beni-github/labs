# Kubernetes Problems

Our application was broken because team modified some field in a manifest file. You should verify problems and fix it.  
Before doing exam lab, You must provision `kind kubernetes` in your host machine. Please see more detail in [How to provision lab cluster](#how-to-provision-lab-cluster)

## Architecture

Frontend -> Backend -> MySQL

## Summary Requirement

- [ ] Frontend must connect to backend API.
- [ ] Backend must connect to database service.
- [ ] Frontend and backend pods must spawn in node `worker3`. You can test with command to delete them for re-balancing pods resources.
- [ ] Please explain your solution in `solution/SOLUTION.md`

## How to provision lab cluster

```bash
terraform init
terraform apply [-auto-approve]
```
