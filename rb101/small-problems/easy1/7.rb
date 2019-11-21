def stringy(number)
str = ""

  until str.size == number
  str += "1"
  break if str.size == number
  str += "0"
  end
str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'