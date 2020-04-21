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
