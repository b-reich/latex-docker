FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -qy \
    texlive-full \
    python-pygments gnuplot-nox \
    make git \
    && rm -rf /var/lib/apt/lists/*
    
RUN apt-get update -q && apt-get upgrade -qy 

WORKDIR /data
VOLUME ["/data"]
