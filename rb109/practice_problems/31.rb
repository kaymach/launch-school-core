def center_of(string)
  string[ (string.chars.size - 1) / 2 ] if string.chars.size.odd?
  string[ (string.chars.size - 1) / 2..string.chars.size / 2 ]
end

p center_of('I love ruby')# == 'e' index 5   size / 2
p center_of('Launch School')# == ' '
p center_of('Launch')# == 'un'  index 2-3  size / 2 and size / 2 + 1
p center_of('Launchschool')# == 'hs'
p center_of('x')# == 'x'
