#input: array
#output: nested array
#algorithm:
# if array size is odd?
# array.size divided by 2 is the halfway point for dividing up the arrays (index wise)
# elsif array size is even?
# array.size (divided by 2) - 1 is the halfway point for dividing up the arrays (index wise)
# 

def halvsies(array)
  result = []
  if array.size.odd?
    result << array[0..(array.size / 2)] << array[(array.size / 2 + 1)..-1]
  elsif array.size.even?
    result << array[0..((array.size / 2) - 1)] << array[(array.size / 2)..-1]
  end
  result
end


p halvsies([1, 2, 3, 4])# == [[1, 2], [3, 4]]           # 0 1       2 3    even
p halvsies([1, 5, 2, 4, 3])# == [[1, 5, 2], [4, 3]]     # 0 1 2     3 4    odd
p halvsies([5])# == [[5], []]
p halvsies([])# == [[], []]
