# Use a minimal docker image
FROM alpine:3.7

# Install G++
RUN apk add --update g++

# Copy the local src directory to Docker
COPY ./src /src