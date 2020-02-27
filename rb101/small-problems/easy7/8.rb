def multiply_list(array1, array2)
  array1.map.with_index { |number, index| number * array2[index] }
end

p multiply_list([3, 5, 7], [9, 10, 11])
