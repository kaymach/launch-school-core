# require "pry"

# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.

#input: string sentence
#output: mutated string sentence
#algorithm: 
#(a..z).to_a and set that to a variable
# set a local variable called result that will take this new string
# iterate through str with .each method

# if statement:
# push current element as undercased + 3 to result IF matches the alphabet
# elsif
# IF matches special characters or numerics or anything else, push current letter

# return result
#23 or x
#make this index negative with -reference
# if index is >= 23 -reference

def letter_changes(str)
  alphabet = ("a".."z").to_a + ("a".."c").to_a
  
  result = []
  str.chars.each do |element|
    reference = alphabet.index(element.downcase) + 3 if element.to_s.match?(/[a-zA-Z]/)

    if alphabet.include?(element)
      result << alphabet[reference]
    elsif alphabet.include?(element.downcase) && element == element.upcase
      result << alphabet[reference].upcase
    else
      result << element
    end
  end
  result.join
end


p letter_changes("this long cake@&")# == "wklv orqj fdnh@&"
p letter_changes("Road trip9")# == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com")# == "HPDLOC@jpdlo.frp"
p letter_changes('xyzax')# == ('abcda')
