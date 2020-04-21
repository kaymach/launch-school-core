#codewars https://www.codewars.com/kata/523a86aa4230ebb5420001e1/train/ruby

def anagrams(wordbla, words)
  words.select do |word|
    word.chars.sort == wordbla.chars.sort
  end
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada'])# == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer'])# == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer'])# == []



#graveyard

# def anagrams(wordbla, words)
#   words.select do |word|
#    # binding.pry
#     word.chars.each do |letter|
#      # binding.pry
#       wordbla.chars.any? do |letter2|
#         #binding.pry
#         letter == letter2
#       end
#     end
#   end
# end
