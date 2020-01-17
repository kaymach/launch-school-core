THIS_YEAR = Time.now.year

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
age_retire = gets.chomp.to_i

year_left = age_retire - age

year_retire = THIS_YEAR + year_left

puts "It's #{THIS_YEAR}. You will retire in #{year_retire}"

puts "You only have #{year_left} years of work to go!"
