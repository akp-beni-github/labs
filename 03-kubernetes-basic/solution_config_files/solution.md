### encounter problem with assinging external ip to the kind nodes
https://medium.com/@rashmibr/kubernetes-nodeport-service-ce418b98818e

## so I forward by-passing the nodeport but still thru the svc for the load balancing with kube proxy

```
kubectl port-forward service/httpd-service 30002:8080 -n demo-http  

```
![img](./img.png)

### for the leaness, i think it should be already optimized to lean if i pulled it from the dockerhub, with these 16 layers.
https://hub.docker.com/layers/library/httpd/alpine/images/sha256-38b383b01b09862ddd5d5739cda75a508f7935bdc05e408f5a1f8024c00eb093?context=explore

### for the part, not to use default http port(80) as container port 
```txt
Honestly, I don't understand why it does'nt matter how I configure the <container port> and <apache listening on port> to whatever port, the apache will ***still working fine just the same (showing it works message) ***. Eventhough the ports are not matching between httpd.conf and the container port. 
```