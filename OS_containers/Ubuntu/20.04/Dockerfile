FROM ubuntu:focal
RUN apt update &&\
    apt -y install build-essential &&\
    apt -y install gcc-7 g++-7 gcc-8 g++-8 gcc-9 g++-9 gcc-10 g++-10 &&\
    apt -y install clang-6.0 clang-7 clang-8 clang-9 clang-10 &&\
    apt clean all
VOLUME ["/work"]
WORKDIR /work
