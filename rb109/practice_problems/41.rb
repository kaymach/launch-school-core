def string_reverser(string)
  new_array = []
  reversed_array = string.split("")

  string.length.times do |num|
    new_array << reversed_array[-(num + 1)]
  end
  new_array
end

puts string_reverser("hello")
