a = [1, 4, 8, 11, 15, 19]

y = a.bsearch do |x|
  x >= 9
end

puts y