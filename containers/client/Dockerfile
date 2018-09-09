FROM rk2826/ethereum-geth
ENV GETH_ROOT /client

WORKDIR ${GETH_ROOT}
ADD ./containers/client/run.sh .
RUN chmod +x ./run.sh
CMD ${GETH_ROOT}/run.sh
