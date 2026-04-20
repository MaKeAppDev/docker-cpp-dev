ARG UBUNTU_VERSION=24.04
FROM ubuntu:${UBUNTU_VERSION}

ENV DEBIAN_FRONTEND='noninteractive'

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    # keep-sorted start
    build-essential \
    clang \
    clang-format \
    clang-tidy \
    cmake \
    cppcheck \
    curl \
    doxygen \
    git \
    iwyu \
    lcov \
    libclang-rt-dev \
    llvm \
    pipx \
    valgrind \
    wget \
    zip \
    # keep-sorted end
    && rm -rf /var/lib/apt/lists/* \
    && pipx install cpplint

COPY use_clang.sh use_gcc.sh /usr/bin/

RUN ln -s /usr/bin/python3 /usr/bin/python

ENV PATH=/root/.local/bin:"${PATH}"
