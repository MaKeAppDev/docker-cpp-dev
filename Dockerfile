FROM rikorose/gcc-cmake:latest

RUN apt update -y
RUN apt install -y git doxygen lcov valgrind clang-format
