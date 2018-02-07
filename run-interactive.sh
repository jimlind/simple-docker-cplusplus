#!/bin/sh
name="simple-docker-cplusplus"

docker build -t $name .
docker run -it -v $(pwd)/src:/src -w /src $name sh