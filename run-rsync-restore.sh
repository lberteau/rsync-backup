#!/bin/bash

function run-rsync {
  echo "Running restore from $2 to $1"
  mkdir -p "$1"
  rsync --archive --delete-after -h --info=progress2 "$2" "$1"
  echo "Restore from $1 to $2 successfull"
}

source="/mnt/d/Photos/"
target="/mnt/e/Backup/Photos"
run-rsync ${source} ${target}

source="/mnt/d/Videos/"
target="/mnt/e/Backup/Videos/"
run-rsync ${source} ${target}

source="/mnt/d/Archives/"
target="/mnt/e/Backup/Archives"
run-rsync ${source} ${target}

source="/mnt/d/Users/"
target="/mnt/e/Backup/Users"
run-rsync ${source} ${target}

