### msg
  msg.sender \\ give the address of sender  
  msg.balance \\ give the balance of sender  
  msg.sender.transfer(amount) \\transfer the amount to sender  
  
### Contracts
  address(this); //gt the address of contract
  SpaceMuffin muffin = new SpaceMuffin(); 
  
### define variable
 State variables (variables declared outside of functions) are by default storage and written permanently to the blockchain, while variables declared inside functions are memory and will disappear when the function call ends.  
  <type> <visibility> <name> = <value>;
  uint public count; //integer
  byte32 public name;  /string
  int count;
  address
  
### visibility
  - private -> accesiblr inside class
  - public -> accessible to class and childern
  - internal -> acceesible to children
  - external -> static class methods, accessible from outside the class
  
### functions
function <name> ([arg1, arg2, ...]) <visibility> [mutability] [returns ([ret1, ret2, ...])] ;
  // name function arguments with starting underscore, variables without underscore means global ones. 
  // public functions  
  function createZombie(string _name, uint _dna) public {}  
    
  // private functions  
  function _createZombie(uint _dna) private {}  
  
  // return  
  function sayHello() public returns (string) {}  
  
  // pure
  // This function NEITHER accesses contract variables NOR modifies them
  function isBestMuffin() external pure returns (bool) {
  function isBestMuffin(_int a, byte32 name) external pure returns (bool) {
  
  // view only  
  // This function accesses variables but does NOT modify them
  function _generateRandomDna(string _str) private view returns (unit)  
  
### If 
  // require(<boolean expression>);
  // Require to following condition to be true.  
  // to compare two strings, compare their keccak256 value.   
  require(keccak256(_name) == keccak256("Vitalik"));  
    
### Modifiers 
  modifier <name>([arg1, arg2, ...]) { 
  [require(<e>);]* // all the requirements
  
  _; // means that the function code will be inserted here
}
  
modifier securityCheck(bytes32 _password) {
  require(_password == "Super Super Muffin");
  _;
}  
  
function eat(bytes32 _password) public securityCheck(_password) {
  bite = bite + 1;
}  

### Array
 uint[4] name; // array of int width 4  
 Zombie[] name; // array of struct zombie  
 uint[] public name; //anyone can read this array  

 arrayName.push(new element)
 arrayName.length
  
### struct
  struct Zombie {
    string name;
    uint age;
  }  
z = Zombie("Ali",20)  
z.name // ali
  
### Enum
  enum Directions {left, right, top, bottom}  
  Directories public d = Directories.left or Directories(0)  
  uint(d) #0
### type casting  
  uint(var)  
    
### Events
  event NewZombie(uint ZombieId,string name, uint dna);  
  NewZombie(id, _name, _dna);  

### Mappings 
  // it's like a table with custom index  
  mapping (uint => address) public zombieToOwner;  
  
### Inheritance  
  contract Ali is Human {}  
    

    
### Intefaces
we're only declaring the functions we want to interact with — in this case getNum — and we don't mention any of the other functions or state variables.
  
Secondly, we're not defining the function bodies. Instead of curly braces ({ and }), we're simply ending the function declaration with a semi-colon (;).
    
  address NumberInterfaceAddress = 0xab38... 
  // ^ The address of the FavoriteNumber contract on Ethereum
  NumberInterface numberContract = NumberInterface(NumberInterfaceAddress);
  // Now `numberContract` is pointing to the other contract

  function someFunction() public {
    // Now we can call `getNum` from that contract:
    uint num = numberContract.getNum(msg.sender);
    // ...and do something with `num` here
  }

  

### Gas matters!
Can save gas with specifying `uint32` or `uinu16` instead of `uint` in structs. 
### Payable  
    function () payable public {
This function is a so-called fallback or default function, which is called if the transaction that triggered the contract didn’t name any of the declared functions in the contract, or any function at all, or didn’t contain data. Contracts can have one such default function (without a name) and it is usually the one that receives ether. That’s why it is defined as a public and payable function, which means it can accept ether into the contract. It doesn’t do anything, other than accept the ether, as indicated by the empty definition in the curly braces ({}). If we make a transaction that sends ether to the contract address, as if it were a wallet, this function will handle it.





