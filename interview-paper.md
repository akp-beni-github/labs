
1. What are the pros and cons of using git as a source code
management? Tell the difference between Git and GitHub.
```
gitops
- pros: version control, collaboration, automated deployments, and faster time to market

- cons: learning curve, complexity, security, and maintenance challenges
Teams need to manage multiple repositories, branches, and pull requests.
need to ensure that access to repositories and configurations is restricted 
and that sensitive information is not exposed

```
2. Please explain the git workflow which you are currently
using and the advantages of using this workflow.

```
What i have done on my past project was 'GitHub Flow' without git versioning
on monorepo 
-frontend and backend, 2 apps
-branch management: feature/frontend, feature/backend pull to main for Production-ready code
(no Release branches or Hotfix branches, no multiple environments dev staging and prd)

comparing to Git Flow 
- easy for one man project with a demo code without git versioning

- monorepo can make the version control harder since there only one prd branch for two apps. 
GitHub Flow, rolling back might be more difficult compared to Git Flow where releases are tagged and isolated
- no staging so QA could not test or if so test in production🥲

https://www.split.io/blog/github-flow-vs-git-flow-whats-the-difference/
```

3. Please explain the concept of HTTPS protocol and describe
how it works.
```
Osi layer 7 protocol, Consist of three concepts
-tls three ways handshake for secure communication
-encryption with keys
-Authentication of the server with crt signed by CA

all in sequence: https://www.youtube.com/watch?v=yRWFOP66OE0
```

4. What does "Error 503 service unavailable" mean? Explain
which condition could be the main cause of the error.

```
503 service unavailable
Common causes are that a server is down for maintenance or overloaded.

1)During maintenance, server administrators may temporarily route all traffic to a 503 page

2)In overload cases, some server-side applications will reject requests with a 503 status. 
but in case that the rate limiting is being set, the appropriate response is 429 'Too Many Requests'.
```

5. What is the difference between Cloud Native and Cloud
Agnostic?
```
Cloud native is when you create application that using cloud native tool in a specific cloud
Such as using serverless lambda in aws.
Cloud agnostic is when you create application using framework or tool 
that could be used in most clouds. Like when you create app and deploy in kubernetes.
```

6. Please provide summary information about the “Infra as a
code” tool which you have been using. 

```
 terraform IaC
-declarative 
-state management, tracking history and stage of infra. (Terraform state files)
-big open source community and support various cloud providers and services
-modularity, allow modules for reusability of IaC code
```

7. What is the difference between Pods and Deployments in Kubernetes?
```
A Deployment is a declarative management layer for Pods, 
ensuring the desired state (like the number of Pods) is achieved and maintained.
manages the lifecycle of Pods,
provides features like rolling updates, rollback, and scaling (horizontal pod scaling).
```

8. Please provide steps to make a service in Kubernetes
communicate with the other when they are located in different namespaces.
```
using service discovery

https://dev.to/narasimha1997/communication-between-microservices-in-a-kubernetes-cluster-1n41
If we have cluster-aware DNS service like CoreDNS running, we can use fully qualified DNS names. 
 {{service_name}}.{{namespace}}.svc.cluster.local:{{port}}
```

9. Please explain what a “Scheduler” is in Kubernetes, what
does it do? Why and when do we need to use it?
```
scheduler is a control plane process which **assigns Pods to Nodes**. 
The scheduler determines which Nodes are valid placements for each Pod in the scheduling queue 
according to constraints and available resources. 
The scheduler then ranks each valid Node and binds the Pod to a suitable Node.

in depth
https://cast.ai/blog/node-affinity-and-other-ways-to-control-scheduler/

answer:
The Kubernetes scheduler is fast, thanks to automation. However, it can be expensive as you may have to pay for resources that are insufficient for your different environments. 

#node selector: using matching label
#node affinity: using matching label with rules for different conditions

```

10. Explain the difference between “Declarative” and
“Imperative”.
```
Imparative: Specifies a sequence of commands to achieve a desired state. 
ex: Running a series of commands to manually deploy or update an application. 

Declarative: Specifies what the desired state should be without detailing how to achieve it.
ex: kubernetes .yaml, terraform .tf 
```


11. From the Manifest file below, find the errors and debug to
make the code run successfully.
```
---
apiVersion: v1
kind: Service
metadata:
name: opsta-server
labels:
k8s-app: opsta-server
spec:
ports:
name: https
port: 443
protocol: TCP
targetPort: https
selector:
k8s-app: opsta-server
```

```
---
apiVersion: v1
kind: Service
metadata:
  name: opsta-server
  labels:
    k8s-app: opsta-server
spec:
  ports:
    - name: https                
      port: 443
      protocol: TCP
      targetPort: 443             
  selector:
    k8s-app: opsta-server         
```

12. From the Dockerfile of NodeJS application, please find:
a. Version of node as written in the code.
b. Meaning of “alpine” in the code.
c. Should we use “CMD” or “ENTRYPOINT” at the last
line? and what is the reason for using it?
```
FROM node:16.8.0-alpine
LABEL authors="Opsta (Thailand)"
LABEL description="It’s provides for
interview only. \ You don't use for other
purposes."
WORKDIR /app
COPY . /app/
RUN npm install
RUN npm run build
USER root
CMD ["npm", "run", "start"]
```

```
a. 16.8.0 
b. the OS Alpine Linux, which is known for its minimal size and efficiency
(Node.js framework built on top of linux alpine OS)
c.CMD is typical for Dockerfiles since it allow to be overridden by Entrypoint later on 
```