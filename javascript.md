## Questions
- What is Symbol data type?
- The `XMLHttpRequest` is theh only way to send request using JS without any packages?

## NPM
Node Package Manager. three types of modules are available:
- packages for CLI
- packages for node `var ld = require('lodash');`
- packages for front-end
Install packages: `npm install package_name` use `-g` to install it globally instead of project folder. 
`export NODE_PATH=/usr/local/lib/node_modules` to require gloablly installed packages in node modules.
- Babel converts import and export declaration to CommonJS (require/module.exports)
## General
Original way of sendig HTTP request is xmlHttpRequest. which limited to same origin. Other wise any website can use the request to DDOS your api.
Using semicolon at the end of line is optional
use `node` to run the code on terminal
use `node file.js` to run the code inside file
use `typeof(x)` to get the type
NAtive objects: ` Date, Math, parseInt, eval` VS host objects `assuming browser environment): window, document, location, history, XMLHttpRequest, setTimeout, getElementsByTagName`

## Data types
- Number
- String
- Boolean `true` `false`
- Null `null` but with typeof it returns `object`
- Undefined `undefined`
- Symbol ?
- Object `{name: 'ali'}` or `[1,2,3]`
- Function `function() {}`
