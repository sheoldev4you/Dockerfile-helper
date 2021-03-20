#!/usr/bin/env bash

set -e

plateform="linux/amd64,linux/arm64"
image_name="ghcr.io/tfsheol/custom-nginx"

docker buildx build --platform ${plateform} -t "${image_name}-angular" -f ./Dockerfile.nginx.angular . --push