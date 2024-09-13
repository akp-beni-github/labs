# Docker-Compose Advance

Developers want to use `docker-compose` to test the application in local machine and they request your help to create `Dockerfile` and `docker-compose.yml`. You can write them with following topics.

## Application Architecture

Dev team has 2 applications which called `frontend` and `backend`. The frontend was developed using `VueJS` framework and the backend was developed by using `Golang`.
The frontend must be accessible by other clients outside of your host (public access).
The backend used local `SQLite` database for its persistent data.

## Summary Requirement

- [ ] Dockerfile or Containerfile in `./backend` folder.
- [ ] Dockerfile or Containerfile in `./frontend` folder.
- [ ] `Docker-compose.yml` in same path of README.md
- [ ] The frontend and the backend should access from http method and domain.
- [ ] Docker-compose.yml in same path of README.md
- [ ] The frontend and the backend should access from http method and domain.
- [ ] Please explain your solution to solve this exam in `solution/SOLUTION.md`
- [ ] (Optional) Database should only access in docker network (you also should not access it).
- [ ] (Optional) You can use `host volume` to persistent data. The data in MySQL should not delete when your container is down.
