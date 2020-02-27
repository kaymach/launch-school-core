# def interleave(array1, array2)
#   combined_array = []
#   iterator = 0
# 
#   until combined_array.count == array1.count + array2.count
#     combined_array << array1[iterator]
#     combined_array << array2[iterator]
#     iterator += 1
#   end
#   combined_array
# end

# Further exploration

def interleave(array1, array2)
  array1.zip(array2).flatten
end


p interleave([1, 2, 3], ['a', 'b', 'c'])
