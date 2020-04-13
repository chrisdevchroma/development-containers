FROM ubuntu:focal
RUN apt update &&\
    DEBIAN_FRONTEND=noninteractive apt -y install \
    lsb-release software-properties-common \
    build-essential gdb valgrind doxygen \
    git wget curl unzip unrar tar cmake \
    gcc-7 g++-7 gcc-8 g++-8 gcc-9 g++-9 gcc-10 g++-10 \
    clang-6.0 clang-7 clang-8 clang-9 clang-10 \
    &&\
    wget https://apt.llvm.org/llvm.sh && chmod +x llvm.sh &&\
    ./llvm.sh 11 &&\
    apt clean all
RUN apt update &&\
    DEBIAN_FRONTEND=noninteractive apt -y install \
    zlib1g-dev libcurl4-openssl-dev \
    libxinerama-dev libxcursor-dev xorg-dev libglu1-mesa-dev \
    &&\
    apt clean all
VOLUME ["/work"]
WORKDIR /work
