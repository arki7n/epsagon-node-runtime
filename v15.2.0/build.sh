#!/bin/sh

export NODE_VERSION=15.2.0

docker build --no-cache --build-arg NODE_VERSION -t node-provided-lambda-v15.2.0 .
docker run --rm node-provided-lambda-v15.2.0 cat /tmp/node-v${NODE_VERSION}.zip > ./layer.zip