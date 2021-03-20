#!/usr/bin/env bash

set -e

image_name="custom-nginx"

while read -r version; do
    echo ">> make docker nginx image with version: ${version}"
    docker buildx build --build-arg NGINX_VERSION=${version} -t "${image_name}:${version}" -f ./Dockerfile.nginx .
done <<< $(echo $(cat ./nginx-version) | tr " " "\n")