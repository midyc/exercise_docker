#!/bin/bash
set -e
[[ -z ${{ github.sha }} ]] && Tag='local' || Tag=${ github.sha::8}
REPO="ghcr.io/$docker_username/"
echo "${REPO}"
docker build -t "${REPO}micronaut-app:latest" -t "${REPO}micronaut-app:1.0-$Tag" app/
