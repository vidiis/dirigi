# Use an official lightweight Python image.
# https://hub.docker.com/_/python
FROM python:alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the HTML file into the container
COPY . .

# Install `http.server` for Python3
RUN python -m ensurepip && pip install http.server

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run http.server when the container launches
CMD ["python", "-m", "http.server", "80"]
