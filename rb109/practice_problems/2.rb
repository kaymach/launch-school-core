# easy 7 combine two lists

# input: two arrays
# output: one array

# alternate the elements from both arrays as we iterate through them
# arrays will always have elements
# arrays will always have the same number of elements

# algorithm:
# initialize a final array for the result of the iteration that we're going to do on both arrays to alternate
# nested each method call on both arrays
# on each iteration, we're going to add the element to that final array

# def interleave(array1, array2)
#   result = []
#   
#   array1.each do |element1|
#    result << element1
#     array2.each do |element2|
#      next if result.include?(element2)
#       result << element2
#      break
#     end
#   end
#   result
# end

def interleave(array1, array2)
  result = []
  index = 0
  iteration = 0

  until result.count == array1.count + array2.count
    result << array1[index]
    result << array2[index]
    index += 1
  end

  result
end

p interleave([1, 2, 3], ['a', 'b', 'c'])# == [1, 'a', 2, 'b', 3, 'c']
