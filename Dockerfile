FROM ubuntu:20.04

ENV DEBIAN_FRONTEND='noninteractive'

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    build-essential \
    cmake \
    wget \
    git \
    doxygen \
    lcov \
    valgrind \
    clang-format \
    clang-tidy \
    python3-pip \
    python3-venv && \
    rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/python3 /usr/bin/python

