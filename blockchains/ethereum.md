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
