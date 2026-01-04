# Use the official Ubuntu image as a base
FROM ubuntu:20.04

# Set non-interactive mode for apt-get to avoid prompts
ARG DEBIAN_FRONTEND=noninteractive

# Update package lists and install basic tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget \
    curl \
    vim \
    git \
    build-essential \
    software-properties-common && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the default command
CMD ["bash"]
