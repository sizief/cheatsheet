## Arrays
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
  
