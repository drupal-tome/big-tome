#!/usr/bin/env bash

read -p "This script spawns many PHP processes and can use up a lot of system resources. Continue (y/n)? " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  exit 1
fi

# Realistically you would want to keep Tome cache, but this project exists to
# test the worst performance cases.
drush cr
time drush tome:static --process-count=10 --path-count=100
