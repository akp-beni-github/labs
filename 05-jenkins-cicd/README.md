# Exam for CI/CD Jenkins pipeline

Our team devlops an application with `Typescript` and `Express framework`. They designed an application to change listen HTTP port by using `Global Environment`.
They assign you to design and develop CI/CD pipeline for their application with following conditions in [Summary Requirements](#summary-requirements)  
Before doing exam lab, You must provision `kind kubernetes` in your host machine. Please see more detail in [How to provision lab cluster](#how-to-provision-lab-cluster)

## Summary Requirements

1. Create at least 1 Jenkinsfile to complete our objectives.
2. There should be 4 stages in Jenkins pipeline:
   1. Executed `Unit test` and get report to jenkins dashboard.
   2. Executed OWASP dependencies check and get report to jenkins dashboard.
   3. Build docker image from Dockerfile and push to your docker registry such as docker.io.
   4. Deploy to `kind K8s` with any resouce manager such as manifest, helm, operator or ETC.
3. You must add configuration in jenkins's job and capture screen with following:
   1. Project and configuration pages.
   2. Job dashboard pages with status.
   3. All report files such as unittest(coverage), OWASP report and other reports.
   4. Console output from `kubectl get pods` and `kubectl get svc`.

### How to provision lab cluster

```bash
cd ./kind
terraform init
terraform apply [-auto-approve]
```
