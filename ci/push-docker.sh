#!/bin/bash
set -e
COMMIT_SHA=$1
echo "$docker_password" | docker login ghcr.io --username "$docker_username" --password-stdin
docker push "ghcr.io/$docker_username/micronaut-app:1.0-$COMMIT_SHA" 
docker push "ghcr.io/$docker_username/micronaut-app:latest" &
wait


# set -e
# [[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}" 
# REPO="ghcr.io/$docker_username/"
# echo "${REPO}"
# docker build -t "${REPO}micronaut-app:latest" -t "${REPO}micronaut-app:1.0-$Tag" app/
