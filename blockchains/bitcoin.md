Config is in ~/.bitcoin/bitcoin.conf.  
Two ways to connect through RPC:  
  - Does not need config file
  - Run node: `bitcoind -server -rpcuser=ali -rpcpassword=whatever`  
  - And then: curl --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockcount", "params": [] }' -H 'content-type: text/plain;' http://ali:whatever@127.0.0.1:8332/  
    or  
  - Set user name and password in config file  
  - Run node `bitcoind`  
  - `curl --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "getblockcount", "params": [] }' -H 'content-type: text/plain;' http://127.0.0.1:8332/`  


### Wallet
`bitcoin-cli getwalletinfo`   
`bitcoin-cli walletpassphrase [password] [number of seconds]`  
`bitcoin listunspent`
  
#### create new address
`bitcoin-cli getnewaddress`  
#### check balance
`bitcoin-cli getbalancei`  
`bitcoin-cli getreceivebyaddress [address]`  


### get transaction raw data
`bitcoin-cli getrawtransaction 0627052b6f28912f2703066a912ea577f2ce4da4caa5a`  

### decode transaction data
`bitcoin-cli decoderawtransaction [raw-transaction-from-last-response]`  

### get block hash
`bitcoin-cli getblockhash 277316`  
`bitcoin-cli getblock [hash]`  
## RPC Calls
### set the username and password
  `vim Library/Application\ Support/Bitcoin/bitcoin.conf `  
  add followings:  
   `rpcuser=username`  
   `rpcpassword=password`  
  

