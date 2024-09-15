# Docker compose basic

Some story in here, hope to see me in next milestone exam.

## Summary Requirement

1. Please create the `Dockerfile` for `hello-1.js` and `hello-2.js`
2. Please create `docker-compose` file that grouping this services hello-1, hello-2 and nginx. You must write **health check** for each service.
3. You should create `nginx.conf` file.
4. You must access both `hello-1` and `hello-2` with same domain name:
   1. `/hello1` for service `hello-1`.
   2. `/hello2` for service `hello-2`.

## Guideline exam

There are 6 files in this exam.

- [x] hello-1.js (provided)
- [x] hello-2.js (provided)
- [ ] dockerfile of hello-1.js
- [ ] dockerfile of hello-2.js
- [ ] docker-compose.yaml
- [ ] nginx.conf


### network
```
https://localhost:8080/hello1 on host machine > http://nginx:80/hello1 > http://hello-1:8000/hello1 on the docker compose network
https://localhost:8080/hello2 on host machine > http://nginx:80/hello2 > http://hello-2:8000/hello2 on the docker compose network
``` 
