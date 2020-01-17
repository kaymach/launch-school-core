puts "What is your name?"
name = gets.chomp

if name.chars.last.include?("!")
  puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
