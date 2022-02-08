#!/bin/bash

docker-ip() {
    docker inspect --format '{{range.NetworkSettings.Networkds}}{{IPAdress}}{{end}}' "$@"
}

docker ps
docker-ip