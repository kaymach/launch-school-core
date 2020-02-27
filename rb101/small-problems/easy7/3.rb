def word_cap(string)
  string.split(" ").map {|word| word.capitalize}.join(" ")
end

puts word_cap('four score and seven')
puts word_cap('the javaScript language')
puts word_cap('this is a "quoted" word')
