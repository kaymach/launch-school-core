def is_odd?(number)
  number % 2 == 1
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)

#further exploration

def is_odd2?(number)
  number.remainder(2) == 1
end

puts "______"

puts is_odd2?(2)
puts is_odd2?(5)
puts is_odd2?(-17)
puts is_odd2?(-8)
puts is_odd2?(0)
puts is_odd2?(7)

#even further making % work if modulus or remainder

def is_odd3?(number)
  number.abs % 2 == 1
end

puts "______"

puts is_odd3?(2)
puts is_odd3?(5)
puts is_odd3?(-17)
puts is_odd3?(-8)
puts is_odd3?(0)
puts is_odd3?(7)