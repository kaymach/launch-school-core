def remove_vowels(stringarray)
  stringarray.map {|element| element.delete('aeiouAEIOU')}
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
puts remove_vowels(%w(green YELLOW black white))
puts remove_vowels(%w(ABC AEIOU XYZ))
