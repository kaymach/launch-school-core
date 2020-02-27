[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  new_array = {}
  hash.each do |letter, number|
     new_array[letter] = number + 1
  end
  new_array
end

