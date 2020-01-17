DIGITS = {0=>"0", 1=>"1", 2=>"2", 3=>"3", 4=>"4", 5=>"5", 6=>"6", 7=>"7", 8=>"8", 9=>"9"}


def integer_to_string(number)
  string_digits = number.digits.reverse.map { |number| DIGITS[number] }
  
  value = ""
  string_digits.each { |string| value << string}
  value
end

puts integer_to_string(4321)
puts integer_to_string(0)
puts integer_to_string(5000)
