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
    clang \
    valgrind \
    clang-format \
    clang-tidy \
    python3-pip \
    python3-venv && \
    rm -rf /var/lib/apt/lists/*

COPY use_clang.sh use_gcc.sh /usr/bin/

RUN ln -s /usr/bin/python3 /usr/bin/python

