#!/usr/bin/env bash

set -e

image_name="ghcr.io/tfsheol/custom-nginx"

while read -r version; do
    echo ">> make docker image : ${image_name}:${version}"
    docker buildx build --build-arg NGINX_VERSION=${version} --no-cache --progress auto -t "${image_name}:${version}" -f ./Dockerfile.nginx --push .
done <<< $(echo $(cat ./nginx-version) | tr " " "\n")