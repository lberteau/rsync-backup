#!/bin/bash

function run-rsync {
  echo "Running restore from $1 to $2"
  mkdir -p "$2"
  rsync --archive --delete-after -h --info=progress2 "$1" "$2"
  echo "Restore from $1 to $2 successfull"
}

target="/mnt/d/Photos"
source="/mnt/e/Backup/Photos/"
run-rsync ${source} ${target}

target="/mnt/d/Videos"
source="/mnt/e/Backup/Videos/"
run-rsync ${source} ${target}

target="/mnt/d/Archives"
source="/mnt/e/Backup/Archives/"
run-rsync ${source} ${target}

target="/mnt/d/Users"
source="/mnt/e/Backup/Users/"
run-rsync ${source} ${target}

