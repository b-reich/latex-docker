FROM ubuntu:latest

RUN apt-get update -q && apt-get upgrade -qy && apt-get install -qy \
    texlive-full \
    python-pygments gnuplot \
    make git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
