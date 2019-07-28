## Questions
- What is Symbol data type? 
- The `XMLHttpRequest` is theh only way to send request using JS without any packages?
- Hoisting definition

## NPM
Node Package Manager. three types of modules are available:
- packages for CLI
- packages for node `var ld = require('lodash');`
- packages for front-end
Install packages: `npm install package_name` use `-g` to install it globally instead of project folder. 
`export NODE_PATH=/usr/local/lib/node_modules` to require gloablly installed packages in node modules.
- Babel converts import and export declaration to CommonJS (require/module.exports)

## General
`use strict`;  
Sting interpolation `console.log(\`${var}\`)`  
Original way of sendig HTTP request is xmlHttpRequest. which limited to same origin. Other wise any website can use the request to DDOS your api.  
Using semicolon at the end of line is optional.  
Use `node` to run the code on terminal.  
Use `node file.js` to run the code inside file.  
Use `typeof(x)` to get the type.  
Native objects: `Date, Math, parseInt, eval` VS host objects (assuming browser environment): `window, document, location, history, XMLHttpRequest, setTimeout, getElementsByTagName`

# Variables
- `var` whenever they occured, they proccessed before code execution.
- `function x(){y =1}; console.log(y) #=> 1` undeclared variables are global
- `let` declaration is not accessible before the line declared (`var` variables are)
- `let` scope is limited to closest enclosing block, `var` is to nearest function block.

## Data types
- Number
- String
- Boolean `true` `false`
- Null `null` but with typeof it returns `object`
- Undefined `undefined`
- Symbol ?
- Object `{name: 'ali'}` or `[1,2,3]`
- Function `function() {}`
- `Array` is not a `data type`. It is an `object` so `x = [1,2,3]; x[1] //2`

## Comparison
- `==` is equality operator, first coerce type and then compare values  
- `===` is identity operator, does not coerce types, check values and types are the same

## Conditions
- `if () {} else {} `

## Functions
- Functions are first class citizens in JS meaning that they are data types. `x = function ali(){1}; x //=> [function: ali]; x() //=> 1; x.name //=> ali`
- `function gholi(item = 'default name'){}`
- `const variable = function(arg){};`
- Arrow function `const variable = (arg, param) => {return arg * param}` or `const variable = arg => arg * 2 `. If there is only one parameter, there is no need to use parantheses and curly bruces.
- When we pass another function as a argument to a function, that first function called `callback function`

## Loops
- `for (var i in object){i}`
- `for (var i=0; i <10; i++){}`
- `while(){}`

## Iterators
- forEach `[1,2].forEach(item => console.log(item))` or `[1,2].forEach(function(item){console.log(item)})`
- map `[1,2].map(item => item * 2) //=> [2,4]`
- filter `[1,2].filter(item => item < 2) //=> [1]`
- findIndex `[a,b].FindIndex(item => {return item == b}) //=> 1`
- reduce `[1,2,3].reduce((accumulator,currentValue) => {return accumulator+currentValue}, 100) \\=> 106`

## Objects (Or hashes on streiod)
- define object `let obj = {name: 'ali', 'family name': 'deishidi'}; obj.name \\=>ali` or `obj['family name']`
- delete key `delete obj.name`
- define method `let obj = {name: 'ali', sendMessage(){console.log('I am object method')}}` or `let obj = {methodName: () => {}}`
- iterate over objects `for(let key in object){}` the index in loop would be a key only not object
- private attributes `let obj = {_name: 'ali'}`
- getter `let obj={get fullName(){}}`
- setter `let obj={set fullName(){}}`
- object factory 
```
  const robotFactory = (model, mobile) => {
  return {
    model: model,
    mobile: mobile,
    beep(){console.log('Beep Boop')}
  }
}
```
or
```
  const robotFactory = (model, mobile) => {
  return {
    model,
    mobile,
    beep(){console.log('Beep Boop')}
  }
}
```
- Destructured Assignment. instead of `const name = obj.name` go `const {name} = obj`

## Classes
```
class Person {
  constructor(name){
    this._name = name;
  }

  get name(){
    return this._name;
  }

  set name(newName){
    this._name = newName;
  }

  static generatePassword(){
    return Math.floor(Math.random() * 10000);
  }
}

class Teacher extends Person{
  constructor(name){
    ssuper(name)
  }
}
```





































