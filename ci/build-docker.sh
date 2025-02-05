#!/bin/bash
set -e
echo ${env.GIT_COMMIT}
echo '${env.GIT_COMMIT}'
echo "${env.GIT_COMMIT}"
[[ -z "${env.GIT_COMMIT}" ]] && Tag='local' || Tag="${env.GIT_COMMIT::8}" 
REPO="ghcr.io/$docker_username/"
echo "${REPO}"
docker build -t "${REPO}micronaut-app:latest" -t "${REPO}micronaut-app:1.0-$Tag" app/
