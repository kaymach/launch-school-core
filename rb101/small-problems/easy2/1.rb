puts "What is your name?"
name = gets.chomp

if name == ""
  name = "Teddy"
end

age = (20..200).map { |number| number }

puts "#{name} is #{age.sample} years old!"
