#!/bin/bash

function run-rsync {
  echo "Running backup from $1 to $2"
  mkdir -p "$2"
  rsync --archive --delete-after --info=progress2 "$1" "$2"
  echo "Backup from $1 to $2 successfull"
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

