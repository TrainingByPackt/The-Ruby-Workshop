def calculator(a, b)
    yield(a, b)
  end
  
  #Addition
  puts calculator(9, 2) { |a, b| a + b } 
  #Multiplication
  puts calculator(9, 2) { |a, b| a * b } 