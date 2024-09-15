# Basic Docker

Developers are trying to create the API service and they make a `docker-compose` file to test it in develop environment. When they try command `docker-compose up`, it does not work and return error message with `Internal server error`. They ask you to find the root cause and fix it.

## Summary Requirement

1. What is the cause of the `Internal server error`.
    >  wrong variable naming
        'user': os.getenv('CONFIG_DB_USER'),
        'password': os.getenv('CONFIG_DB_PASS'),
        'host': os.getenv('CONFIG_DB_HOST'),
        'port': os.getenv('CONFIG_DB_PORT'),
        'database': os.getenv('CONFIG_DB_NAME')
    >    

    #### (additional) Port Availability Issue
```
ben@bens-MacBook-Air interview-lab-v1.2.0 % lsof -i :5000
COMMAND   PID USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
ControlCe 640  ben    7u  IPv4 0x4626da9bd921e00b      0t0  TCP *:commplex-main (LISTEN)
ControlCe 640  ben    8u  IPv6 0x4626da970c6bb60b      0t0  TCP *:commplex-main (LISTEN)
ben@bens-MacBook-Air interview-lab-v1.2.0 % ps -p 640 -o pid,comm,user
  PID COMM             USER
  640 /System/Library/ ben 
ben@bens-MacBook-Air interview-lab-v1.2.0 % ps -p 640 -o args
ARGS
/System/Library/CoreServices/ControlCenter.app/Contents/MacOS/Co
ben@bens-MacBook-Air interview-lab-v1.2.0 % 
```

2. After the problem was solved, Developers may facing `Internal server error` in a short period of time but the rest will be working fine. What is the cause and how to fix?
    > it could be while the schema being executed and server was temporary shut down
    2024-09-15 11:45:59+00:00 [Note] [Entrypoint]: /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/init.sql
    >

