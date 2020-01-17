def short_long_short(word1, word2)
  if word1.length > word2.length
    word2 + word1 + word2
  else 
    word1 + word2 + word1
  end
end

puts short_long_short('abc', 'defgh')
puts short_long_short('abcde', 'fgh')
puts short_long_short('', 'xyz')
