FROM debian:buster-slim

RUN apt-get update -y && \
    apt install python3 -y

RUN mkdir h2o && cd h2o &&\
    apt-get install wget -y && \
    wget https://github.com/h2oai/wave/releases/download/v0.10.0/wave-0.10.0-linux-amd64.tar.gz && \
    tar -xzf wave-0.10.0-linux-amd64.tar.gz && \
    mv wave-0.10.0-linux-amd64 wave && \
    rm wave-0.10.0-linux-amd64.tar.gz
