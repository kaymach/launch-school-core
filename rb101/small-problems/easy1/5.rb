def reverse_sentence(string)
  fullstring = ""
  string.split.reverse_each do |word|
   fullstring += "#{word} "
  end
 fullstring.chop
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'