FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get -y install software-properties-common && \
  add-apt-repository -y ppa:ethereum/ethereum && \
  apt-get update

RUN apt-get -y install ethereum solc
ONBUILD RUN echo "See you later"
