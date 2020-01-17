puts "==> Enter the first number:"
number1 = gets.chomp.to_f

puts "==> Enter the second number:"
number2 = gets.chomp.to_f

addition = number1 + number2
subtraction = number1 - number2
product = number1 * number2
quotient = number1 / number2
remainder = number1 % number2
power = number1 ** number2

puts "==> #{number1} + #{number2} = #{addition}"
puts "==> #{number1} - #{number2} = #{subtraction}"
puts "==> #{number1} * #{number2} = #{product}"
puts "==> #{number1} / #{number2} = #{quotient}"
puts "==> #{number1} % #{number2} = #{remainder}"
puts "==> #{number1} ** #{number2} = #{power}"
