#!/bin/bash

path=$( cd "$(dirname "$0")" ; pwd -P )
docker run -it -p 8888:8888 \
    -v $path/work:/home/jovyan/work \
    jupyter/scipy-notebook \
    start-notebook.sh --NotebookApp.token=''
