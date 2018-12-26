npm install web3  
npm install ethereumjs-tx  
node  
var Web3 = require('web3')  

## Connect and test
### Using Infura
var url = 'https://mainnet.infura.io/v3/bf8fb9fc7c864563982b214934f3385a'  //get url from Infura
var web3 = new Web3(url)  
var address = '0x742d35Cc6634C0532925a3b844Bc454e4438f44e' //from etherscan.io/accounts get one of the richest addresses  
web3.eth.getBalance(address, (err, bal) => {balance = bal})  
balance // get the balance of that account in 'wei'  
web3.utils.fromWei(balance, 'ether')  
  
### create account
web3.eth.accounts.create()  
  
### Using Ganache
var url = 'HTTP://127.0.0.1:7545'
var web3 = new Web3(url)
var address = '0xe1fd8b9311b3b8C31c4Cb1118Ecc2f0D815B5336' //get address from gui
web3.eth.getBalance(address, (err, bal) => {balance = web3.utils.fromWei(bal)})
web3.utils.fromWei(balance)

## Connect to contract
var abi = '...' //get it from etherscan.io/tokens  
var contractAddress = adress //get it from etherscan.io  
var contract = web3.eth.Contract(abi, address) // create an object of an contract  
contract.methods  
contract.methods.name().call((error, result) => {console.log(result)}) //call the name method  
contract.methods.totalSupply().call((error, result) => {console.log(result)}) //call the name method  
var address = '' // get from etherscan.io/token holders tab   
contract.methods.balanceOf(address).call((error, result) => {console.log(result)}) //call the name method  

## send transaction
const account1 = ''  
const account2 = ''  
web3.eth.sendTransaction({from: account1, to: account2, value: web3.utils.Towei('1','ether')})