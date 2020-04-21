def word_to_digit(string)
  string.gsub!("one", "1")
  string.gsub!("two", "2")
  string.gsub!("three", "3")
  string.gsub!("four", "4")
  string.gsub!("five", "5")
  string.gsub!("six", "6")
  string.gsub!("seven", "7")
  string.gsub!("eight", "8")
  string.gsub!("nine", "9")
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
