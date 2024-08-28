#!/bin/bash

# Run the container with 
docker run -d \
    --name base_jupyter_container \
    -v ./:/app \
    -e JUPYTER_TOKEN=docker \
    -p 8888:8888 \
    base_jupyter

# Open a shell prompt inside the container
docker exec -it base_jupyter_container bash

