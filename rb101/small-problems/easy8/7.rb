def repeater(string)
  string.chars.map {|letter| letter + letter}.join
end

puts repeater('Hello')
puts repeater("Good job!")
puts repeater('')
