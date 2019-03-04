Connect it via RPC:  
run `geth --rpc` it does not need any username or password
`curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc": "2.0", "id": 1, "method": "eth_blockNumber", "params": []}' https://mainnet.infura.io/v3/99f720fff2634935b847fe561224ffb3`  
`curl -X POST -H "Content-Type: application/json" --data '{"jsonrpc": "2.0", "id": 1, "method": "eth_blockNumber", "params": []}' http://localhost:8545
`    

Or connect through console:  
Run `geth` in one tab and then in another tab run   
  - `geth attach`  
  - `eth.syncing`  
  

## Status of syncing

`curl -X POST -H "Content-Type: application/json" --data \
  '{"jsonrpc":"2.0","method":"eth_syncing","params":[],"id":1}' \
  http://localhost:8545`

## Run mist with local node
  Cd to/geth/folder  
  `./geth --datadir=./chaindata/`  #get the ipc url to use it on next command
  `/Applications/Mist.app/Contents/MacOS/Mist --args --rpc /Users/ali/projects/geth/chaindata/geth.ipc`  
  
## Delete accounts on Mist
  Cd to/geth/chaindata/keystore  
  delete correspondent account/key  
## Mining
  `geth attach  --datadir=./chaindata/`  
  `miner.start()`  
  `miner.stop()`  
