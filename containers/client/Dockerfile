FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get -y install software-properties-common && \
  add-apt-repository -y ppa:ethereum/ethereum && \
  apt-get update

RUN apt-get -y install ethereum

ENV GETH_ROOT /client

WORKDIR ${GETH_ROOT}
ADD ./containers/client/run.sh .
RUN chmod +x ./run.sh
CMD ${GETH_ROOT}/run.sh
