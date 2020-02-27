def halvsies(array)
  array_count = array.count
  if array_count.even?
    first_array, second_array = 
    array.first(array_count/2), array.last(array_count/2)
  else 
    first_array, second_array = 
    array.first((array_count/2) + 1), array.last(array_count/2)
  end
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])
