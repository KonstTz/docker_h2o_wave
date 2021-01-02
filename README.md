# Docker for h2o wave

A Docker image for [H2O Wave](https://h2oai.github.io/wave/)

## Requirements

- Docker

- docker-compose

## Usage

Build image.

```console
docker-compose build
```

Start Wave Server

```console
docker-compose up -d
```

Run python code to update the page (`test.py` for example)

```console
$ docker exec -d wave python3 /code/test.py
```

 Navigate to http://localhost:10101/hello in order to see the results of the script 
