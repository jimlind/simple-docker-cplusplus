#!/bin/sh
name="simple-docker-cplusplus"

docker build -t $name .
docker run -t -w /src $name sh -c "g++ hello.cpp -o hello; ./hello"