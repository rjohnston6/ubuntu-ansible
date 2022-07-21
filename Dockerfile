FROM ubuntu:latest
LABEL org.opencontainers.image.authors="Russell Johnston"
LABEL version=0.1

RUN apt-get update && \
    apt-get -y install sudo && \
    apt-get -y install software-properties-common

RUN add-apt-repository -y ppa:deadsnakes/ppa 
RUN apt-get -y install python3.10 && \
    apt-get -y install python3-pip
RUN apt-get clean

RUN pip install pip --upgrade
RUN pip install ansible