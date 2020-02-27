def double_consonants(string)
  string.chars.map {|letter| letter.match?(/[aAeEiIoOuU 1-9.,\/#!$%\^&\*;:{}=\-_`~()]/) ? 
  letter : letter + letter}.join
end

p double_consonants('String')
p double_consonants("Hello-World!")
p double_consonants("July 4th")
p double_consonants('')
