FROM ubuntu:16.04

RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y iputils-ping git curl wget python3 python3-pip

ENV HOME /root

WORKDIR /root

CMD ["bash"]
