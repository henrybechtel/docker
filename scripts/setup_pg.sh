#!/bin/bash

# Run the container with 
docker run -d \
    --name pg_container \
    -v ./_pg15_data:/var/lib/postgresql/data \
    -e POSTGRES_USER=postgres \
    -e POSTGRES_PASSWORD=postgres \
    -p 5432:5432 \
    postgres:15 

# Open a shell prompt inside the container
docker exec -it pg_container bash

# Start psql
# psql -U postgres
