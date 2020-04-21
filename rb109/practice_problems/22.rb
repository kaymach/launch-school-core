# Write a method that takes a string input, and returns the first character that is not repeated anywhere in the string.
#
# For example, if given the input 'stress', the method should return 't', since the letter t only occurs once in the string, and occurs first in the string.
#
# Upper- and lowercase letters are considered the same character, but the method should return the correct case for the initial letter. For example, the input 'sTreSS' should return 'T'.
#
# If a string contains all repeating characters, it should return an empty string ("")

def first_non_repeating_letter(string)
  result = string.chars.find do |letter|
    string.downcase.count(letter.downcase) < 2
  end
  
  return "" if result == nil
  result
end

p first_non_repeating_letter('a')# == 'a'
p first_non_repeating_letter('sTreSS')# == 'T'
p first_non_repeating_letter('moonmen')# == 'e'
p first_non_repeating_letter('aabbcc')# == ''
p first_non_repeating_letter('')# == ''
