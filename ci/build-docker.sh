#!/bin/bash
set -e
COMMIT_SHA=$1
echo $COMMIT_SHA
[[ -z "$COMMIT_SHA" ]] && Tag='local' || Tag="$COMMIT_SHA" 
REPO="ghcr.io/$docker_username/"
echo "${REPO}"
docker build -t "${REPO}micronaut-app:latest" -t "${REPO}micronaut-app:1.0-$Tag" app/
