# easy 8 sum of sums

# input: array of integers
# output: integer

# return sum of sums
# assume that the array is always going to contain alteast one number. never empty.

# algorithm:
# each method iteration over the original collection
# on each iteration, store the previous elements in an array
# add previous elements to the current element

def sum_of_sums(array)
  array_builder = []
  current_numbers = 0

  array.each do |integer|
    current_numbers += integer
    array_builder << current_numbers
  end
  array_builder.sum
end

p sum_of_sums([3, 5, 2])# == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3])# == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4])# == 4
p sum_of_sums([1, 2, 3, 4, 5])# == 35



#array[0] + 
#(array[0] + array[1]) + 
#(array[0] + array[1] + array[2])




# do this based on index with basic loop
