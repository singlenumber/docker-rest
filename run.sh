#!/bin/bash -e

cd $(dirname $0)

IMAGE=${IMAGE:-dockerrest}

docker run -p 5000:5000 -p 8000:8000 -p 8080:8080 -ti --rm \
-v "$(pwd)"/src:/src \
--name ${IMAGE} \
${IMAGE} $*
