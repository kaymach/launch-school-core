# codewars https://www.codewars.com/kata/56269eb78ad2e4ced1000013/train/ruby

# check google for how to do square root without ruby method

def find_next_square(sq)
  squared = Math.sqrt(sq)
  next_square = squared + 1
  
  return squared if squared == squared.to_i
  -1
end

p find_next_square(121)
