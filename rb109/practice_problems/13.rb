# Given a string of words, you need to find the highest scoring word.
# Each letter of a word scores points according to it's position in the alphabet:
# a = 1, b = 2, c = 3 etc.
# You need to return the highest scoring word as a string.
# If two words score the same, return the word that appears earliest in the original string.
# All letters will be lowercase and all inputs will be valid.

letters = ('a'..'z').to_a
positions = (1..26).to_a
POINTS = letters.zip(positions).to_h


def alphabet_score(string)
  string.split.max_by do |word|
    word.chars.map do |letter|
      POINTS.find do |k, v|
        k == letter
      end[1]
    end.sum
  end
end

p alphabet_score('man i need a taxi up to ubud')# == 'taxi'
p alphabet_score('what time are we climbing up the volcano')# == 'volcano'
p alphabet_score('take me to semynak')# == 'semynak'
p alphabet_score('aa b')# == 'aa'


# input: string of words
# output: string, highest scoring word
# problem:
# - map letters to positions in alphabet
# - total up letter scores to find total word score
# - find the highest scoring word
# ALGO:
# - initialize 'alphabet' to 'a'..'z' 
# - intialize 'word_scores' to {}
# - iterate using #split, given word:
  # - initialize 'word_score' to 0
    # - iterate using #each_char, given letter
      # - increment word_score += alphabet index of 'letter' + 1
    # - end
  # - update the hash with key as 'word' and value as 'word_score'
# - end
# - use #values on 'word_scores' and #max
# - use #key on 'word_scores' to return the highest scoring word
# =end
# def alphabet_score(string)
  # alphabet = ('a'..'z').to_a
  # scores = {}
  # string.split.each do |word|
    # word_score = 0
    # word.each_char do |letter|
      # word_score += alphabet.index(letter) + 1
    # end
    # scores[word] = word_score
  # end
  # scores.key(scores.values.max)
# end
# 
# 
# letters = ('a'..'z').to_a
# positions = (1..26).to_a
# alphabet = letters.zip(positions).to_h
