#!/bin/bash

# filter only http res
regex='([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+) - - \[(.*)\] \"([A-Z]{3,6}) (/[^ ]*) (HTTP[^"]*)\" ([0-9]{1,3}) ([0-9]{1,3}) \"([^"]*)\" \"([^"]*)\"'

# Sample 
log_line='172.28.0.1 - - [27/Aug/2021:11:41:30 +0000] "GET / HTTP/1.1" 200 612 "-" "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:91.0) Gecko/20100101 Firefox/91.0" "-"'


if [[ $log_line =~ $regex ]]; then
  echo "Entire match: ${BASH_REMATCH[0]}"
  echo "IP address: ${BASH_REMATCH[1]}"
  echo "Timestamp: ${BASH_REMATCH[2]}"
  echo "Method: ${BASH_REMATCH[3]}"
  echo "path: ${BASH_REMATCH[4]}"
  echo "version: ${BASH_REMATCH[5]}"
  echo "return_code: ${BASH_REMATCH[6]}"
  echo "body_byte: ${BASH_REMATCH[7]}"
  echo "http_referer: ${BASH_REMATCH[8]}"
  echo "http_user_agent: ${BASH_REMATCH[9]}"
  
else
  echo "No match found."
fi