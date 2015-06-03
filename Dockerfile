# Pull base image.
FROM docker.cucloud.net/base

# File Author / Maintainer
MAINTAINER Shawn Bower <shawn.bower@gmail.com>

# Install python and pip
RUN \
  apt-get update && \
  apt-get install -y  python python-pip && \
  rm -rf /var/lib/apt/lists/*

# Install AWS CLI tools
RUN pip install awscli

# Define working directory.
WORKDIR /