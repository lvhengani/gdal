#
# A general purpose container with pip, dal/ogr, numpy/scipy and pycopg2
#
FROM ubuntu:latest

LABEL maintainer "Lufuno vhengani <lvhengani@csir.co.za>"

ENV DEBIAN_FRONTEND noneinteractive
RUN sed 's/main$/main universe multiverse/' -i /etc/apt/sources.list
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y \
        build-essential \
        python \
        python-dev \
        python-distribute \
        python-pip \
        software-properties-common \
        libcurl4-openssl-dev \  
        python-numpy \
        python-scipy \ 
        curl \
        wget \
        python-psycopg2 && \
    pip install --upgrade pip && \    
    add-apt-repository ppa:ubuntugis/ubuntugis-unstable && \ 
    apt-get update && \
    apt-get -y upgrade && \
    apt-get -y dist-upgrade && \ 
    apt-get install -y \    
        gdal-bin \
        libgdal-dev \
        python-gdal && \
    apt-get remove --purge -y build-essential python-dev