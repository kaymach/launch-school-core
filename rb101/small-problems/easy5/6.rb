# how many letters => how many times it occurs
# need to count() to get how many times that word length occurs

# def word_sizes(string)
#   array = string.split.map { |word| word.length}
#   word_occurance = string.split.map { |word| word.length(word) }
#   hash = array.to_h { |number| [number, word_occurance] }
# 
# end

# practically ripping my hair out trying to get word_occurance to work the way I want it to.
# after dozens of combinations of methods, I couldn't get an array of how often a word occurred.

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

puts word_sizes('Four score and seven.')
puts word_sizes('Hey diddle diddle, the cat and the fiddle!')
puts word_sizes("What's up doc?")
puts word_sizes('')
