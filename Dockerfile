# Pull base image.
FROM 095493758574.dkr.ecr.us-east-1.amazonaws.com/base

# File Author / Maintainer
MAINTAINER Shawn Bower <shawn.bower@gmail.com>

# Install python and pip
RUN \
  apt-get update && \
  apt-get install -y  python python-pip jq && \
  rm -rf /var/lib/apt/lists/*

# Install AWS CLI tools
RUN pip install awscli

# Define working directory.
WORKDIR /
