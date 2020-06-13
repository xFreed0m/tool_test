FROM ubuntu:16.04

RUN \
  echo 'alias python="python3"' >> ~/.bashrc && \
  export GOROOT=/usr/local/go && \
  export GOPATH=$HOME/go && \
  export PATH=$GOPATH/bin:$GOROOT/bin:$PATH && \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y iputils-ping \
  git \
  curl \
  wget \
  python3 \
  python3-pip \
  build-essential \
  software-properties-common \
  curl \
  procps \
  unzip \
  golang-go && \
  pip3 install --upgrade pip

ENV HOME /root

WORKDIR /root

CMD ["bash"]
