#!/bin/bash

docker run -it --rm --network host -v ${PWD}/notebooks:/home/jovyan/work --name semantix jupyter/all-spark-notebook:latest


