#!/bin/bash

LOG_DIR="./logs"
BACKUP_DIR="./backup-log"

# using -p
mkdir -p "$BACKUP_DIR"

# move from subfolder to main folder
find $LOG_DIR -mindepth 2 -type f -exec mv {} $LOG_DIR/ \;

# move from main folder to backup-log folder (only if its not empty)
for item in "$LOG_DIR"/*; do
  if [ -f "$item" ]; then # regular file 
    if [ -s "$item" ]; then # size > 0 
      mv "$item" "$BACKUP_DIR"
    else
      echo "Skipping empty file: $item"
    fi
  elif [ -d "$item" ]; then # skip folder
    echo "Skipping directory: $item"
  else 
    echo "Skipping non-regular file: $item"
  fi
done


# iterare ./backup-log for error
echo "Checking for error logs..."
for file in "$BACKUP_DIR"/*; do
  if grep -qi "ERROR:" "$file"; then #using grep qi
    echo "Error found in file: $file" #file name
    grep -i "ERROR:" "$file" # error info
  fi
done