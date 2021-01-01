FROM debian:bullseye-slim

RUN apt-get update -y && \
    apt install python3 -y && \
    apt-get install python3-pip -y && \
    pip install h2o-wave

RUN mkdir graphs && apt-get install wget -y && \
    wget https://github.com/h2oai/wave/releases/download/v0.10.0/wave-0.10.0-linux-amd64.tar.gz && \
    tar -xzf wave-0.10.0-linux-amd64.tar.gz && \
    mv -v wave-0.10.0-linux-amd64/* . && \
    rm -r wave-0.10.0-linux-amd64 && \
    rm wave-0.10.0-linux-amd64.tar.gz 

CMD ["./waved"]
