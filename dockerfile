# Use an ARMv7 compatible Ubuntu base image
FROM arm32v7/ubuntu:20.04

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Update and install dependencies
# Replace 'your-package-list' with the actual packages your application needs
RUN apt-get update && apt-get install -y \
    your-package-list \
    && rm -rf /var/lib/apt/lists/*

# Copy your application to the container
COPY ./app /app

# Set the working directory to /app
WORKDIR /app

# Install any additional dependencies or perform any build steps
# For example, if you're using Python, you might want to install pip packages
# RUN pip3 install -r requirements.txt

# Specify the command to run your application
# This command will vary depending on how your application is started
# For example, to run a Python application:
# CMD ["python3", "inference.py"]
