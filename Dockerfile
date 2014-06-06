FROM ubuntu:trusty
MAINTAINER David Murphy <dave@schwuk.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu/ trusty main restricted universe" > /etc/apt/sources.list && \
    echo "deb http://archive.ubuntu.com/ubuntu/ trusty-updates main restricted universe" >> /etc/apt/sources.list && \
    apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python \
    python-dev \
    build-essential \
    python-pip
