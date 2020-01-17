print "Please write word or multiple words: "
word = gets.chomp

word_count = word.delete(" ").length

puts "There are #{word_count} characters in #{word.inspect}."
