#!/usr/bin/env bash

docker build -t johaab-jekyll .
docker run -tdp 4000:4000 johaab-jekyll
# docker-compose up ????
# website running here:  http://0.0.0.0:4000/ or localhost:4000
