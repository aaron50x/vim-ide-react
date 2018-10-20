#!/bin/bash

docker run --rm -it -v $PWD/../..:/app -w /app/setup -e OS=arch base/archlinux ./setup-and-assert
