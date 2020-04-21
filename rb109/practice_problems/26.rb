# call chars on array to get the individual elements out
# call gsub on these elements and sub out a e i o u with a blank space

def remove_vowels(array)
  array.map do |element|
    element.delete("aeiouAEIOU")
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))# == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white))# == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ))# == ['BC', '', 'XYZ']
