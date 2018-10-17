### define variable
 State variables (variables declared outside of functions) are by default storage and written permanently to the blockchain, while variables declared inside functions are memory and will disappear when the function call ends.  
  uint count; //integer
  sting name;
  int count;

### struct
  struct Zombie {
    string name;
    uint age;
  }  
z = Zombie("Ali",20)  
a.name // ali
  
### Array
 uint[4] name; // array of int width 4
 Zombie[] name; // array of struct zombie
 uint[] public name; //anyone can read this array

 arrayName.push(new element)
  
### functions
  // public functions  
  function createZombie(string _name, uint _dna){}  
    
  // private functions  
  function _createZombie(uint _dna) private {}  
    
  // return  
  function sayHello() public returns (string) {}  
     
  // view only  
  function _generateRandomDna(string _str) private view returns (unit)  
    
### type casting  
  uint(var)  
    
### Events
  event NewZombie(uint ZombieId,string name, uint dna);  
  NewZombie(id, _name, _dna);  

### Mappings 
  mapping (uint => address) public zombieToOwner;
  
### If 
  // Require to following condition to be true.  
  // to comare two strings, compare ther keccak256 value.   
  require(keccak256(_name) == keccak256("Vitalik"));  
    
### Inheritance  
  contract Ali is Human {}  
    
### visibility
  - private -> accesiblr inside class
  - public -> accessible to class and childern
  - internal -> acceesible to children
  - external -> statc class methods, accessible from outside the class

    
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



