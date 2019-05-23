#!/bin/sh

docker build -t proxy-py .
docker run -d -p 8080:8080 proxy-py
