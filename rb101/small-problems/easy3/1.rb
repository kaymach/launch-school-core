array = []

puts "==> Enter the 1st number:"
number1 = gets.chomp.to_i

puts "==> Enter the 2nd number:"
number2 = gets.chomp.to_i

puts "==> Enter the 3rd number:"
number3 = gets.chomp.to_i

puts "==> Enter the 4th number:"
number4 = gets.chomp.to_i

puts "==> Enter the 5th number:"
number5 = gets.chomp.to_i

puts "==> Enter the last number:"
number6 = gets.chomp.to_i

array << number1 << number2 << number3 << number4 << number5

if array.include?(number6)
  puts "The number #{number6} appears in #{array}."
else
  puts "The number #{number6} does not appear in #{array}."
end
