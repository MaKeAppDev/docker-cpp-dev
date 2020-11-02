FROM rikorose/gcc-cmake:latest

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    wget git doxygen lcov valgrind clang-format clang-tidy-10 && \
    rm -rf /var/lib/apt/lists/*
