# This Dockerfile defines the main base docker image to be used for python DE development activities 
# Build image by running the following in the shell while in the same directory as this file
# docker build -t base_pyspark:latest .


# Start with base python image
FROM python:3.10-slim

# Switch to the root user to install dependencies
USER root

# Install Java (required for PySpark) and vim and curl
RUN apt-get update && apt-get install -y openjdk-17-jdk vim curl

# Set the working directory inside the container
WORKDIR /image_setup

# Copy the current directory contents into the working directory
COPY . /image_setup

# Install other dependencies
RUN pip install -r requirements.txt

# Back out of the image_setup directory
WORKDIR /
