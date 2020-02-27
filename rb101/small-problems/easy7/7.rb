def show_multiplicative_average(array)
  format('%03.3f', (array.reduce(:*).to_f / array.count))
end

puts show_multiplicative_average([3, 5])
puts show_multiplicative_average([6])
puts show_multiplicative_average([2, 5, 7, 11, 13, 17])
