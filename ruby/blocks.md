## Lambda  
  - define
    `say_something = lambda {puts "this is lambda"}  
    `say_something = -> {puts "this is lambda"}  
    `say_something = -> (name) {puts "#{name}"}  



## Proc  
  - define  
    `say_something =  Proc.new {puts "this is lambda"}  
  
  
  - call  
    `say_something.call`
    `say_something.call("ali")`  
    `array.map(&lambda)`
    `array.:map(&say_something)`
