#!/bin/bash

docker build -t eternalterminal:latest .
CID=$(docker create eternalterminal:latest)
docker cp ${CID}:/EternalTerminal/build ./build
