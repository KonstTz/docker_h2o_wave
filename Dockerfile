FROM debian:bullseye-slim

RUN apt-get update -y && \
    apt install python3 -y && \
    apt-get install python3-pip -y && \
    pip install h2o-wave

RUN mkdir h2o && cd h2o && mkdir graphs && \
    apt-get install wget -y && \
    wget https://github.com/h2oai/wave/releases/download/v0.10.0/wave-0.10.0-linux-amd64.tar.gz && \
    tar -xzf wave-0.10.0-linux-amd64.tar.gz && \
    mv wave-0.10.0-linux-amd64 wave && \
    rm wave-0.10.0-linux-amd64.tar.gz 

CMD ["/h2o/wave/waved"]

#docker run -t -i -p 10101:10101 -v "$(pwd)/code":/h2o/graphs 40710c2acbd4
#docker exec -d fa50f8078769 python3 /h2o/graphs/test.py