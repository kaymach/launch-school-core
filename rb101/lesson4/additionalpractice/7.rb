statement = "The Flintstones Rock"

letter_frequency = statement.delete('^A-z0-9').chars.each_with_object({}) do |letter, hash|
  hash[letter] = statement.count(letter)
  hash
end

puts letter_frequency
