def center_of(string)
  if string.length.odd?
    string[(string.length / 2)]
  else
    string[(string.length / 2 - 1)] + string[(string.length / 2)]
  end
end


p center_of('I love ruby')
p center_of('Launch School')
p center_of('Launch')
p center_of('Launchschool')
p center_of('x')
