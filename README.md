geth --datadir /root/eth_private_net init /root/files/genesis.json
geth --networkid "15" --nodiscover --datadir "/root/eth_private_net" console 2>> /root/eth_private_net/geth_err.log
