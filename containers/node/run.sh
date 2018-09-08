#!/bin/bash

# Initialize ethereum
geth --datadir $GETH_ROOT/private_net init $GETH_ROOT/src/config/genesis.json

# generate and store a wallet password
if [ ! -f $GETH_ROOT/.accountpassword ]; then
    echo `date +%s | sha256sum | base64 | head -c 32` > $GETH_ROOT/.accountpassword
fi

if [ ! -f $GETH_ROOT/.primaryaccount ]; then
    geth --networkid "15" --nodiscover --datadir "$GETH_ROOT/private_net" --password $GETH_ROOT/.accountpassword account new > $GETH_ROOT/.primaryaccount
fi

geth --networkid "15" --nodiscover --datadir "$GETH_ROOT/private_net" --password $GETH_ROOT/.accountpassword --mine --rpc --rpcvhosts "node" --rpcaddr "0.0.0.0" --rpcport "8545" --rpcapi "db,eth,net,web3" --rpccorsdomain "*"

