#!/bin/bash

docker run -d --rm --network host -v ${PWD}/notebooks:/home/jovyan/work --name semantix jupyter/all-spark-notebook:latest

echo "Waiting container warm-up!"
echo "Sleeping 60 seconds..."
sleep 60

URL=$(docker logs semantix 2>&1 | grep token | head -n 1 | grep -Po 'http\s*([^\n\r]*)')

echo "Browse to $URL"

