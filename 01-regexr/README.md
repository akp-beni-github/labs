# Understanding regular expression

Please found nginx logs in file name **exam.log**  
Developer needs to convert log file into json format with pattern below:  

```json
{
    "timestamp": "32/Aug/2222:10:10:10 +0000",
    "ip": "172.28.0.1",
    "method": "GET",
    "path": "/",
    "http_version": "HTTP/1.1",
    "return_code": 200,
    "body_byte": 59,
    "http_referer": "http://localhost:8080/",
    "http_user_agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:91.0) Gecko/20100101 Firefox/91.0",
}
```

Please provide script to convert **access log** in file `exam.log` to the format required.

## Summary Requirement

1. Script convert logs to **json**. Can be any programming language such as bash, python, golang or etc.
2. Regular Expression to filter logs in the file.
