init
```
$ geth --datadir /node/private_net init /node/files/genesis.json
```

Launch with foreground
```
$ geth --networkid "15" --nodiscover --datadir "/node/private_net" console 2>> /node/private_net/geth_err.log
```

Launch with background
```
$ nohup geth --networkid "15" --nodiscover --datadir "/node/private_net" 2>> /node/private_net/geth_err.log &
```

Attach to javascript console
```
$ geth --datadir "/node/private_net" attach ipc:/node/private_net/geth.ipc
```

Generate EOA
````
personal.newAccount("passwd")
````

Compile sol
```
$ solc --abi --bin SingleNumRegister.sol
```

Attach ethereum console container
```
$ docker attach <ethereum console container name>
```

Append to hosts
```
127.0.0.1 node
```
