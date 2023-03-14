#!/bin/bash

TYPE=$1
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
EXPECTED_BRANCH="main"

if [ -z "$1" ]
  then
    echo "deployment path should be specified. Allowed values: theme"
    exit
elif [ "$CURRENT_BRANCH" != "$EXPECTED_BRANCH" ]; then
  echo "live deploy is possible only for '${EXPECTED_BRANCH}' branch."
  exit
fi
