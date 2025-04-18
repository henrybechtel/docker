# This Dockerfile defines the main base docker image to be used for python DE development activities 
# Build image by running the following in the shell while in the same directory as this file
# docker build -t base_python:latest .

# Starting with python base
FROM python:3.11

# Set the working directory inside the container
WORKDIR /image_setup

# Copy the current directory contents into the working directory
COPY . /image_setup

# Install the dependencies
RUN pip3 install -r requirements.txt 

# Back out of the image_setup directory
WORKDIR /

# Install vim and curl
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]
RUN ["apt-get", "install", "-y", "curl"]
