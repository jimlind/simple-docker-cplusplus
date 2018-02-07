#!/bin/sh
name="simple-docker-cplusplus"

docker build -t $name .
docker run -t -w /src $name sh -c "g++ print.cpp -o print; ./print"