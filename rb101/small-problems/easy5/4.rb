def swap(string)
  string_array = string.split.map do |word|
    first = word.chars.last
    last = word.chars.first
    
    if word.length > 1
      word = word[1..-2]
      first + word + last
    else
      word
    end
  
  end
string_array.join(" ")
end

puts swap('Oh what a wonderful day it is')
puts swap('Abcde')
puts swap('a')
