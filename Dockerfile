# https://github.com/lambci/docker-lambda#documentation
FROM lambci/lambda:build-provided.al2

RUN yum remove -y cmake
RUN yum install -y openssl-devel
RUN curl -LO https://cmake.org/files/v3.18/cmake-3.18.2.tar.gz && \
    tar -xvzf cmake-3.18.2.tar.gz && \
    cd cmake-3.18.2 && \
    ./bootstrap && \
    make install
