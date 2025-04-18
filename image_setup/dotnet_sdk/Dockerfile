# This Dockerfile defines the main base docker image to be used for dotnet development activities 
# Build image by running the following in the shell while in the same directory as this file
# docker build -t dotnet_sdk:latest .

# Starting with python base
FROM mcr.microsoft.com/dotnet/sdk:8.0

# Set the working directory inside the container
WORKDIR /image_setup

# Copy the current directory contents into the working directory
COPY . /image_setup

# Back out of the image_setup directory
WORKDIR /


# Install vim and curl
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]
RUN ["apt-get", "install", "-y", "curl"]
RUN ["apt-get", "install", "-y", "unixodbc"]


# Set the working directory inside the container
# WORKDIR /..

