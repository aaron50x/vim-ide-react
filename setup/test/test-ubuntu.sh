#!/bin/bash

docker run --rm -it -v $PWD/../..:/app -w /app/setup -e OS=ubuntu ubuntu ./setup-and-assert
