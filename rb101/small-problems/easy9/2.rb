def twice(number)
  number_string = number.to_s

  if number_string.length.even? && number_string[0..(number.to_s.length / 2 - 1)] == 
    number_string[(number_string.length / 2)..(number_string.length - 1)]
    return number
  else
    number * 2
  end
end

puts twice(37)
puts twice(44)
puts twice(334433)
puts twice(444)
puts twice(107)
puts twice(103103)
puts twice(3333)
puts twice(7676)
puts twice(123_456_789_123_456_789)
puts twice(5)
