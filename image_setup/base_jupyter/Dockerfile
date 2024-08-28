# This Dockerfile defines the main base docker image to be used for python DE development activities 
# Build image by running the following in the shell while in the same directory as this file
# docker build -t base_jupyter:latest .

# Starting with python base
FROM python:3.10

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the working directory
COPY . /app

# Install the dependencies
RUN pip3 install -r requirements.txt 


# Install vim and curl
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]
RUN ["apt-get", "install", "-y", "curl"]
RUN ["apt-get", "install", "-y", "unixodbc"]


# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run Jupyter Notebook when the container launches
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]





