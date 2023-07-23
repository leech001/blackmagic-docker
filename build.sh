#!/bin/bash

docker build . -t leech001/blackmagic
docker create --name blackmagic leech001/blackmagic:latest
docker cp blackmagic:/blackmagic/src/blackmagic.bin .
docker cp blackmagic:/blackmagic/src/blackmagic.elf .
docker rm -v blackmagic