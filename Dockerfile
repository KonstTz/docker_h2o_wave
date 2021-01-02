FROM debian:bullseye-slim

ARG WAVE_VERSION

RUN apt-get update -y && \
    apt install python3 -y && \
    apt-get install python3-pip -y && \
    pip install h2o-wave

RUN mkdir code && apt-get install wget -y && \
    wget https://github.com/h2oai/wave/releases/download/v0.10.0/wave-0.10.0-linux-amd64.tar.gz && \
    tar -xzf wave-${WAVE_VERSION}-linux-amd64.tar.gz && \
    mv -v wave-${WAVE_VERSION}-linux-amd64/* . && \
    rm -r wave-${WAVE_VERSION}-linux-amd64 && \
    rm wave-${WAVE_VERSION}-linux-amd64.tar.gz 

CMD ["./waved"]
