#!/bin/bash

# Port mapping: Map port 1 on the Docker host (your machine) to TCP port 2 in the container.
# For volume mapping, use "/" on mac and linux and "\" on windows.
# Run the container from the bash shell with 

# Run the container with 
docker run -d \
    --name base_jupyter_container \
    -v ./:/app \
    -e JUPYTER_TOKEN=docker \
    -p 8888:8888 \
    base_jupyter

# Open a shell prompt inside the container
docker exec -it base_jupyter_container bash

