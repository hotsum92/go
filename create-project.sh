#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No arguments provided"
    exit 1
fi

mkdir "$1"
cd "$1"

docker run --rm -it -v $PWD:/go -v /etc/passwd:/etc/passwd:ro -u $(id -u):$(id -g) golang:1.21 go mod init $1
rm -rf pkg
