FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q \
    && apt-get upgrade -qy \
    && apt-get install -qy \
    git \
    gnuplot-nox \
    make \
    python-pygments \
    texlive-full \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /var/cache/* /var/log/*

WORKDIR /data
VOLUME ["/data"]
