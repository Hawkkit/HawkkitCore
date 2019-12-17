FROM debian:stretch
LABEL maintainer="Hawkkit Developers <dev@hawkkit.org>"
LABEL description="Dockerised HawkkitCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
