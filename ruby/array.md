## Arrays
- Sting to Array  
  `"string".chars` #["s","t","r","i","n","g"]  
  `"string".split("")` #["s","t","r","i","n","g"]  
  
- Array to String
 `array.join`

- number of occurences of an element in array
  `array.count(element)`

- loop in array  
  for name in array  
    puts name  
  end  
  
- inject (reduce): give one output  
 multiple all for example: `array.inject(:*)`  
 multiple with exception: `array.inect{|memory, number| number == 3 ? memory : memory*number}`  
  
- map (collect): give an array output  
  `array.map{|x| x*2}`  
  `array.map(&:to_s)`  
    
- select: query on array  
  `array.select{|x| x != 1}`  
   
- reject: opposite of select
   
