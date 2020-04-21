#input: two arrays
#output: one flattened array
#algorithm: 
# take first array and iterate through it with .each
# iterate through that iteration with .each again with the other array
# multiply the block parameter with the previous block parameter iteration
# push that result to a new variable called result
# 
# result sorted at the end


def multiply_all_pairs(array1, array2)
  result = []

  array1.each do |num|
    array2.each do |num2|
      result << num2 * num
    end
  end
  result.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2])# == [2, 4, 4, 6, 8, 8, 12, 16]
