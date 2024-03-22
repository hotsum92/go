#!/bin/bash -eu

docker run --rm -it -v $PWD:/usr/src/app -w /usr/src/app golang:1.21 go run .
