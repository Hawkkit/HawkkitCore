#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-hawkkitpay/hawkkitd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/hawkkitd docker/bin/
cp $BUILD_DIR/src/hawkkit-cli docker/bin/
cp $BUILD_DIR/src/hawkkit-tx docker/bin/
strip docker/bin/hawkkitd
strip docker/bin/hawkkit-cli
strip docker/bin/hawkkit-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
