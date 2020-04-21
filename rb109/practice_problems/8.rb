# codewars https://www.codewars.com/kata/5878520d52628a092f0002d0/train/ruby

require "pry"

def string_transformer(str)
  before_reverse = 
  str.split("").map { |char| char == char.downcase ? char.upcase : char.downcase }

  new_string = []
  temp_string = []
  before_reverse.reverse_each do |char|
    binding.pry
    if char == " "
      temp_string.reverse!
      temp_string << char
      new_string += temp_string
      temp_string.clear
    else
      temp_string << char
    end
  end
  temp_string.reverse!
  new_string += temp_string
  new_string.join
end

#def string_transformer(str)
#  str.split(/\b/).reverse.map(&:swapcase).join
#end

p string_transformer("You Know When  THAT  Hotline Bling") # "bLING hOTLINE  that  wHEN kNOW yOU"
p string_transformer("Example Input") # "iNPUT eXAMPLE"
p string_transformer(" A b C d E f G ") # " g F e D c B a "
p string_transformer("To be OR not to be That is the Question") # "qUESTION THE IS tHAT BE TO NOT or BE tO"

#reverse_each and add it to a new string 
#and then reverse that new added string once it hits a white space
#temp store that new string until white space to reverse it before adding to new string


#def string_transformer(str)
#  str.split("")#.reverse.join("").chars.map do |char|
#  #  if char == char.downcase
#  #    char.upcase
#  #  elsif char == char.upcase
#  #    char.downcase
#  #  end
#  #end.join("")#.gsub(/[^a-zA-Z]/, "")
#end

#def string_transformer(str)
#  str.split.reverse.join(" ").chars.map do |char|
#    if char == char.downcase
#      char.upcase
#    elsif char == char.upcase
#      char.downcase
#    end
#  end.join("")#.gsub(/[^a-zA-Z]/, "")
#end     this works for 2nd test case
