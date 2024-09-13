#!/bin/bash

# Path to the log file
LOG_FILE="./exam.log"
outputpath="./json.log"

regex='([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+) - - \[(.*)\] \"([A-Z]{3,6}) (/[^ ]*) (HTTP[^"]*)\" ([0-9]{1,3}) ([0-9]{1,3}) \"([^"]*)\" \"([^"]*)\"'


# Loop through each line in the log file
while IFS= read -r line; do
  # Check if the line matches the access log format
  if [[ $line =~ $regex ]]; then
    # Extract each matched group
    ip="${BASH_REMATCH[1]}"
    timestamp="${BASH_REMATCH[2]}"
    method="${BASH_REMATCH[3]}"
    path="${BASH_REMATCH[4]}"
    http_version="${BASH_REMATCH[5]}"
    return_code="${BASH_REMATCH[6]}"
    body_byte="${BASH_REMATCH[7]}"
    http_referer="${BASH_REMATCH[8]}"
    http_user_agent="${BASH_REMATCH[9]}"

  


    # Create a JSON object for each log entry
    json=$(cat <<EOF
{
    "timestamp": "$timestamp",
    "ip": "$ip",
    "method": "$method",
    "path": "$path",
    "http_version": "$http_version",
    "return_code": $return_code,
    "body_byte": $body_byte,
    "http_referer": "$http_referer",
    "http_user_agent": "$http_user_agent"
}
EOF
)
fi
    echo "$json"
    echo "${json}" >> "${outputpath}"

done < "$LOG_FILE"




