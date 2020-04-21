# get rid of first element and just << it to the end of a new array

def rotate_array(array)
  new_array = array.dup

  new_array << new_array.shift

  new_array
end



p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]
x == [1, 2, 3, 4]    
