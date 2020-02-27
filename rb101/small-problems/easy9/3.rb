def negative(number)
  if number == 0 || number < 0
    return number
  else
    return -number
  end
end

puts negative(5)
puts negative(-3)
puts negative(0)
