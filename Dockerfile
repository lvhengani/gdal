#
# A general purpose container with gdal/ogr, numpy/scipy and pycopg2
#
FROM ubuntu:latest

LABEL maintainer "Lufuno vhengani <lvhengani@csir.co.za>"

ENV DEBIAN_FRONTEND noneinteractive

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y \
        gdal-bin \
        libgdal-dev \
        python-gdal \
        python-numpy \
        python-scipy \ 
        curl \
        wget \
        python-psycopg2
