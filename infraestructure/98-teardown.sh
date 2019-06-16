#!/bin/bash
set -e

rm -rf ~/.composer

docker kill $(docker ps -q)
docker rm $(docker ps -aq)
docker rmi $(docker images dev-* -q)