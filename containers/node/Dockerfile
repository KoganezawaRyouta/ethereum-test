FROM rk2826/ethereum-geth

ENV GETH_ROOT /node
COPY ./src/config/genesis.json ${GETH_ROOT}/src/config/genesis.json

WORKDIR ${GETH_ROOT}
ADD ./containers/node/run.sh .
RUN chmod +x ./run.sh
CMD ${GETH_ROOT}/run.sh
