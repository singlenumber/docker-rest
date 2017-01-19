#!/bin/bash

set -e

pushd $(dirname $0)

containerName=${containerName:-dockerrest}

docker build -t $containerName .
