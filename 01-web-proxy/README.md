# Troubleshoot nginx problem

> Client --> Nginx --> Simple HTTP  
  
Developer is trying to develop "Simple web". According to the design. It needs Nginx working as a Proxy server.
Developer has written the `docker-compose.yaml` file for Nginx but it needs to be update to serve HTTPS using self-sign certificate instead of HTTP. He requests you to help him create a Nginx configuration.

## Summary Requirement

1. Update `default.conf` to support HTTPS
2. Create self-sign certificate with following information
   1. private key size 2048
   2. expired in 7 day
   3. Common name to be `localhost` or ETC.
   4. Does not required to trust with rootCA
3. Other parameter in Nginx configuration to make it works as well.

## Special Requirement(Optional)

1. Team requires nginx to be possible to change config without update default.conf file. They request to parse parameter from `Global Environment`. So you have to create template config to be used instead of default.conf
2. Mount access log from nginx to be kept inside host which you can check logs directly from your machine.


#### resources 
```
https://devopsian.net/p/nginx-config-template-with-environment-vars/
```

#### cmd
```
NGINX_HOST=proxy docker-compose up -d 

```