puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_perc = (gets.chomp.to_f) / 100

tip = (bill * tip_perc).round(2)

total = (bill + tip).round(2)

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{format("%.2f", total)}"
