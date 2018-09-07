init
```
$ geth --datadir /root/eth_private_net init /root/files/genesis.json
```

foreground
```
$ geth --networkid "15" --nodiscover --datadir "/root/eth_private_net" console 2>> /root/eth_private_net/geth_err.log
```

background
```
$ geth --networkid "15" --nodiscover --datadir "/root/eth_private_net" 2>> /root/eth_private_net/geth_err.log &
```

attach
```
$ geth --datadir "/root/eth_private_net" attach ipc:/root/eth_private_net/geth.ipc
```

Generate EOA
````
personal.newAccount("passwd")
````

