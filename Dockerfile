# Dockerfile to build a Ubuntu container using the latest image
# Ansible is installed and can be used to run and install more modules
# Mount the required directory or directories for playbooks
#
# AUTHOR(s): Russell Johnston <rujohns2@cisco.com>

FROM ubuntu:latest
LABEL org.cisco.authors="Russell Johnston <rujohns2@cisco.com>"
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