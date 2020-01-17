def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    word.gsub!(/[^\w]/, "")
    counts[word.size] += 1
  end
  counts
end


puts word_sizes('Four score and seven.')
puts word_sizes('Hey diddle diddle, the cat and the fiddle!')
puts word_sizes("What's up doc?")
puts word_sizes('')
