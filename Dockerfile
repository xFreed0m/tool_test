FROM ubuntu:16.04

RUN \
  echo 'alias python="python3"' >> ~/.bashrc && \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y iputils-ping git curl wget python3 python3-pip \
  build-essential software-properties-common && \
  pip3 install --upgrade pip

ENV HOME /root

WORKDIR /root

CMD ["bash"]
