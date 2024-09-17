# Solution

## Writing your solution here

```
access http://localhost:8080/#/
there are some kind of startup delay before app is accessible
```
![img](./1.png)

### encountered problem while trying to run build
https://stackoverflow.com/questions/41392166/vue-js-build-not-working-with-npm-run-build
https://youtu.be/Qrf-WcrzkdQ?si=tsi6SnsQl9gmbeMT

solved by fixing the base path of vite.config.ts
```
export default defineConfig({
base: '/',
```

### host pv
since in the db.go, I redefined the path, .db files are stored in /data/
so the host pv will be volumes:
  - ./data:/data/ 


### The network mode i used is bridge. It isolates the services from other docker networks and ensures they can communicate with each other while not exposing the backend to the outside world, since the sqlite is also serverless, no publish port.


### resource Go+SQLite
https://awstip.com/containerize-go-sqlite-with-docker-6d7fbecd14f0