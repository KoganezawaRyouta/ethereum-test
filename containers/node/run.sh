#!/bin/bash

# initialize ethereum
geth --datadir $GETH_ROOT/private_net init $GETH_ROOT/src/config/genesis.json

# generate and store a wallet password
if [ ! -f $GETH_ROOT/.accountpassword ]; then
    echo `date +%s | sha256sum | base64 | head -c 32` > $GETH_ROOT/.accountpassword
fi

if [ ! -f $GETH_ROOT/.primaryaccount ]; then
    geth --datadir "$GETH_ROOT/private_net" --testnet --password $GETH_ROOT/.accountpassword account new > $GETH_ROOT/.primaryaccount
fi

# geth --networkid "3" --datadir "$GETH_ROOT/private_net" --syncmode "full" --password $GETH_ROOT/.accountpassword --rpc --rpcvhosts "node" --rpcaddr "0.0.0.0" --rpcport "8545" --rpcapi "db,eth,net,web3,personal" --rpccorsdomain "*"
geth --datadir "$GETH_ROOT/private_net" --testnet --syncmode "fast" --cache=3072 --password $GETH_ROOT/.accountpassword --rpc --rpcvhosts "node" --rpcaddr "0.0.0.0" --rpcport "8545" --rpcapi "db,eth,net,web3,personal" --rpccorsdomain "*"


