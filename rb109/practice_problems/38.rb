# input: string
# output: new string
# algorithm: 
# sep string into characters and then iterate through those characters with map
# if character is anything except for aeiou, 0-9, @#$@#^, " "   we are going multiply the character by 2
# otherwise we are going to just map the character as it is

def double_consonants(string)
  string.chars.map do |char|
    if char.match?(/[a-zA-Z]/) && char.match?(/[^aeiou]/)
      char * 2
    else
      char
    end
  end.join
end


p double_consonants('String')# == "SSttrrinngg"
p double_consonants("Hello-World!")# == "HHellllo-WWorrlldd!"
p double_consonants("July 4th")# == "JJullyy 4tthh"
p double_consonants('')# == ""
