puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp

if choice == "s"
  sum_between = (1..integer).inject(:+)

  puts "The sum of the integers between 1 and #{integer} is #{sum_between}"

elsif choice == "p"
  product_between = (1..integer).inject(:*)

  puts "The product of the integers between 1 and #{integer} is #{product_between}"
else
  puts "That's not a correct choice."
end
