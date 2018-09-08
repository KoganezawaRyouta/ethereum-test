FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get -y install software-properties-common && \
  add-apt-repository -y ppa:ethereum/ethereum && \
  apt-get update

RUN \
  apt-get -y install ethereum \
  solc

ENV GETH_ROOT /node
COPY ./src/config/genesis.json ${GETH_ROOT}/src/config/genesis.json

WORKDIR ${GETH_ROOT}
ADD ./containers/node/run.sh .
RUN chmod +x ./run.sh
CMD ${GETH_ROOT}/run.sh
