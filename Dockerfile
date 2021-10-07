FROM docker.io/library/ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get upgrade -qy && apt-get install -qy \
    texlive-full \
    python-pygments gnuplot-nox \
    make git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
