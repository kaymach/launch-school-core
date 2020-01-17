DIGITS = {0=>"0", 1=>"1", 2=>"2", 3=>"3", 4=>"4", 5=>"5", 6=>"6", 7=>"7", 8=>"8", 9=>"9"}


def integer_to_string(number)
  string_digits = number.digits.reverse.map { |number| DIGITS[number] }
  
  value = ""
  string_digits.each { |string| value << string}
  value
end

def signed_integer_to_string(number)
  if number < 0
    "-#{integer_to_string(number.abs)}"
  
  elsif number == 0
    DIGITS[0]
  
  else
    "+#{integer_to_string(number)}"
  end
end
  

puts signed_integer_to_string(4321)
puts signed_integer_to_string(-123)
puts signed_integer_to_string(0)
