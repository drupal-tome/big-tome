#!/usr/bin/env bash

read -p "This script spawns many PHP processes and can use up a lot of system resources. Continue (y/n)? " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  exit 1
fi

composer install
drush si minimal -y
drush en tome_sync -y
# On my computer this combination of processes/entities works fastest.
time drush tome:import --process-count=5 --entity-count=100 -y
drush cr
