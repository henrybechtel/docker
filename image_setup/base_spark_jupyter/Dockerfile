# Build image by running the following in the shell while in the same directory as this file
# docker build -t base_spark_jupyter:latest .

# Starting with miniconda base
FROM continuumio/miniconda3

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the working directory
COPY . /app

# Install the dependencies
RUN conda env update --file base_requirements.yml --prune

# Install vim and curl and jdk
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "openjdk-11-jdk"]
RUN ["apt-get", "install", "-y", "vim"]
RUN ["apt-get", "install", "-y", "curl"]