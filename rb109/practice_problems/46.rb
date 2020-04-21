puts "Enter an integer greater than 0:"
answer = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
answer2 = gets.chomp

if answer2 == "s"
  sum = (1..answer).sum
  puts "The sum of the integers between 1 and #{answer} is #{sum}."
elsif answer2 == "p"
  product = (1..answer).reduce(:*)
  puts "The product of the integers between 1 and #{answer} is #{product}."
else
  puts "Invalid"
end
