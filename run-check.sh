#!/bin/sh
name="simple-docker-cplusplus"

docker build -q -t $name .
image=$(docker images $name)
version=$(docker run -t -w /src $name gcc --version)

echo "COMPILER: G++ ${version:12:5}"
echo "SIZE: ${image##* }\n"