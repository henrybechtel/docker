# This Dockerfile defines the main base docker image to be used for python DE development activities 
# Build image by running the following in the shell while in the same directory as this file
# docker build -t duckdb:latest .

# Starting with python base
FROM python:3.10

# Set the working directory inside the container
WORKDIR /image_setup

# Copy the current directory contents into the working directory
COPY . /image_setup

# Back out of the image_setup directory
WORKDIR /

# Unzip duckdb
RUN unzip /image_setup/duckdb_cli-linux-amd64.zip


# Install the dependencies
# RUN pip3 install -r /image_setup/requirements.txt 


# # Install vim and curl
# RUN ["apt-get", "update"]
# RUN ["apt-get", "install", "-y", "vim"]
# RUN ["apt-get", "install", "-y", "curl"]


## Run duckdb
# ENTRYPOINT ["./duckdb"]

